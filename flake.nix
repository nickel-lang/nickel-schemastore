{
  inputs.nixpkgs.url = "nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.json-schema-to-nickel.url = "github:nickel-lang/json-schema-to-nickel";

  nixConfig = {
    extra-substituters = ["https://tweag-nickel.cachix.org"];
    extra-trusted-public-keys = ["tweag-nickel.cachix.org-1:GIthuiK4LRgnW64ALYEoioVUQBWs0jexyoYVeLDBwRA="];
  };

  outputs = { nixpkgs, json-schema-to-nickel, flake-utils, ... }:
    let
      SYSTEMS = [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-darwin"
        "x86_64-linux"
      ];
    in
    flake-utils.lib.eachSystem SYSTEMS (system:
      let pkgs = import nixpkgs { inherit system; };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = [
            json-schema-to-nickel.packages.${system}.default
            pkgs.python3
            (pkgs.callPackage (import ./json-schema-bundler) { }).package
          ];
        };
      });
}
