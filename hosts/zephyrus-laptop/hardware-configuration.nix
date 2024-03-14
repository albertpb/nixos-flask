# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [
      (modulesPath + "/installer/scan/not-detected.nix")
    ] ++ [
      (import ./filesystem.nix)
    ] ++ [
      (import ./bootloader.nix)
    ] ++ [
      (import ./nvidia.nix)
    ];

  console = {
    font = "lat2-16";
    earlySetup = true;
    colors = [
      "171d23"
      "1d252c"
      "28323a"
      "526270"
      "b7c5d3"
      "d8e2ec"
      "f6f6f8"
      "fbfbfd"
      "f7768e"
      "ff9e64"
      "b7c5d3"
      "9ece6a"
      "89ddff"
      "7aa2f7"
      "bb9af7"
      "bb9af7"
    ];
  };



  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp3s0.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp0s20f3.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
