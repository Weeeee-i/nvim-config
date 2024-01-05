{ config, pkgs, ... }:

{

  home.username = "wei";
  home.homeDirectory = "/home/wei";

  programs.git = {
    enable = true;
    userName = "weeeee-i";
    userEmail = "weeeeei@duck.com";
  };

  home.packages = with pkgs; [
    neofetch
    p7zip
    ripgrep
    neofetch
  ];

  imports = [

    ./zsh
    ./hyprland
    ./applications
    ./inputMethods
    ./fontconfig

  ];

  home.stateVersion = "23.11";

  programs.home-manager.enable = true;

}
