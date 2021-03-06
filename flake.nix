{
  description = ''React.js bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."react-master".dir   = "master";
  inputs."react-master".owner = "nim-nix-pkgs";
  inputs."react-master".ref   = "master";
  inputs."react-master".repo  = "react";
  inputs."react-master".type  = "github";
  inputs."react-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react-0_1_0".dir   = "0_1_0";
  inputs."react-0_1_0".owner = "nim-nix-pkgs";
  inputs."react-0_1_0".ref   = "master";
  inputs."react-0_1_0".repo  = "react";
  inputs."react-0_1_0".type  = "github";
  inputs."react-0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react-0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react-0_1_1".dir   = "0_1_1";
  inputs."react-0_1_1".owner = "nim-nix-pkgs";
  inputs."react-0_1_1".ref   = "master";
  inputs."react-0_1_1".repo  = "react";
  inputs."react-0_1_1".type  = "github";
  inputs."react-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react-0_1_2".dir   = "0_1_2";
  inputs."react-0_1_2".owner = "nim-nix-pkgs";
  inputs."react-0_1_2".ref   = "master";
  inputs."react-0_1_2".repo  = "react";
  inputs."react-0_1_2".type  = "github";
  inputs."react-0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react-0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."react-0_2_0".dir   = "0_2_0";
  inputs."react-0_2_0".owner = "nim-nix-pkgs";
  inputs."react-0_2_0".ref   = "master";
  inputs."react-0_2_0".repo  = "react";
  inputs."react-0_2_0".type  = "github";
  inputs."react-0_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."react-0_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}