{ pkgs, libs, ... }:

{

  programs.eww = {
    enable = true;
    package = pkgs.eww-wayland;
    configDir = ./config;
  };

}
