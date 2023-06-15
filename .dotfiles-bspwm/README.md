# Dotfiles for bspwm+sxhkd in ArchLinux

---

## Info
[Look to my dotfiles](https://github.com/Sonder9927/.dotfiles).

This version is for my new ArchLinux which use bspwm+sxhkd.

And this time I add new content about polybar.

## Addition
### Lvim

Use `black` as formatter and `flake8` as linter.

Deprecated `pyright`, so need to change file `~/.local/share/lunarvim/lvim/lua/lvim/lsp/config.lua`:

```lua

  ...

  installer = {
    setup = {
      ensure_installed = {},
      automatic_installation = {
        exclude = { "pyright" },
      },
    },
  },

  ...

```

## Wishes
Write the scripts to install Arch and set my configuration.

