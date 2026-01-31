-- ~/.config/nvim/lua/plugins/lualine.lua

return {
  'nvim-lualine/lualine.nvim',
  -- Opcional, pero recomendado para tener iconos bonitos
  dependencies = { 'nvim-tree/nvim-web-devicons' },

  config = function()
    require('lualine').setup({
      options = {
        -- El tema que usará lualine. Se integra con el que ya tienes.
        theme = 'catppuccin', 
        icons_enabled = true,
        component_separators = { guifg = '#585b70' }, -- Separador entre componentes de una misma sección
        section_separators = { left = '', right = '' }, -- Separadores de las secciones (requiere Nerd Font)
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
      },
      -- Aquí defines qué aparece en la barra de estado y en qué orden
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {{'filename', path = 1}}, -- path=1 muestra solo el nombre del archivo, no la ruta completa
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {{'filename', path = 1}},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
     --  extensions = {'telescope', 'nvim-tree'} -- Integración con otros plugins
    })
  end,
}
