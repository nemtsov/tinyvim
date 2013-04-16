BACKUP_DIR = ~/.vim_old_bkp_$(shell date +%s)

install:
	@echo "[ BACKING-UP CURRENT to $(BACKUP_DIR) ]"
	mkdir -p $(BACKUP_DIR)
	if test -d ~/.vim; then mv ~/.vim $(BACKUP_DIR)/vim; fi
	if test -e ~/.vimrc; then mv ~/.vimrc $(BACKUP_DIR)/vimrc; fi
	if test -e ~/.gvimrc; then mv ~/.gvimrc $(BACKUP_DIR)/gvimrc; fi

	@echo "[ RETRIEVING PLUGINS ]"
	mkdir -p vim/_backup
	mkdir -p vim/_temp
	mkdir -p vim/bundle
	cd ./vim/bundle; \
		git clone https://github.com/scrooloose/nerdtree.git; \
		git clone https://github.com/msanders/snipmate.vim.git; \
		git clone https://github.com/ervandew/supertab.git; \
		git clone https://github.com/pangloss/vim-javascript.git; \
		git clone https://github.com/juvenn/mustache.vim.git; \
		git clone https://github.com/mattn/zencoding-vim.git; \
		git clone https://github.com/airblade/vim-gitgutter.git; \
		git clone https://github.com/kien/ctrlp.vim.git; \
		if test -e snipmate.vim/snippets/javascript.snippets; \
		then rm snipmate.vim/snippets/javascript.snippets; fi

	@echo "[ CREATING ALIASES ]"
	ln -s "`pwd`/vim" ~/.vim
	ln -s "`pwd`/vimrc" ~/.vimrc
	ln -s "`pwd`/gvimrc" ~/.gvimrc
