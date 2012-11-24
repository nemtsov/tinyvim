BACKUP_DIR = ~/.vim_old_bkp

install:
	@echo "[ BACKING-UP CURRENT to $(BACKUP_DIR) ]"
	mkdir -p $(BACKUP_DIR)
	if test -d ~/.vim; then mv ~/.vim $(BACKUP_DIR)/vim; fi
	if test -e ~/.vimrc; then mv ~/.vimrc $(BACKUP_DIR)/vimrc; fi
	if test -e ~/.gvimrc; then mv ~/.gvimrc $(BACKUP_DIR)/gvimrc; fi

	@echo "[ RETRIEVING PLUGINS ]"
	mkdir -p vim/bundles 
	cd ./vim/bundles; \
	  git clone https://github.com/scrooloose/nerdtree.git; \
	  git clone git://github.com/msanders/snipmate.vim.git; \
	  rm snipmate.vim/snippets/javascript.snippets

	@echo "[ CREATING ALIASES ]"
	ln -s "`pwd`/vim" ~/.vim
	ln -s "`pwd`/vimrc" ~/.vimrc
	ln -s "`pwd`/gvimrc" ~/.gvimrc
