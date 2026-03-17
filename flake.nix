{
  description = "Ruby on Rails development environment";

  inputs = {
    nixpkgs.url = "nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
    nix-filter.url = "github:numtide/nix-filter";
  };

  outputs = { self, nixpkgs, flake-utils, nix-filter }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };

        ruby = pkgs.ruby_3_3; # Use a single version of Ruby throughout

        rubyEnv = bundlerEnv { # The full app environment with dependencies
          name = "rails-env";
          inherit ruby;
          gemdir = ./.; # Points to Gemfile.lock and gemset.nix
        };

        inherit (nix-filter.lib) filter;
        inherit (pkgs) bundlerEnv mkShell;
        inherit (pkgs.stdenv) mkDerivation;
      in {
        devShells = rec {
          default = run;

          run = mkShell {
            buildInputs = [ rubyEnv rubyEnv.wrappedRuby ];

            shellHook = ''
              ${rubyEnv}/bin/rails --version
            '';
          };
        };

        packages = rec {
          default = rubyEnv;
        };
      });
}
