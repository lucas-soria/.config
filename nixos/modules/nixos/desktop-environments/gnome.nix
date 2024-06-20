{ config, pkgs, ... }:

{

  # Enable the X11 windowing system.
  services.xserver = {
    enable = true;
    desktopManager.gnome.enable = true;
    displayManager.gdm.enable = true;
  };

  services.libinput = {
      enable = true;
      touchpad.naturalScrolling = true;
      mouse.naturalScrolling = true;
  };

  programs.dconf.enable = true;

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
  };

 }

