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

The [`init.sh`](init.sh) script will:
* Load `bash_completion` and `rbenv`;
* Add cd shortcuts using CDPATH;
* Load [`prompt`](scripts/prompt.sh) customization;
* Load [`aliases`](scripts/aliases.sh).

## Prompt customization
Adds info to your prompt; example: `🏠 dotfiles | 2.4.2 (master) $`

Prompt has the format `<git email> <folder> | <ruby version> (<git branch>) $` where:
* `git email`: An emoji shows if you are using your work (🏢) or personal (🏠) email on git commits;
* `folder`: Current folder;
* `ruby version`: Current rbenv Ruby version;
* `git branch`: Current git branch. Omitted if current folder isn't a git repo.

## README todo
* [ ] Add instructions for creating your own version of the dotfiles;
* [ ] Make init.sh idempotent.
  * CDPATH has duplicated entries after a reload.

Forked version of https://github.com/lucasmazza/dotfiles
