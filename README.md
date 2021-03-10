SETUP for iterm2:


	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	brew install cask
	brew cask install iterm2
	
	brew install zsh
	brew install tmux

	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	
	Go to iterm preference -> profiles -> command;  
		name as zsh, title job, 
		command /usr/local/bin/zsh --login
		,and check 'reuse previous session's directory'
	add another name as tmux, title name, 
		command /usr/local/bin/zsh --login	
		send text as start: tmux attach -t default || tmux new -s default

	
	mv ./.ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
	mv ./.zshrc ~/.zshrc
	mv ./.tmux.conf ~/.tmux.conf
	mv ./.vimrc ~/.vimrc

