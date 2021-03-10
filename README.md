SETUP for iterm2:


	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	brew install cask
	brew cask install iterm2
	brew install zsh
	brew install tmux

	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	
	mv ./.ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
	mv ./.zshrc ~/.zshrc
	mv ./.tmux.conf ~/.tmux.conf
	mv ./.bimrc ~/.vimrc

