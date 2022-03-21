# tailwind-highlight.nvim

Highlight [Tailwind CSS](https://tailwindcss.com/) classes in [neovim](https://neovim.io/)

![preview](./assets/tw_highlight.png)

## Installation

- **Vim Plug**
  ```vim
  " required dependency
  Plug 'neovim/nvim-lspconfig'
  " (optional) for installing tailwindcss language server
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'princejoogie/tailwind-highlight.nvim'
  ```

## Usage

```lua
local tw_highlight = require('tailwind-highlight')
```

#### Options

| Option          | Description                       | Default |
| --------------- | --------------------------------- | ------: |
| `single_column` | highlight only first character    |   false |
| `debounce`      | delay on updating highlights (ms) |     200 |

**Without Lsp Installer**

```lua
require('lspconfig').tailwindcss.setup({
  on_attach = function(client, bufnr)
    -- rest of you config
    tw_highlight.setup(client, bufnr, {
      -- defaults
      single_column = false, -- if true, only first character is highlighted
      debounce = 200, -- debounce delay on highlight update (in ms)
    })
  end
})

```

**With Lsp Installer**

```lua

require('nvim-lsp-installer').on_server_ready(function(server)
  local opts = {
    on_attach = function(client, bufnr)
      -- rest of you config
      tw_highlight.setup(client, bufnr, {
        -- defaults
        single_column = false, -- if true, only first character is highlighted
        debounce = 200, -- debounce delay on highlight update (in ms)
      })
    end
  }

  server:setup(opts)
end)
```

---

Made with ☕ by [Prince Carlo Juguilon][portfolio]

[portfolio]: https://princecaarlo.tech/
[github]: https://github.com/princejoogie/
[twitter]: https://twitter.com/princecaarlo/
[instagram]: https://www.instagram.com/princecaarlo/
[linkedin]: https://www.linkedin.com/in/princejoogie/
