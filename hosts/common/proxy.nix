{ libs, pkgs, ... }:

{

  programs.proxychains = {
    enable = true;
    proxies = {
      server = {
        type = "http";
	host = "192.168.31.19";
	port = "21500";
      };
    };
  };

}
