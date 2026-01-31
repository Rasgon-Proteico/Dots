-- lua/plugins/cmp.lua
--  :!node %    para poder ejecutar código JavaScript
-- Para que aparezca el menú flotante con sugerencias mientras escribes.
return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp", -- Fuente para el LSP
    "hrsh7th/cmp-buffer",   -- Fuente para texto en el archivo
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'buffer' },
      })
    })
  end,
}
