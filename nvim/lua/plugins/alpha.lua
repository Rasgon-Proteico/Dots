-- ~/.config/nvim/lua/plugins/alpha.lua

return {
  'goolord/alpha-nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  -- Carga el plugin en el evento VimEnter para que sea lo primero que veas
  event = "VimEnter",
  config = function()
    local alpha = require('alpha')
    local dashboard = require('alpha.themes.dashboard')

    -- Opcional: Obtener los colores de Catppuccin para una integración perfecta
    -- Esto hace que si cambias el "flavour" de Catppuccin, el dashboard también cambie.
    local colors = require('catppuccin.palettes').get_palette()

    -- Definir nuevos grupos de resaltado para el tema del dashboard
    vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = colors.mauve, bold = true })
    vim.api.nvim_set_hl(0, 'DashboardButton', { fg = colors.subtext1 })
    vim.api.nvim_set_hl(0, 'DashboardShortcut', { fg = colors.sapphire, bold = true })
    vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = colors.teal, italic = true })

    -- Encabezado (Header) - ASCII Art
    dashboard.section.header.val = {
        [[                               __                ]],
        [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
        [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
        [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
        [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
        [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]], 
    }
    dashboard.section.header.opts.hl = 'DashboardHeader'

    -- Botones (Buttons) - Acciones rápidas
    dashboard.section.buttons.val = {
      dashboard.button('f', '  Buscar archivo',  ':Telescope find_files <CR>'),
      dashboard.button('n', '  Nuevo archivo',   ':enew <CR>'),
      dashboard.button('g', '  Buscar texto',    ':Telescope live_grep <CR>'),
      dashboard.button('r', '  Archivos recientes', ':Telescope oldfiles <CR>'),
      dashboard.button('l', '💤  Lazy',            ':Lazy <CR>'),
      dashboard.button('q', '  Salir',           ':qa <CR>'),
    }
    -- Asignar el resaltado a los botones y sus atajos
    for _, button in ipairs(dashboard.section.buttons.val) do
        button.opts.hl = 'DashboardButton'
        button.opts.hl_shortcut = 'DashboardShortcut'
    end

    -- Pie de página (Footer) - Muestra una cita aleatoria
    dashboard.section.footer.val = 'El que lee mucho y anda mucho, ve mucho y sabe mucho.'
    dashboard.section.footer.opts.hl = 'DashboardFooter'

    -- Aplicar la configuración del dashboard
    alpha.setup(dashboard.opts)
  end,
}
