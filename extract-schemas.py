import urllib.request
import urllib.parse
import json
import subprocess
import os.path
import re
from multiprocessing import Pool

out_path = "out"
tmp_path = "tmp"
# Path to the json-schema-to-nickel library.
json_schema_to_nickel_lib = "lib/main.ncl"
# If set to `True`, the script won't process schemas that already exist in the
# output directory. Sometimes the script hangs in the middle (looks like
# a concurrency-related issue). To make it possible to regenerate contracts in
# multiple passes, enable this flag.
resume = False

def to_snake_case(description: str) -> str:
    """
    Converts a descriptive name (possibly with spaces and special characters) to
    a suitable filename for both Unix and Windows, mostly by converting to
    snake_case and getting rid of any special characters but alphanumeric and a
    few selected ones (dashes and dots).
    """
    s = re.sub(r"[ ,-]", "_", description)
    s = re.sub(r"[^a-zA-Z0-9._]", "", s)
    s = re.sub(r"__+", "_", s)
    return s.strip("_").lower()

def fetch_schema_list():
    with urllib.request.urlopen("https://www.schemastore.org/api/json/catalog.json") as response:
        return json.load(response)

def fetch_schema(schema_descr, dest_file):
    with urllib.request.urlopen(schema_descr["url"]) as response:
        data = response.read()
        with open(dest_file, "wb") as out:
            out.write(data)

def parse_attr_name(raw_url):
    url = urllib.parse.urlparse(raw_url)
    original_filename = os.path.basename(url.path)
    return os.path.splitext(original_filename)[0]

def bundle_schema(raw_schema_file, dest_file):
    with open(dest_file, "w+") as out:
        js2n = subprocess.run(["json-schema-bundler", raw_schema_file],
            stdout = out,
            check = True,
        )

def convert_to_nickel(bundled_schema_file, dest_file):
    with open(dest_file, "w+") as out:
        relative_lib_path = os.path.relpath(json_schema_to_nickel_lib, os.path.dirname(dest_file))
        js2n = subprocess.run(["json-schema-to-nickel", bundled_schema_file, "--library-path", relative_lib_path],
            stdout = out,
            check = True,
        )

def process_one_schema(schema_descr):
    name = schema_descr["name"]
    normalized_name = to_snake_case(name)
    attr_name = normalized_name

    raw_schema_file = os.path.join(tmp_path, normalized_name + ".json")
    bundled_file = os.path.join(tmp_path, normalized_name + ".bundled.json")
    dest_file = os.path.join(out_path, normalized_name + ".ncl")

    if resume and os.path.isfile(dest_file):
        print(f"{name}: skipping already converted schema")
        return f'"{attr_name}" = import "{dest_file}",'

    print(f"“{name}”: START (as {normalized_name})")

    try:
        print(f"“{name}”: Creating local files...")
        os.makedirs(os.path.dirname(raw_schema_file), exist_ok = True)
        os.makedirs(os.path.dirname(bundled_file), exist_ok = True)
        os.makedirs(os.path.dirname(dest_file), exist_ok = True)

        print(f"“{name}”: Fetching schema...")
        fetch_schema(schema_descr, raw_schema_file)

        print(f"“{name}”: Bundling schema...")
        bundle_schema(raw_schema_file, bundled_file)

        print(f"“{name}”: Converting schema...")
        convert_to_nickel(bundled_file, dest_file)

        print(f"“{name}”: OK")
    except Exception as e:
        with open(dest_file, "w+") as dest:
            print("null", file=dest)
        print(f"“{name}”: Failure")
        print(e)
    return f'"{attr_name}" = import "{dest_file}",'

def main():
    schemas = fetch_schema_list()["schemas"]

    with Pool(16) as p:
        record_fields = p.map(process_one_schema, schemas)

    with open("main.ncl", "w+") as entrypoint:
        print("{", file=entrypoint)
        for line in record_fields:
              print(line, file=entrypoint)
        print("}", file=entrypoint)

main()
