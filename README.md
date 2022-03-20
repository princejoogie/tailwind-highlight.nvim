# tailwind-highlight.nvim

highlight tailwind color classes in neovim

![preview](./assets/tw_highlight.png)

## Installation

- **Vim Plug**
	```vim
	Plug 'neovim/nvim-lspconfig' " <- required dependency 
	Plug 'princejoogie/tailwind-highlight.nvim'
	```

## Usage

```lua
local tw_highlight = require('tailwind-highlight')

-- in lsp's `on_attach` function
local on_attach = function(client, bufnr)
  -- rest of your config
  tw_highlight.setup(client, bufnr, 
    -- defaults
    single_column = false, -- if true, only first character is highlighted
    debounce = 200, -- debounce delay on highlight update (in ms)
  })
end
```

---

Made with ☕ by [Prince Carlo Juguilon][portfolio]

[portfolio]: https://princecaarlo.tech/
[github]: https://github.com/princejoogie/
[twitter]: https://twitter.com/princecaarlo/
[instagram]: https://www.instagram.com/princecaarlo/
[linkedin]: https://www.linkedin.com/in/princejoogie/

