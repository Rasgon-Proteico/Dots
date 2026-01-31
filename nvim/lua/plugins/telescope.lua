return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },

  -- Opcional, pero muy recomendado: añade algunos atajos para usarlo
  config = function()
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<C-f>', builtin.find_files, { desc = 'Buscar archivos' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Buscar texto en archivos' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Buscar en buffers abiertos' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Buscar ayuda' })
  end
}
