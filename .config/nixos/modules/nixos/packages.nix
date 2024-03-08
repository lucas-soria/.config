
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
    nodejs_21
    jdk21_headless
    zig
    go

    # Dev
    git
    jetbrains.idea-community
    jetbrains.goland
    vscode

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

    # Ricing
    i3

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

}
