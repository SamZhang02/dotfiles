-- This is necessary for VimTeX to load properly. The "indent" is optional.
-- Note that most plugin managers will do this automatically.
vim.cmd [[filetype plugin indent on]]

-- This enables Vim's and neovim's syntax-related features. Without this, some
-- VimTeX features will not work.
vim.cmd [[syntax enable]]

-- Viewer options: One may configure the viewer either by specifying a built-in
-- viewer method:
vim.g.vimtex_view_method = 'skim'

-- Or with a generic interface:
vim.g.vimtex_view_general_viewer = 'okular'
vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'

-- VimTeX uses latexmk as the default compiler backend. If you use it, which is
-- strongly recommended, you probably don't need to configure anything.
vim.g.vimtex_compiler_method = 'latexmk'

-- Most VimTeX mappings rely on localleader and this can be changed with the
-- following line. The default is usually fine and is the symbol "\".
vim.g.maplocalleader = ','

-- compile on save
vim.g.vimtex_compiler_latexmk = {
  continuous = 1,
}

-- enable compilation by default when opening tex file
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = '*.tex',
  command = 'VimtexCompile',
})

return {
  {
    'lervag/vimtex',
  },
}
