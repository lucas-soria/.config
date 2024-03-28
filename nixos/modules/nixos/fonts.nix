
{ config, pkgs, ... }:

{

  fonts.packages = with pkgs; [
    noto-fonts
    noto-fonts-cjk-sans
    roboto
    ibm-plex
    (
      nerdfonts.override {
        fonts = [ "FiraCode" "DroidSansMono" "IBMPlexMono" "Iosevka" "IosevkaTerm" ];
      }
    )
  ];

}
