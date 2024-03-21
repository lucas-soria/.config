
{ config, pkgs, ... }:

{

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Disable the LXQT Desktop Environment and enable i3.
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.desktopManager.lxqt.enable = false;
  services.xserver.windowManager.i3.enable = true;

  # Configure keymap in X11
  services.xserver = {
    xkb.layout = "latam";
    xkb.variant = "";
  };

  # Enable touchpad support (enabled default in most desktopManager).
  services.xserver.libinput.enable = true;
  services.xserver.libinput.touchpad.naturalScrolling = true;
  services.xserver.libinput.mouse.naturalScrolling = true;

  services.xserver.desktopManager.wallpaper = {
    mode = "scale";
    combineScreens = false;
  };

  environment.variables = {
    GDK_DPI_SCALE = "1.2";
  };

}

