# Setup Vim

Copier le contenu du .vimrc dans votre .vimrc

## Sur Linux:

### Installation de Vim-Plug

```
 ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Copie du .vimrc

`git clone https://github.com/alexandrelam/setup`

`cp setup/.vimrc .vimrc`

### Installation du theme gruvbox


`git clone https://github.com/morhetz/gruvbox`

`cp gruvbox/colors .vim`

### Installation des plugins

Dans vim : `:PlugInstall`

#### Installation de Coc

`:CocInstall coc-python coc-tsserver coc-json coc-html coc-css coc-java`

## Vim raccourci

| raccourci | action                       |
|-----------|------------------------------|
| , ,       | emmet autocomplete html tags |   
| ctrl f    | fzf find file in dir         |
| , n n     | toggle nerdtree              |

# Setup Ubuntu

### Prérequis

Ce script fonctionne sur **Ubuntu 20.04**

### Installation

Rendre le fichier executable : `sudo chmod +x install.sh`

Executer le fichier : `./install.sh`

### Logiciels installés

* Google-Chrome
* SublimeText
* Install Python
* Install Pip for python
* Install GIT
* Install VIM
* Download Gruvbox theme but no install
* Uninstall firefox
* Install Curl
* Install Nodejs et npm
* Install OBS Studio
* Install vimplug


### Settings
* Utiliser alt+right-click pour bouger et resize une fenêtre

## Imwheel

1. `sudo apt install imwheel`
2. Download `mousewheel.sh`
3. `chmod +x mousewheel.sh`
4. `./mousewheel.sh`
5. Add `mousewheel.sh` to startup