{ libs, pkgs, ... }:

{
  environment.persistence."/persistent" = {
    hideMounts = true;
    directories = [
      "/var/log"
      "/var/lib/bluetooth"
      "/var/lib/nixos"
      "/var/lib/systemd/coredump"
      "/etc/NetworkManager/system-connections"
    ];

    files = [ "/etc/machine-id" ];

    users.wei = {
      directories = [ "Downloads" "Music" "Pictures" "Documents" "Videos" ];
    };
  };
}
