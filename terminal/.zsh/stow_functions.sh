# as of stow 2.2.2, READMEs are automatically ignored
restow() {
	cd ~/fedoradots && \
		stow -Rvt ~/ emacs terminal remap scripts startup common browsing
}

unstow() {
	cd ~/dotfiles && \
		stow -Dvt ~/ emacs terminal remap scripts startup common browsing
}
