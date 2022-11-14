My dotfiles
===========

Installation
-------------
* Clone this repository with `--bare` option
* Add alias to shell `cfg='git --git-dir=$HOME/projects/dotfiles/ --work-tree=$HOME'`
* Remove all files from disk which Git wants to overwrite `cd ~ && cfg ls-files | xargs rm`
* Checkout the actual content from the bare repository `cfg checkout`
* Set the flag showUntrackedFiles to no on this specific (local) repository `config --local status.showUntrackedFiles no`

More information: https://www.atlassian.com/git/tutorials/dotfiles

Used software
-------------

- [bat](https://github.com/sharkdp/bat)
- [compton](https://github.com/chjj/compton)
- [feh](https://github.com/derf/feh)
- [fish](https://github.com/fish-shell/fish-shell)
  - [powerline-shell](https://github.com/b-ryan/powerline-shell)
- [i3-gaps](https://github.com/Airblader/i3)
  - [i3-blocks](https://github.com/vivien/i3blocks)
  - [i3lock-color](https://github.com/Raymo111/i3lock-color) ([PPA](https://github.com/codejamninja/i3lock-color-ubuntu))
- [imagemagick](https://github.com/ImageMagick/ImageMagick)
- [mpd](https://www.musicpd.org/), [mpc](https://www.musicpd.org/clients/mpc/), [ncmpcpp](https://github.com/ncmpcpp/ncmpcpp)
- [nala](https://github.com/volitank/nala) for Ubuntu
- [pacstall](https://github.com/pacstall/pacstall) for Ubuntu
- [polybar](https://github.com/polybar/polybar)
- [ranger](https://github.com/ranger/ranger)
  - [dragon](https://aur.archlinux.org/packages/dragon-drag-and-drop/)
- [rofi](https://github.com/davatorium/rofi)
- [scrot](https://github.com/dreamer/scrot)
- [termite](https://github.com/thestinger/termite)
- [udiskie](https://github.com/coldfix/udiskie)
- [unimatrix](https://github.com/will8211/unimatrix)
- [vim](https://github.com/vim/vim) (**gvim** for Arch, **vim-gtk** for Ubuntu)
  - [vim-plug](https://github.com/junegunn/vim-plug)
