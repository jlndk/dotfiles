{config, pkgs, ...}:

{
  home.packages = with pkgs; [ 
    btop
  ];

  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.05";
}
