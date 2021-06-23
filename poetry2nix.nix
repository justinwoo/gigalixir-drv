{ pkgs ? import ./pinned.nix { } }:

pkgs.callPackage
  (pkgs.fetchFromGitHub {
    owner = "nix-community";
    repo = "poetry2nix";
    rev = "e3c3e14e99ca3d573ef84644754a0daa97803e3e";
    sha256 = "01rs9lxw1s8qy7g9m0dchjf5k06sjcd5bbxzi71p2n08xgsdrwlr";
  })
{ }
