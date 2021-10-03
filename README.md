# Vim Earl Grey Theme

Vim port of the [Earl Grey Theme](https://github.com/earl-grey-theme/earl-grey) using [lush.nvim](https://github.com/rktjmp/lush.nvim).

I am still adding and adjusting highlights with this theme.

## Screenshots

![image](https://user-images.githubusercontent.com/42984254/135736397-3f8dfadd-ea79-4168-8091-ecb68d58f741.png)

![image](https://user-images.githubusercontent.com/42984254/135736418-8ca6a1be-1ed3-46cd-b268-2fe5fc5874e6.png)

![image](https://user-images.githubusercontent.com/42984254/135736440-e53f0d8c-199e-4cbc-8d93-3047419d5a20.png)

Screenshots are taken with treesitter active, but currently only the default Treesitter highlights are being used.

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
