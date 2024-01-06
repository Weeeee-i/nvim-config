{ config, lib, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader = {
    grub = {
      enable = true;
      efiSupport = true;
      useOSProber = true;
    };

    efi.canTouchEfiVariables = true;
  };

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking.hostName = "W";
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Shanghai";

  i18n.defaultLocale = "en_US.UTF-8";

  # console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "us";
  #   useXkbConfig = true; # use xkb.options in tty.
  # };

  # Enable sound.
  sound.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  users.users.wei = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
    shell = pkgs.zsh;
    # Run `mkpasswd`
    # hashedPassworld = "";
    openssh.authorizedKeys.keys = [
      "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCbo945Ii/F5Gtu6OUYcwPcQe9z+czqMR7olEea5Kx+7NMVNQklPuMiMunqf+Xv5FtCu0GUAOtUoD0yZYR/1hF2wMaO44ghr0Otdk+mbsqmDfRUNB6Y2OjZnfCR6r/WOhutyiEF+wX6/JJ1SzxSOfOkHiy0E5s2si3sigtF8y+W9rQss8tyudDj/biyo66VeGC8VqcMsEC/+KL/SInGdiMainRvFRp/o1xg0oQgPrhj8jEWH/QwzCI21qBovhPmkcO4TFhoCGk0L2h7mS3xRKzW58dH3eEA7fiAm1v5wxzlejvh1IVVptsQAnL0+qhs4OhQhwDdZr8GBY5Dqrx4roiBefJds14x2sobGBmUe93TVpWoUKZ+ieOrREq2T3LYTykG2lzxBwfQoGEupC1p/bhZtQoA/N3e0AsvJbjcd3UhFyjoCfgWN5HGKx1UoOuYJFWm5DiFZ6yVDKo8rHxisi+SWIlP6G7cQ55waqa26MHiBmZxwyPmd9AbJfRm6fVqbq8= wei@W"
    ];
  };

  environment.systemPackages = with pkgs; [
    neovim
    git
  ];

  environment.variables.EDITOR = "nvim";

  programs.zsh.enable = true;

  system.stateVersion = "23.11";

}

