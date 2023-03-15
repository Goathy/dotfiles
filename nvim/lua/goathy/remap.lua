-- Explorer keymap
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Reload config
vim.keymap.set("n", "<leader><leader>", function ()
	vim.cmd("so")
end)
