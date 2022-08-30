set number
set termguicolors     " enable true colors support

set cmdheight=2
set updatetime=500

set tabstop=4
set expandtab
set shiftwidth=0

syntax enable
filetype plugin on
filetype plugin indent on

let g:airline_theme='minimalist'
let g:airline_powerline_fonts = 1

let g:python3_host_prog = '/opt/homebrew/bin/python3'

let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

lua << EOF
require('nightfox').setup({
  options = {
    transparent = true,
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
    }
  }
})
EOF

colorscheme nightfox

lua << END
require('lualine').setup()
END

lua << EOF
vim.opt.list = true

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
EOF
