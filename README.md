## Currently a *WIP*

## Vim Earl Grey Theme

Vim port of the [Earl Grey Theme](https://github.com/earl-grey-theme/earl-grey) using [lush.nvim](https://github.com/rktjmp/lush.nvim).

## Install

This **currently** requires [lush.nvim](https://github.com/rktjmp/lush.nvim), but will not when it's finished.

Using packer:

```lua
use ({
  "jacksonludwig/vim-earl-grey",
  requires = { "rktjmp/lush.nvim" },
  config = function()
    vim.cmd("colorscheme nvim-earl-grey")
  end
})
```

Or use any other package manager and set the colorscheme afterward with:

```vim
colorscheme nvim-earl-grey
```

## Plugin/Extension Support

- Neovim built-in LSP
- Neovim Treesitter (In progress)
