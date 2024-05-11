
{ config, pkgs, ... }:

{

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  # USING I3
  # Disable the LXQT Desktop Environment and enable i3.
  # services.xserver.desktopManager.lxqt.enable = false;
  services.xserver.displayManager = {
    startx.enable = true;
    sddm = {
      enable = true;
    };
    defaultSession = "none+i3";
  };
  services.xserver.windowManager.i3.enable = true;
  # ------

  # USING GNOME (Doesn't work properly)
  # services.xserver = {
  #   desktopManager.gnome.enable = true;
  #   displayManager.gdm.enable = true;
  # };
  # environment.gnome.excludePackages = (with pkgs; [
  #   gnome-photos
  #   gnome-tour
  # ]) ++ (with pkgs.gnome; [
  #   evince # document viewer
  #   epiphany # web browser
  #   gnome-characters
  # ]);
  # ------


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

