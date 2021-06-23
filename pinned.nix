{ pkgs ? import <nixpkgs> { } }:

import
  (
    pkgs.fetchFromGitHub {
      owner = "nixos";
      repo = "nixpkgs";
      rev = "a0b10452c6a06c493701391035adea999e90786b";
      sha256 = "10mc924z59wghiykcqar5shq54l794msbpashwwnwsydnzha6max";
    }
  )
{ }
