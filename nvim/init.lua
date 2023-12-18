-- MODES --
local NORMAL = "n"
local INSERT = "i"
local VISUAL = "v"

-- OPTIONS --
vim.o.scrolloff = 8
vim.o.relativenumber = true
vim.o.number = true
vim.o.colorcolumn = "80"
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smartindent = true

-- COLOR SCHEME --
vim.cmd("colorscheme desert")

-- CUSTOM SHORTCUTS --
local LEADER = " "

vim.g.mapleader = LEADER
vim.api.nvim_set_keymap(NORMAL, '<leader>pv', ':Vex<CR>', { noremap = true })

-- DISABLE KEYS --
function noop () end

function disable_keys ()
    local modes = { INSERT, INSERT, VISUAL }
    local keys = { "<Up>", "<Down>", "<Left>", "<Right>", "<BS>" }
    for _, key in ipairs(keys) do
        vim.keymap.set(modes, key, noop)
    end
end

disable_keys()

