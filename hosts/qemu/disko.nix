{...}: {
  disko.devices = {
    disk = {
      main = {
        type = "disk";
        device = "/dev/disk/by-id/scsi-0QEMU_QEMU_HARDDISK_drive-scsi0-0-1";

        content = {
          type = "gpt";
          partitions = {
            esp = {
              priority = 1;
              type = "EF00";
              size = "512M";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot/efi";
              };
            };

            boot = {
              priority = 2;
              size = "1G";
              content = {
                type = "filesystem";
                format = "ext4";
                mountpoint = "/boot";
              };
            };

            zfs = {
              size = "100%";
              content = {
                type = "zfs";
                pool = "zroot";
              };
            };
          };
        };
      };
    };

    zpool = {
      zroot = {
        type = "zpool";
        datasets = {
          "root" = {
            mountpoint = "/";
            type = "zfs_fs";

            options = {
              mountpoint = "legacy";
            };
          };

          "root/nix" = {
            mountpoint = "/nix";
            type = "zfs_fs";

            options = {
              mountpoint = "legacy";
            };
          };
        };
      };
    };
  };
}
