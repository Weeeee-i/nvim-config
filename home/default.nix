{ config, pkgs, anyrun, ... }:

{

  home.username = "wei";
  home.homeDirectory = "/home/wei";

  programs.git = {
    enable = true;
    userName = "weeeee-i";
    userEmail = "weeeeei@duck.com";
  };

  imports = [

    ./zsh
    ./hyprland
    ./applications
    ./inputMethods
    ./fontconfig
    ./eww

  ];

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;

}
