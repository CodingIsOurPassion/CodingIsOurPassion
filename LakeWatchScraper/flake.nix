{
  description = "LakeWatchScraper, scrape data from various sources for LakeWatchAPI";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    poetry2nix = {
      url = "github:nix-community/poetry2nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      poetry2nix,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        inherit (poetry2nix.lib.mkPoetry2Nix { inherit pkgs; }) mkPoetryApplication;
      in
      rec {
        packages = {
          lakewatchscraper = mkPoetryApplication { projectDir = self; };
          default = self.packages.${system}.lakewatchscraper;
        };

        apps.default = {
          type = "app";
          program = "${packages.default}/bin/scraper";
        };

        # Shell for app dependencies.
        #
        #     nix develop
        #
        # Use this shell for developing your app.
        devShells.default = pkgs.mkShell { inputsFrom = [ self.packages.${system}.lakewatchscraper ]; };

        # Shell for poetry.
        #
        #     nix develop .#poetry
        #
        # Use this shell for changes to pyproject.toml and poetry.lock.
        devShells.poetry = pkgs.mkShell { packages = [ pkgs.poetry ]; };
      }
    );
}
