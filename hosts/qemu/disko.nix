{...}: {
  disko.devices = {
    disk = {
      main = {
        type = "disk";
        device = "/dev/vda";

        content = {
          type = "gpt";
          partitions = {
            boot = {
              size = "1M";
              type = "EF02";
              priority = 1;
            };

            ESP = {
              size = "256M";
              type = "EF00";
              content = {
                type = "filesystem";
                format = "vfat";
                mountpoint = "/boot";
                mountOptions = ["nofail"];
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
