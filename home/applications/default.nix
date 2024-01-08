{ libs, pkgs, anyrun, ... }:

{

  imports = [ ./browsers.nix ./term.nix ./launcher.nix ./editor.nix ./syncthing.nix ];

  home.packages = with pkgs; [
    htop
    tldr
    duf
    nixfmt
    wlr-randr
    brightnessctl
    keepassxc
    p7zip
    gh
    anki
    libreoffice-fresh
  ];

}
