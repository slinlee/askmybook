{
  description = "Basic Python Dev env";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          packages = [
            pkgs.python310Packages.pip
            pkgs.python310
            pkgs.python310Packages.venvShellHook
            pkgs.autoPatchelfHook
            pkgs.postgresql
            pkgs.heroku
          ];

          venvDir = "./venv";

          postVenvCreation = ''
            unset SOURCE_DATE_EPOCH
            pip install -U pip
            pip install -r requirements.txt
            autoPatchelf ./venv
          '';
            

        };
      });
}
