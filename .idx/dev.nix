To learn more about how to use Nix to configure your environment

see: https://firebase.google.com/docs/studio/customize-workspace

{ pkgs, ... }: {

Which nixpkgs channel to use.

channel = "stable-24.05"; # or "unstable"

Use https://search.nixos.org/packages to find packages

packages = [ # Node.js + PM2 pkgs.nodejs_20 pkgs.nodePackages.pm2

# Discord client
pkgs.discord

# Đã xoá / không dùng Python
# pkgs.python311
# pkgs.python311Packages.pip

];

Sets environment variables in the workspace

env = { # Ví dụ # NODE_ENV = "development"; };

workspace = { # Runs when a workspace is first created onCreate = { # npm-install = "npm install"; };

# Runs when the workspace is (re)started
onStart = {
  # Ví dụ: tự start app bằng pm2
  # start-app = "pm2 start ecosystem.config.js";
};

}; }
