
{ config, pkgs, ... }:

{

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # Terminal and utilities
    alacritty
    neovim
    tmux
    htop-vim

    # Languages
    python3
    nodejs_22  # Deprecadted nodejs_21
    jdk21_headless
    zig
    go

    # Dev
    git
    jetbrains.idea-community-bin
    jetbrains.goland
    vscode
    insomnia

    # Deploying
    spotify
    kubectl
    docker

    # Internet
    discord
    google-chrome

    # Gamming
    heroic
    lutris
    steam
    mangohud
    steam-run

    # General apps
    transmission_4-qt
    obsidian
    xfce.thunar
    gimp
    obs-studio
    flameshot
    vlc
    nitrogen
    sigil

    # Ricing
    i3
    wayland
    polybar
    rofi
    picom
    betterlockscreen
    xss-lock

    # Tools
    gcc
    cl
    gnumake
    wget
    unzip
    curl
    tcpdump
    vim
    neofetch
    tree
    nettools
    xclip
    lshw
    chromium
    xorg.xorgserver
    dunst  # Bus?
  ];

  programs.steam = {
    enable = true;
    remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
    dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
  };

  programs.thunar.enable = true;
  programs.thunar.plugins = with pkgs.xfce; [
    thunar-volman
  ];

  programs.zsh.enable = true;

  programs.java.enable = true;
  programs.java.package = pkgs.jdk21_headless;

  virtualisation.docker.enable = true;
  virtualisation.docker.rootless = {
    enable = true;
    setSocketVariable = true;
  };

}
