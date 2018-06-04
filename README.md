## Setup instructions

1. Clone this repository
```
cd ~
git clone https://github.com/DEGABGED/vim-settings.git .vim
cd .vim
```

2. Download `vim` and `vim-gtk`
```
sudo apt-get install vim vim-gtk
```

3. Check the .vimrc for edits or changes you want to make

4. Create the symlink
```
ln -s .vim/.vimrc .vimrc
```

5. Install the colorscheme to `.vim/colors`

6. Install the packages
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim
:PluginInstall
```
