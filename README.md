# dotfiles

## Installation

```sh
git clone git@github.com:peagha/dotfiles.git ~/Code/dotfiles
cd ~/Code/dotfiles
./install
```

The [`install`](install) script will:

* Add symlinks for each file under [`symlinks`](symlinks) to your home directory;
* Inject the `init.sh` file in your `~/.profile`;
* Create a set of standard directories under `~/Code` to organize your git repositories.

Modified version of https://github.com/lucasmazza/dotfiles
