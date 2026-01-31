-- ~/.config/nvim/init.lua
-- -------------------------------------------------------------------
-- Opciones Generales
-- ------------------------------------------------------------------
vim.g.mapleader = '/'  -- Establece la tecla líder a la barra inclinada
vim.g.maplocalleader = '/' -- Opcional, pero recomendado
vim.opt.number = true            
vim.opt.mouse = 'a'               -- Habilita el uso del ratón en todos los modos
vim.opt.tabstop = 2               -- Un tabulador ocupa 2 espacios
vim.opt.shiftwidth = 2            -- La indentación automática usa 2 espacios
vim.opt.expandtab = true          -- Convierte los tabuladores en espacios
vim.cmd('syntax on')              -- Activa el resaltado de sintaxis
vim.opt.termguicolors = true      -- Habilita colores True Color
vim.o.guicursor='a:hor20-blinkwait700-blinkoff400-blinkon250'

-- -------------------------------------------------------------------
-- Función para compilar y ejecutar en tmux
-- -------------------------------------------------------------------
-- Función para C/C++ (sin cambios)
local function compile_and_run_cpp_in_tmux()
  -- Para saber el índice del panel, presiona Ctrl-b y luego q.
  local target_pane = "1"
  local current_file = vim.fn.expand('%:p')
  local executable = vim.fn.expand('%:p:r')
  local command_to_send = "clear && g++ -Wall " .. current_file .. " -o " .. executable .. " && " .. executable
  vim.fn.system("tmux send-keys -t " .. target_pane .. " '" .. command_to_send .. "' Enter")
  vim.notify("Comando de C++ enviado a tmux", vim.log.levels.INFO)
end

-- Nueva función para Python estándar
local function run_python_in_tmux()
  local target_pane = "1"
  local current_file = vim.fn.expand('%:p')
  local command_to_send = "clear && python3 " .. current_file
  vim.fn.system("tmux send-keys -t " .. target_pane .. " '" .. command_to_send .. "' Enter")
  vim.notify("Comando de Python enviado a tmux", vim.log.levels.INFO)
end

-- Función "despachadora" que elige qué hacer según el tipo de archivo
local function compile_or_run_file()
  local filetype = vim.bo.filetype
  if filetype == 'cpp' or filetype == 'c' then
    compile_and_run_cpp_in_tmux()
  elseif filetype == 'python' then
    run_python_in_tmux() -- <-- Ahora llama a la función de Python normal
  else
    vim.notify("No hay acción definida para el tipo de archivo: " .. filetype, vim.log.levels.WARN)
  end
end

-- -------------------------------------------------------------------
-- Atajos de Teclado (Keymaps)
-- -------------------------------------------------------------------
vim.keymap.set('n', '<C-a>', 'ggVG', { desc = 'Seleccionar todo el buffer' })

-- Mapeo para la función "inteligente" de compilación/ejecución
vim.keymap.set('n', '<F5>', compile_or_run_file, {
  noremap = true,
  silent = true,
  desc = "Compilar/Ejecutar en tmux (C++/Python)"
})-- -------------------------------------------------------------------
-- Solución para el Portapapeles en Wayland (Hyprland)
-- -------------------------------------------------------------------
if vim.fn.executable('wl-copy') == 1 then
  vim.opt.clipboard = 'unnamedplus'
end

-- -------------------------------------------------------------------
-- Gestor de Plugins: lazy.nvim
-- -------------------------------------------------------------------
local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup('plugins')
