import urllib.request
import urllib.parse
import json
import subprocess
import os.path
from multiprocessing import Pool

out_path="out"
tmp_path="tmp"

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
    with open(dest_file) as out:
        js2n = subprocess.run(["json-schema-to-nickel", bundled_schema_file],
            stdout = out,
            check = True,
        )

def process_one_schema(schema_descr):
    name = schema_descr["name"]
    attr_name = schema_descr["name"]
    raw_schema_file = os.path.join(tmp_path, schema_descr["name"] + ".json")
    bundled_file = os.path.join(tmp_path, schema_descr["name"] + ".bundled.json")
    dest_file = os.path.join(out_path, attr_name + ".ncl")

    print(f"“{name}”: START")

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
