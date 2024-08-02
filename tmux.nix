{ pkgs, ...}:
let 
  unstable = import <nixpkgs-unstable> {};
in
{
  programs.tmux = {
	enable = true;
	baseIndex = 1;
	plugins = with pkgs; [
	    tmuxPlugins.better-mouse-mode
        tmuxPlugins.power-theme
        tmuxPlugins.vim-tmux-navigator
	];
    extraConfigBeforePlugins = ''
        set -g @tmux_power_theme '#81A1C1'
    '';
  };
}
