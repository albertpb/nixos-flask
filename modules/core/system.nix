{ self, pkgs, lib, inputs, ... }:
{
  nix = {
    settings = {
      auto-optimise-store = true;
      experimental-features = [ "nix-command" "flakes" ];
    };

    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 7d";
    };
  };

  nixpkgs = {
    overlays = [ ];
  };

  environment.systemPackages = with pkgs; [
    wget
    pciutils
  ];

  time.timeZone = "America/Santiago";
  i18n.defaultLocale = "en_US.UTF-8";
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "24.11";
}
