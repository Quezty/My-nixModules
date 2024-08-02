{  pkgs, ...}:
let
  unstable = import <nixpkgs-unstable> {};
in
{
  users.defaultUserShell = pkgs.zsh;

  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    autosuggestions.enable = true;
    enableCompletion = true;
    ohMyZsh = {
      enable = true;
      theme = "avit";
    };
  };

  environment.systemPackages = with pkgs; [
    unstable.zsh
    unstable.bat
    unstable.eza
    unstable.fd
    unstable.fzf
    pfetch
  ];
}
