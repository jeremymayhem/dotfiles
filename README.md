# dotfiles

# Getting started

The dotfiles are installed automatically by the devbox project install.  

If you need to install outside of the devbox install, you can run `./install`

The install script will update submodules, invoke the dotbot install defined in `.install.

# Dotfiles features

## Shell environment

- Easy to add modular shell configs in `~/.better.bash.d`
  - Drop a script in here and it will be sourced automatically
- fzf fuzzy finder integration
  - <C-r> from the bash prompt will use fuzzy matching
  - <C-t> will fuzzy match files
  - <A-c> will fuzzy cd to subdirectories

## Vim configuration

- TBD

## Tmux configuration

- TBD

## Git configuration

- Default `.gitconfig`.  This can be extended and overridden by adding to `~/.gitconfig.local`
- `git-graph` draws subway diagram logs of git repos.  `git graph` in a git repo to see the magic.
- `git icdiff` - colorized side by side diff

## Bin scripts

Several scripts are installed in ~/bin:

- `devbox` is used to perform devbox update functions.  `devbox update` is the most useful.
- `fpp` - Facebook Path Picker.  Allows selection of paths from your shell.  Google it.
- `icdiff` - colorized side-by-side diff tool
