{ pkgs ? import ./pinned.nix { }
, poetry2nix ? import ./poetry2nix.nix { }
}:

let
  env = poetry2nix.mkPoetryEnv
    {
      projectDir = ./.;
      overrides = [
        poetry2nix.defaultPoetryOverrides
        (self: super: {
          gigalixir = super.gigalixir.overrideAttrs (old: {
            buildInputs = old.buildInputs ++ [
              self.pytest-runner
            ];
          });
        })
      ];
    };
in
env
