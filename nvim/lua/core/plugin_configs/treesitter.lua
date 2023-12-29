local ensure_installed = { 'vim', 'vimdoc', 'query', 'javascript', 'typescript', 'lua', 'html', 'sql', 'python', 'json' }

require'nvim-treesitter.configs'.setup {
  ensure_installed = ensure_installed,
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

