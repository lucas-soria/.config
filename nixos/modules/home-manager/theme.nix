{ config, pkgs, ... }:

{
  home-manager.users.lucas = {
    dconf = {
      enable = true;
      settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";
    };

    gtk = {
      enable = true;
      catppuccin = {
        enable = true;
        flavor = "mocha";
        accent = "pink";
        size = "standard";
        tweaks = [ "normal" ];
      };
    };
  };
}
