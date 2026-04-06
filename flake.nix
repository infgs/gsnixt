{
  description = "goboscript nix shell thing";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    goboscript = {
      url = "github:aspizu/goboscript";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, goboscript }: let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
    };
  in rec {
    devShell.${system} = pkgs.mkShell {
      buildInputs = [
        goboscript.packages.${system}.goboscript
      ];
    };
  };
   
}
