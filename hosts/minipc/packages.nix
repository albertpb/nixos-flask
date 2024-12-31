{ pkgs, username, ... }:
{
  users.users.${username}.packages = with pkgs; [
  ];

  environment.systemPackages = with pkgs; [
    neovim
    git
  ];
}
