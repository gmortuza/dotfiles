function install() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "install.sh" \
		--exclude "README.md" \
		--exclude "LICENSE-MIT.txt" \
		-avh --no-perms . ~;
	ZSH="${HOME}/.oh-my-zsh"
	git clone --depth 1 https://github.com/junegunn/fzf.git ${HOME}/.fzf 2> /dev/null;
	${HOME}/.fzf/install;
	git clone https://github.com/ohmyzsh/ohmyzsh.git $ZSH 2> /dev/null;
	git clone https://github.com/zsh-users/zsh-completions $ZSH/custom/plugins/zsh-completions 2> /dev/null;
	git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH/custom/plugins/zsh-autosuggestions 2> /dev/null;
	git clone https://github.com/zsh-users/zsh-syntax-highlighting $ZSH/custom/plugins/zsh-syntax-highlighting 2> /dev/null;
	git clone https://github.com/VundleVim/Vundle.vim.git ${HOME}/.vim/bundle/Vundle.vim 2> /dev/null;
	source ${HOME}/.bash_profile;
	vim -cq ':PluginInstall';
}

install;
unset install;
