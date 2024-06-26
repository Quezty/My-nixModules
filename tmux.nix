{ config, pkgs, ...}:

{
  programs.tmux = {
	enable = true;
	baseIndex = 1;
	plugins = with pkgs.tmuxPlugins; [
		better-mouse-mode
		dracula
	];
	extraConfig = ''
		set -g @dracula-show-battery false;
	'';
  };
}
