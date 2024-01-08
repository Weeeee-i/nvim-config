{ libs, pkgs, ... }:

{

  programs.firefox = { enable = true; };

  programs.chromium = { enable = true; };

  home.packages = with pkgs; [ brave ];

}
