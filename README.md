# SETUP for iterm2:

# install brew， 打开后端，复制
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	
# install necessary packages，然后复制以下
	brew install cask
	brew cask install iterm2

	brew install zsh
	brew install tmux

	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
	
# 输入 vim，在输入 ：PluginInstall	
	# Launch vim and run :PluginInstall
	
# 打开 iterm2，设置，跟着以下操作, 剩下操作均在 iterm2 后端	
# connect iterm and zsh and tmux
	Go to iterm preference -> profiles -> command;  
		name as zsh, title job, 
		command /usr/local/bin/zsh --login
		,and check 'reuse previous session's directory'
	add another name as tmux, title name, 
		command /usr/local/bin/zsh --login	
		send text as start: tmux attach -t default || tmux new -s default

# config for vim, zsh, and tmux， 复制
	git clone https://github.com/ouerxiao/iterm.git

# 在复制
	mv ./.ycm_extra_conf.py ~/.vim/.ycm_extra_conf.py
	mv ./.zshrc ~/.zshrc
	mv ./.tmux.conf ~/.tmux.conf
	mv ./.vimrc ~/.vimrc
	
	source ~/.zshrc

	
