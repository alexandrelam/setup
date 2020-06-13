# Setup Vim

Copier le contenu du .vimrc dans votre .vimrc

## Sur Linux:

### Installation de Vim-Plug

```
 ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Copie du .vimrc

`cd`

`git clone https://github.com/alexandrelam/setup`

`cp setup/.vimrc .vimrc`

### Installation des plugins

Dans vim : `:PlugInstall`

#### Installation de Coc

`:CocInstall coc-python coc-tsserver coc-json coc-html coc-css coc-java`

# Setup Ubuntu

### Prérequis

Ce script fonctionne sur **Ubuntu 20.04**

### Installation

Rendre le fichier executable : `sudo chmod +x install.sh`

Executer le fichier : `./install.sh`

### Logiciels installés

* Google-Chrome
* Youtube-DL
* Mpv
* SublimeText
* Install Python
* Install Pip for python
* Install GIT
* Uninstall firefox

### Settings
* Utiliser alt+right-click pour bouger et resize une fenêtre
