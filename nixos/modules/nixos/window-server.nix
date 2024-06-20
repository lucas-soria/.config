
{ config, pkgs, ... }:

{
  imports = [
    # ./desktop-environments/i3.nix
    ./desktop-environments/gnome.nix
  ];
}

