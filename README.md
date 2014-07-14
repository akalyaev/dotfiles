# ~akalyaev dotfiles

## Install

Clone onto your laptop:

    git clone git://github.com/akalyaev/dotfiles.git

(Or, [fork and keep your fork
updated](http://robots.thoughtbot.com/keeping-a-github-fork-updated)).

Install [rcm](https://github.com/thoughtbot/rcm):

    brew bundle rcm

Install:

    rcup -d dotfiles -x README.md -x LICENSE

This will create symlinks for config files in your home directory. The
`-x` options, which exclude the `README.md` and `LICENSE` files, are
needed during installation but can be skipped once the `.rcrc`
configuration file is symlinked in.

You can safely run `rcup` multiple times to update:

    rcup

## Make your own customizations

Put your customizations in dotfiles appended with `.local`:

* `~/.aliases.local`
* `~/.gitconfig.local`
* `~/.tmux.conf.local`
* `~/.config/fish/config.fish.local`
* `~/.vimrc.local`

For example, your `~/.aliases.local` might look like this:

    # Productivity
    alias todo='$EDITOR ~/.todo'

Your `~/.gitconfig.local` might look like this:

    [alias]
      l = log --pretty=colored
    [pretty]
      colored = format:%Cred%h%Creset %s %Cgreen(%cr) %C(boldblue)%an%Creset
    [user]
      name = Joe Black
      email = joe@black.com

Your `~/.config/fish/config.fish.local` might look like this:

    set PATH $PATH /usr/local/bin

## What I am using

* [vim](http://www.vim.org/)
* [tmux](http://robots.thoughtbot.com/a-tmux-crash-course). Prefix is `Ctrl-f`
* [fish](https://github.com/fish-shell/fish-shell)

Shell aliases and scripts:

* `g` for `git`.
* `replace foo bar **/*.rb` to find and replace within a given list of
  files.

## Thanks

These dotfiles is heavily inspired by [holman does
dotfiles](https://github.com/holman/dotfiles). Installation process is
now handled by awesome [thougtbot/rcm](https://github.com/thoughtbot/rcm).
