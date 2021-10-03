## Vim Earl Grey Theme

Vim port of the [Earl Grey Theme](https://github.com/earl-grey-theme/earl-grey) using [lush.nvim](https://github.com/rktjmp/lush.nvim).

I am still adding and adjusting highlights with this theme.

## Install

Using packer:

```lua
use ({
  "jacksonludwig/vim-earl-grey",
  config = function()
    vim.cmd("colorscheme vim-earl-grey")
  end
})
```

Or use any other package manager and set the colorscheme afterward with:

```vim
colorscheme vim-earl-grey
```

## Plugin/Extension Support

- Neovim built-in LSP (Complete)
- Neovim Treesitter (Planned)
