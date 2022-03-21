local M = {}

local highlight = require('tailwind-highlight.highlight')

--- Highlights tailwind color classes
---
-- @param client - client of nvim lsp
-- @param bufnr - bufnr of nvim lsp
-- @param opts - options for tailwind highlight
--
-- @example
-- ```lua
-- local tw_highlight = require('tailwind-highlight')
-- local on_attach = function(client, bufnr)
--   -- ...rest of your code...
--   tw_highlight.setup(client, bufnr, {
--     single_column = false,
--     debounce = 200,
--     mode = 'background',
--   })
-- end
-- ```
function M.setup(client, bufnr, opts)
	opts = opts or {}
  if client.server_capabilities.colorProvider then
    highlight.buf_attach(bufnr, {
			single_column = opts.single_column or false,
			debounce = opts.debounce or 200,
      mode = opts.mode or 'background',
		})
  end
end

function M.ping()
	print('tailwind-highlight: pong')
end

return M
