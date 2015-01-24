# buildconfig specifies release/debug
current_dir = $(shell pwd)

default:
	make usage

bash: 
	@echo "link bashrc"
	ln -sF $(current_dir)/dotfiles/.bashrc ~/.bashrc
	@echo "link gitconfig"
	ln -sF $(current_dir)/dotfiles/.gitconfig ~/.gitconfig
	cp -f $(current_dir)/dotfiles/git-completion.bash ~/git-completion.bash
	@echo "link vim config"
	ln -sF $(current_dir)/dotfiles/.vimrc ~/.vimrc
	ln -sF $(current_dir)/dotfiles/.vimrc.bundles ~/.vimrc.bundles
	@echo "please install vim bundles and set local in ~/.bashrc_local_dev"

usage:
	@echo "use command: make bash to deploy setting"


.PHONY : usage bash 
