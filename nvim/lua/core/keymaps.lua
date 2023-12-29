local mode = require('core.mode')
 
-- DISABLE KEYS --
function noop () end

local modes = { mode.INSERT, mode.NORMAL, mode.VISUAL }
local keys = { '<Up>', '<Down>', '<Left>', '<Right>', '<BS>' }
for _, key in ipairs(keys) do
    vim.keymap.set(modes, key, noop)
end

-- TABS
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
vim.o.softtabstop = 2
vim.o.smartindent = true
--

-- CUSTOM SHORTCUTS --
local LEADER = ' '

vim.g.mapleader = LEADER
vim.api.nvim_set_keymap(mode.NORMAL, '<leader>pe', ':Ex<CR>', { noremap = true })
vim.api.nvim_set_keymap(mode.NORMAL, '<leader><CR>', ':so $XDG_CONFIG_HOME/nvim/init.lua<CR>', { noremap = true, silent = true })

