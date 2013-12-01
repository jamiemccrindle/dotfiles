all:
        curl -o ~/.git-prompt.sh https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh
        curl -o ~/.git-completion.sh https://raw.github.com/git/git/master/contrib/completion/git-completion.bash
        mv ~/.gitconfig ~/.gitconfig.bak
        ln -s $(CURDIR)/gitconfig ~/.gitconfig
        mv ~/.bash_profile ~/.bash_profile.bak
        ln -s $(CURDIR)/bash_profile ~/.bash_profile
        mv ~/.inputrc ~/.inputrc.bak
        ln -s $(CURDIR)/inputrc ~/.inputrc
        mv ~/.vim ~/.vim.bak
        ln -s $(CURDIR)/vim ~/.vim
        mv ~/.vimrc ~/.vimrc.bak
        ln -s $(CURDIR)/vimrc ~/.vimrc
        mv ~/.gvimrc ~/.gvimrc.bak
        ln -s $(CURDIR)/gvimrc ~/.gvimrc
        mv ~/.gitignore ~/.gitignore.bak
        ln -s $(CURDIR)/gitignore ~/.gitignore
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

clean:
        rm -f ~/.git-prompt.sh ~/.git-completion.sh ~/.gitconfig ~/.bash_profile ~/.inputrc ~/.vimrc ~/.gvimrc ~/.gitignore
        rm -rf ~/.vim
