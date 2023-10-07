{ config, pkgs, ... }:

{
  imports = [
    ./alacritty.nix
    ./vscode.nix
    ./waybar.nix
    ./zsh.nix
  ];

  home.packages = with pkgs; [
    firefox
    gparted
    slack
    neofetch

    sirula

    # For setting background
    swww

    # Required for vscode to format nix files
    nixpkgs-fmt
  ];

  programs.btop.enable = true;

  programs.git = {
    enable = true;
    userName = "Jonas Lindenskov Nielsen";
    userEmail = "lindenskov.nielsen@gmail.com";
  };

  # Hyprland
  xdg.configFile."hypr/hyprland.conf".source = ./hyprland.conf;

  # Btop
  xdg.configFile."btop/themes/rose-pine.theme".source = ./btop/rose-pine.theme;

  # Sirula
  xdg.configFile."sirula/config.toml".source = ./sirula/config.toml;
  xdg.configFile."sirula/style.css".source = ./sirula/style.css;

  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.05";
}
