# buildconfig specifies release/debug

default:
	make usage

bash: 
	@echo "link bashrc"
	ln -s ~/.bashrc dotfiles/.bashrc
	@echo "link gitconfig"
	ln -s ~/.gitconfig dotfiles/.gitconfig
	cp -f ~/git-completion.bash dotfiles/git-completion.bash
	@echo "link vim config"
	cp -f ~/.vimrc dotfiles/.vimrc
	cp -f ~/.vimrc dotfiles/.vimrc.bundles
	@echo "please install vim bundles and set local in ~/.bashrc_local_dev"

usage:
	@echo "use command: make bash to deploy setting"


.PHONY : usage bash 
