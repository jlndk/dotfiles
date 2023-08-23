{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    cdpath = [
      "~/dev/main"
    ];
    shellAliases = {
      l = "ls -lhoa";

      nrs = "sudo nixos-rebuild switch --flake /dotfiles/#jlndk";

      doc = "docker compose";

      gg = "git get";
      gs = "git change";
      gm = "git fetch-merge";
      gsg = "git change-grep";
      gcg = "git checkout-grep";
      gca = "git add -A && git commit";
      pu = "git push";
      pl = "git pull";
      gl = "git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit";
      wip = "git add . && git commit -m 'wip'";
      whoops = "wip && git push --no-verify";
      nah = "git reset --hard && git clean -df";

      gpr = "gh pr checkout";

      kc = "kubectl";
      kg = "kubectl get";

      y = "yarn";
      p = "pnpm";
      n = "pnpm nx";

      py3 = "python3";
      po = "poetry";
      ps = "poetry shell";

      gauth = "gcloud auth login && gcloud auth application-default login";

      docker_nuke = "docker kill $(docker ps -qa); docker container rm $(docker ps -aq); docker volume rm $(docker volume ls -q)";
    };
    plugins = [
      {
        name = "nx-completion";
        file = "nx-completion.plugin.zsh";
        src = pkgs.fetchFromGitHub {
          owner = "jscutlery";
          repo = "nx-completion";
          # Update 18. november 2022
          rev = "84386914d55b2e73285069c8f156348255da4a60";
          sha256 = "deYpsbnWDBk/uRzJetuHg+LSt6O9U1fOMBEv1GHBrPo=";
        };
      }
    ];
    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "man"
      ];
      theme = "robbyrussell";
    };
  };
}
