function noop () end

local modes = { "i", "n", "v" }
local keys = { "<Up>", "<Down>", "<Left>", "<Right>", "<BS>" }
for _, key in ipairs(keys) do
	vim.keymap.set(modes, key, noop)
end

vim.o.relativenumber = true
vim.o.number = true
vim.o.colorcolumn = "80"
vim.g.mapleader=" "

