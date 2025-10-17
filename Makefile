links:
	ln -sf ~/repos/dotfiles/bashrc		~/.bashrc
	ln -sf ~/repos/dotfiles/nvim		~/.config/
	ln -sf ~/repos/dotfiles/foot		~/.config/
	ln -sf ~/repos/dotfiles/btop 		~/.config/
	ln -sf ~/repos/dotfiles/fastfetch	~/.config/

unlink:
	rm -rf ~/.bashrc
	rm -rf ~/.config/nvim
	rm -rf ~/.config/foot
	rm -rf ~/.config/fastfetch
	rm -rf ~/.config/btop
