# Setup Vim

Copier le contenu du .vimrc dans votre .vimrc

## Sur Linux:

### Installation de Vim-Plug

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Copie du .vimrc

`git clone https://github.com/alexandrelam/setup`

`sudo cp -r setup/.vimrc .vimrc`

### Installation du theme gruvbox

`git clone https://github.com/morhetz/gruvbox`

`sudo cp -r gruvbox/colors .vim`

### Installation des plugins

Dans vim : `:PlugInstall`

#### Installation de Coc

python
`:CocInstall coc-python`

java
`:CocInstall coc-java`

web dev
`:CocInstall coc-tsserver coc-json coc-html coc-css coc-vetur`


## Vim raccourci

| raccourci | action                       |
| --------- | ---------------------------- |
| , ,       | emmet autocomplete html tags |
| ctrl f    | fzf find file in dir         |
| , n n     | toggle nerdtree              |

## Setup Ubuntu

### Prérequis

Ce script fonctionne sur **Ubuntu 20.04**

### Installation

Rendre le fichier executable : `sudo chmod +x install.sh`

Executer le fichier : `./install.sh`

### Logiciels installés

- Google-Chrome
- SublimeText
- Install Python
- Install Pip for python
- Install GIT
- Install VIM
- Download Gruvbox theme but no install
- Uninstall firefox
- Install Curl
- Install Nodejs et npm
- Install OBS Studio
- Install vimplug

## Settings

#### Alt right click resize

```
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button true
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Alt>'
```

#### Fix alt-tab on gnome

```
gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab', '<Super>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward  "['<Alt><Shift>Tab', '<Super><Shift>Tab']"
```

#### Imwheel

1. `sudo apt install imwheel`
2. Download `mousewheel.sh`
3. `chmod +x mousewheel.sh`
4. `./mousewheel.sh`
5. Add `mousewheel.sh` to startup

## Setup Arch Nvidia driver hybrid

https://www.youtube.com/watch?v=OlIXQRpfJQ4

install `optimus-manager-qt` and `bbswitch`


## Sur windows10

Alt-Resize window : https://stefansundin.github.io/altdrag/

## Cool website 

- Free illustration for app : https://2.flexiple.com/scale/all-illustrations
- List of illustrations :https://dev.to/davidepacilio/50-free-tools-and-resources-to-create-awesome-user-interfaces-1c1b
- Another list of illustration websites : https://dev.to/theme_selection/best-design-resources-websites-every-developer-should-bookmark-1p5d
