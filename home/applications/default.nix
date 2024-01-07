{ libs, pkgs, anyrun, ... }:

{

  imports = [
    ./browsers.nix
    ./term.nix
    ./launcher.nix
  ];
  
  home.packages = with pkgs; [
    htop
    tldr
    duf
    nixfmt
    wlr-randr
    brightnessctl

    p7zip
  ];

  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      vscodevim.vim
      bbenoist.nix
      brettm12345.nixfmt-vscode
    ];
  };

}
