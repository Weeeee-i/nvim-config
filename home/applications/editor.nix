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

  home.packages = with pkgs; [ helix ];

  home.file.helix-config = {
    enable = true;
    source = ./conf-helix/config.toml;
    target = ".config/helix/config.toml";
  };

  home.file.helix-languages = {
    enable = true;
    source = ./conf-helix/languages.toml;
    target = ".config/helix/languages.toml";
  };

}
