local servers = { 'vim', 'vimdoc', 'query', 'javascript', 'typescript', 'lua', 'html', 'sql', 'python', 'json' }

require'nvim-treesitter.configs'.setup {
  ensure_installed = servers,
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

