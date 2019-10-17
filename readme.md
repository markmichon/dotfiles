#dotfiles

Currently installation requires manual symlinking of files in this directory to ~.

```
ln -s /path/to/original/ /path/to/link

ls -s .zshrc ~/.zshrc
// place a link to the local .zshrc file in the home folder
```

## New Machine setup

- Install Brave/FS
- Install [VSCode](https://code.visualstudio.com/)
- [Install NVM](https://github.com/nvm-sh/nvm#installation-and-update)
- Install Homebrew: `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
- Brew bundle `Brewfile`
- Symlink over all settings
