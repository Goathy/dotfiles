local servers = { 
	"lua",
	"vim",
	"vimdoc", 
	"query", 
	"sql", 
	"javascript", 
	"typescript", 
	"python", 
	"html", 
	"css", 
	"bash",
	"json",
	"jsonc"
}

require("nvim-treesitter.configs").setup {
  ensure_installed = servers,
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

