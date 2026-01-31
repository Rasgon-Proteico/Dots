return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    require('catppuccin').setup({
      flavour = "mocha",
      transparent_background = true,
      highlights = function(colors)
        return {
          ["@punctuation.bracket"] = { fg = '#cba6f7'  },
          ["@function.call"] = { fg = colors.mauve },
          ["@variable.builtin"] = { fg = colors.peach, style = "italic" },
          ["@number"] = { fg = colors.peach },
          ["@string"] = { fg = colors.green },
          ["@constant.builtin"] = { fg = colors.peach },
        }
      end,
    })
    vim.cmd('colorscheme catppuccin')
  end,
}
