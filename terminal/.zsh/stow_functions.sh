# as of stow 2.2.2, READMEs are automatically ignored
restow() {
	cd ~/mydots && \
		stow -Rvt ~/ emacs terminal remap scripts startup \
		common browsing assets wm media
}

unstow() {
	cd ~/mydots && \
		stow -Dvt ~/ emacs terminal remap scripts startup \
		common browsing assets wm media
}
