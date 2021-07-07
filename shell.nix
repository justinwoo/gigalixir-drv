let
  pkgs = import <nixpkgs> {};
  env = import ./default.nix {};
  gigalixir-cli = pkgs.runCommand "gigalixir-cli" {} ''
    mkdir -p $out/bin
    ln -s ${env}/bin/gigalixir $out/bin/gigalixir
  '';
in
  pkgs.mkShell {
    buildInputs = [
      gigalixir-cli
    ];
  }
