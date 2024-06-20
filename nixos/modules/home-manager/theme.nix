{ config, pkgs, ... }:

{
  home-manager.users.lucas = {
    dconf = {
      enable = true;

      settings."org/gnome/desktop/interface".color-scheme = "prefer-dark";

      settings."org/gnome/shell" = {
        disable-user-extensions = false;
        enabled-extensions = with pkgs.gnomeExtensions; [
          blur-my-shell.extensionUuid
          gsconnect.extensionUuid
          appindicator.extensionUuid
        ];
      };
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

      iconTheme = {
        name = "Adwaita-dark";
        package = pkgs.gnome3.adwaita-icon-theme;
      };

      theme = {
        name = "Adwaita-dark";
        package = pkgs.gnome3.gnome_themes_standard;
      };
    };
  };
}

