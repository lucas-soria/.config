{ config, pkgs, ... }:

{

  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
    desktopManager.gnome.enable = true;
    displayManager.gdm = {
      enable = true;
      wayland = true;
    };
  };

  services.gnome = {
    core-os-services.enable = true;  # Whether to enable essential services for GNOME3
    core-utilities.enable = true;  # Whether to enable GNOME core utilities
    gnome-browser-connector.enable = true;  # Whether to enable native host connector for the GNOME Shell browser extension, a DBus service allowing to install GNOME Shell extensions from a web browser
    glib-networking.enable = true;  # Whether to enable network extensions for GLib
    gnome-settings-daemon.enable = true;  # Whether to enable GNOME Settings Daemon
    sushi.enable = true;  # Whether to enable Sushi, a quick previewer for nautilus

  };

  services.libinput = {
      enable = true;
      touchpad.naturalScrolling = true;
      mouse.naturalScrolling = true;
  };

  programs = {
    dconf.enable = true;
    nm-applet.enable = true;
    chromium.enable = true;
  };


  environment.gnome.excludePackages = (with pkgs; [
    gnome-photos
    gnome-tour
  ]) ++ (with pkgs.gnome; [
    evince # document viewer
    epiphany # web browser
    gnome-characters
  ]);

  # Configure keymap in X11
  services.xserver = {
    xkb.layout = "latam";
    xkb.variant = "";
  };

  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  environment.variables = {
    GDK_DPI_SCALE = "1.2";
    QT_QPA_PLATFORM = "wayland";
  };

  environment.sessionVariables = {
    NIXOS_OZONE_WL = "1";
  };

 }

