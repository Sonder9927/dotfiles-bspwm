# Dotfiles for bspwm+sxhkd in ArchLinux

---

## Info

[Look to my dotfiles](https://github.com/Sonder9927/.dotfiles).

This version is for my new ArchLinux which use bspwm+sxhkd.

And this time I add new content about polybar.

## Addition

### Lvim

- language ide:

see [starter.lvim](https://github.com/LunarVim/starter.lvim)

- useful keymaps:

  - vim cmd

    | keymap    | cmd                 |
    | --------- | ------------------- |
    | `<C-i>`   | to go forward       |
    | `<C-o>`   | and `''` to go back |
    | `:sp`     | split panel         |
    | `<C-j/k>` | jump panel          |

  - leader cmd
    - python

      | keymap | cmd           |
      | ------ | ------------- |
      | `as`   | sourcery show |
      | `af`   | sourcery fix  |
      | `lc`   | switch env    |

    - rust

      | keymap | cmd                     |
      | ------ | ----------------------- |
      | `rr`   | cargo runnables         |
      | `rc`   | open `Cargo.toml`       |
      | `ry`   | open creates repository |

    - self cmd

      | keymap | cmd             |
      | ------ | --------------- |
      | `lp`   | run python code |

- details:

Use `black` as formatter and `flake8` as linter and write python scripts with
the extension `coc-pyright`.

If you hope don't install `pyright` automaticly, change
`lvim.installer.setup({automatic_installation={exclude={"pyright"}}})`, which in
file `~/.local/share/lunarvim/lvim/lua/lvim/lsp/config.lua`:

```lua
  ...

  installer = {
    setup = {
      ensure_installed = {},
      automatic_installation = {
        exclude = {},
      },
    },
  },

  ...
```

## Wishes

Write the scripts to install Arch and set my configuration.
