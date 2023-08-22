{config, pkgs, ...}:

{
  home.packages = with pkgs; [ 
    btop
  ];

  imports = [
    ./alacritty.nix
    ./vscode.nix
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
