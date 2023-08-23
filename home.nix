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

  programs.waybar = {
    enable = true;
    package = pkgs.waybar.overrideAttrs (oldAttrs: {
      mesonFlags = oldAttrs.mesonFlags ++ [ "-Dexperimental=true" ];
    });

    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 30;
        # output = [
        #   "eDP-1"
        #   "HDMI-A-1"
        # ];
        modules-left = [ "wlr/workspaces" ];
        modules-center = [ "clock" ];
        modules-right = [ "battery" ];

        "wlr/workspaces" = {
          format = "{icon}";
          on-click = "activate";
          on-scroll-up = "hyprctl dispatch workspace e+1";
          on-scroll-down = "hyprctl dispatch workspace e-1";
        };

        clock = {
          # "timezone" = "America/New_York";
          tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
          format-alt = "{:%d-%m-%Y}";
        };

        battery = {
          states = {
            good = 95;
            warning = 30;
            critical = 20;
          };
          format = "{capacity}% {icon}";
          format-charging = "{capacity}% ";
          format-plugged = "{capacity}% ";
          format-alt = "{time} {icon}";
          # An empty format will hide the module
          # format-good = "";
          # format-full = "";
          # format-icons = ["" "" "" "" ""];
        };

        # "custom/hello-from-waybar" = {<
        #   format = "hello {}";
        #   max-length = 40;
        #   interval = "once";
        #   exec = pkgs.writeShellScript "hello-from-waybar" ''
        #     echo "from within waybar"
        #   '';
        # };>
      };
    };
  };

  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.05";
}
