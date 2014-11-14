all:
	ln -s $(CURDIR)/gitconfig ~/.gitconfig
	ln -s $(CURDIR)/bash_profile ~/.bash_profile
	ln -s $(CURDIR)/inputrc ~/.inputrc
	# ln -s $(CURDIR)/vim ~/.vim
	# ln -s $(CURDIR)/vimrc ~/.vimrc
	# ln -s $(CURDIR)/gvimrc ~/.gvimrc
	ln -s $(CURDIR)/gitignore_global ~/.gitignore_global
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

clean:
	rm -f ~/.git-prompt.sh ~/.git-completion.sh ~/.gitconfig ~/.bash_profile ~/.inputrc ~/.vimrc ~/.gvimrc ~/.gitignore_global
	rm -rf ~/.vim
