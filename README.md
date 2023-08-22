1. Boot into plasma live install env
2. Make partitions (for legacy boot)
    1. Open Gparted
    2. Make msdos partition table
    3. Make main partition:
        * (**IMPORTANT**) label: "nixos"
        * ext4
        * Size: Full disk minus amount of swap space
    4. Make swap partition
        * (**IMPORTANT**) label: "swap"
        * linux-swap
        * Size: 4GB

3. Open terminal (konsole in plasma) and get root (with `sudo su`)

4. Mount main partition (swap not used for install)
    ```
    mount /dev/disk/by-label/nixos /mnt
    ```

5. Get dotfiles
    ```bash
    # Open up a temporary environment with git installed
    nix-env -iA nixos.git
    # Clone dotfiles
    git clone https://github.com/jlndk/dotfiles.git /mnt/dotfiles
    # Change to mounted directory
    cd /mnt/dotfiles
    # Install nixos with the downloaded config
    nixos-install --root /mnt --flake .#jlndk
    ```
5. Reboot (and remove live install env)
