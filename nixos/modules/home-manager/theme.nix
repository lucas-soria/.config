{ config, pkgs, ... }:

{
  home-manager.users.lucas = {
    dconf = {
      enable = true;
      settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";
    };
  };
}
