
{ config, pkgs, ... }:

{

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.desktopManager.lxqt.enable = false;
  # services.xserver.desktopManager.wallpaper = {
  #   mode = "scale";
  #   combineScreens = false;
  # };
  # Disable the LXQT Desktop Environment and enable i3.
  services.xserver.displayManager = {
    startx.enable = true;
    sddm = {
      enable = true;
    };
    defaultSession = "none+i3";
  };
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

  hardware.opengl = {
    enable = true;
    driSupport = true;
    driSupport32Bit = true;
  };

  environment.variables = {
    GDK_DPI_SCALE = "1.2";
  };

}

