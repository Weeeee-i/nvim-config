{ libs, pkgs, ... }:

{

  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    extensions = with pkgs.vscode-extensions; [
      brettm12345.nixfmt-vscode
      vscodevim.vim
      bbenoist.nix
    ];
  };

  programs.neovim = { enable = true; };

}
