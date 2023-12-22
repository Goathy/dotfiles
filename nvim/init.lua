-- MODES --
local NORMAL = "n"
local INSERT = "i"
local VISUAL = "v"

-- DISABLE KEYS --
function noop () end

local modes = { INSERT, NORMAL, VISUAL }
local keys = { "<Up>", "<Down>", "<Left>", "<Right>", "<BS>" }
for _, key in ipairs(keys) do
    vim.keymap.set(modes, key, noop)
end

-- OPTIONS --
vim.o.scrolloff = 8
vim.o.relativenumber = true
vim.o.number = true
vim.o.colorcolumn = "80"
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true
vim.opt.termguicolors = true

-- COLOR SCHEME --
-- vim.cmd("colorscheme desert")

-- CUSTOM SHORTCUTS --
local LEADER = " "

vim.g.mapleader = LEADER
vim.api.nvim_set_keymap(NORMAL, '<leader>ex', ':Ex<CR>', { noremap = true })
vim.api.nvim_set_keymap(NORMAL, '<leader><CR>', ':so $XDG_CONFIG_HOME/nvim/init.lua<CR>', { noremap = true, silent = true })

