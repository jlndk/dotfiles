{ config, pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      window = {
        padding.x = 10;
        padding.y = 10;
        #decorations = "Full";
        decorations = "none";
      };
      font = {
        size = 12.0;
        # use_thin_strokes = true;

        normal.family = "JetBrains Mono";
        bold.family = "JetBrains Mono";
        italic.family = "JetBrains Mono";
      };
      key_bindings = [
        {
          key = "N";
          mods = "Control";
          action = "SpawnNewInstance";
        }
      ];
      # colors = {
      #   # Default colors
      #   primary = {
      #     background = "0x1b182c";
      #     foreground = "0xcbe3e7";
      #   };

      #   # Normal colors
      #   normal = {
      #     black =   "0x100e23";
      #     red =     "0xff8080";
      #     green =   "0x95ffa4";
      #     yellow =  "0xffe9aa";
      #     blue =    "0x91ddff";
      #     magenta = "0xc991e1";
      #     cyan =    "0xaaffe4";
      #     white =   "0xcbe3e7";
      #   };

      #   # Bright colors
      #   bright = {
      #     black =   "0x565575";
      #     red =     "0xff5458";
      #     green =   "0x62d196";
      #     yellow =  "0xffb378";
      #     blue =    "0x65b2ff";
      #     magenta = "0x906cff";
      #     cyan =    "0x63f2f1";
      #     white = "0xa6b3cc";
      #   };
      # };

      # Colors (Poimandres)
      # colors = {

      #   # Default colors
      #   primary = {
      #     background = "0x1b1e28";
      #     foreground = "0xa6accd";
      #   };

      #   # Cursor colors
      #   cursor = {
      #     text = "CellBackground";
      #     cursor = "CellForeground";
      #   };

      #   # Search colors
      #   #
      #   # Colors used for the search bar and match highlighting.
      #   search = {
      #     # Allowed values are CellForeground/CellBackground, which reference the
      #     # affected cell, or hexadecimal colors like #ff00ff.
      #     matches = {
      #       foreground = "0x1b1e28";
      #       background = "0xadd7ff";
      #     };

      #     focused_match = {
      #       foreground = "0x1b1e28";
      #       background = "0xadd7ff";
      #     };
      #   };

      #   footer_bar = {
      #     foreground = "0x1b1e28";
      #     background = "0xadd7ff";
      #   };

      #   # Selection colors
      #   #
      #   # Colors which should be used to draw the selection area.
      #   #
      #   # Allowed values are CellForeground/CellBackground, which reference the
      #   # affected cell, or hexadecimal colors like #ff00ff.
      #   selection = {
      #     text = "CellForeground";
      #     background = "0x303340";
      #   };

      #   # Vi mode cursor colors
      #   #
      #   # Colors for the cursor when the vi mode is active.
      #   #
      #   # Allowed values are CellForeground/CellBackground, which reference the
      #   # affected cell, or hexadecimal colors like #ff00ff.
      #   vi_mode_cursor = {
      #     text = "CellBackground";
      #     cursor = "CellForeground";
      #   };

      #   # Normal colors
      #   normal = {
      #     black = "0x1b1e28";
      #     red = "0xd0679d";
      #     green = "0x5de4c7";
      #     yellow = "0xfffac2";
      #     blue = "0x89ddff";
      #     magenta = "0xfcc5e9";
      #     cyan = "0xadd7ff";
      #     white = "0xffffff";
      #   };

      #   # Bright colors
      #   bright = {
      #     black = "0xa6accd";
      #     red = "0xd0679d";
      #     green = "0x5de4c7";
      #     yellow = "0xfffac2";
      #     blue = "0xadd7ff";
      #     magenta = "0xfae4fc";
      #     cyan = "0x89ddff";
      #     white = "0xffffff";
      #   };
      # };

      # Colors (Rosé pine)

      colors = {
        primary = {
          foreground = "#e0def4";
          background = "#191724";
          dim_foreground = "#908caa";
          bright_foreground = "#e0def4";
        };

        cursor = {
          text = "#e0def4";
          cursor = "#524f67";
        };

        vi_mode_cursor = {
          text = "#e0def4";
          cursor = "#524f67";
        };

        search = {
          matches = {
            foreground = "#908caa";
            background = "#26233a";
          };

          focused_match = {
            foreground = "#191724";
            background = "#ebbcba";
          };
        };

        hints = {
          start = {
            foreground = "#908caa";
            background = "#1f1d2e";
          };

          end = {
            foreground = "#6e6a86";
            background = "#1f1d2e";
          };
        };

        line_indicator = {
          foreground = "None";
          background = "None";
        };

        footer_bar = {
          foreground = "#e0def4";
          background = "#1f1d2e";
        };

        selection = {
          text = "#e0def4";
          background = "#403d52";
        };

        normal = {
          black = "#26233a";
          red = "#eb6f92";
          green = "#31748f";
          yellow = "#f6c177";
          blue = "#9ccfd8";
          magenta = "#c4a7e7";
          cyan = "#ebbcba";
          white = "#e0def4";
        };

        bright = {
          black = "#6e6a86";
          red = "#eb6f92";
          green = "#31748f";
          yellow = "#f6c177";
          blue = "#9ccfd8";
          magenta = "#c4a7e7";
          cyan = "#ebbcba";
          white = "#e0def4";
        };
        dim = {
          black = "#6e6a86";
          red = "#eb6f92";
          green = "#31748f";
          yellow = "#f6c177";
          blue = "#9ccfd8";
          magenta = "#c4a7e7";
          cyan = "#ebbcba";
          white = "#e0def4";
        };
      };
    };
  };
}
