return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function(_, opts)
		local configs = require("nvim-treesitter.configs")

		configs.setup(opts)
	end,
	opts = {
		auto_install = true,
		highlight = { enable = true, additional_vim_regex_highlighting = { "markdown" } },
		indent = { enable = true },
	},
}
