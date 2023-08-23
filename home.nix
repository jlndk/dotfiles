{ config, pkgs, ... }:

{
  imports = [
    ./alacritty.nix
    ./vscode.nix
    ./zsh.nix
  ];

  home.packages = with pkgs; [
    btop
    firefox
    gparted
    slack
    neofetch

    # For setting background
    swww

    # Required for vscode to format nix files
    nixpkgs-fmt
  ];

  programs.git = {
    enable = true;
    userName = "Jonas Lindenskov Nielsen";
    userEmail = "lindenskov.nielsen@gmail.com";
  };

  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.05";
}
