set number
set termguicolors     " enable true colors support

set cmdheight=2
set updatetime=500

set tabstop=4
set expandtab
set shiftwidth=0

filetype plugin on

let g:python3_host_prog = '/opt/homebrew/bin/python3'

lua << EOF
local nightfox = require('nightfox')

nightfox.setup({
  fox = "nightfox", -- change the colorscheme to use nordfox
	transparent = true,
  styles = {
    comments = "italic",
    keywords = "bold",
    functions = "italic,bold"
  },
  inverse = {
    match_paren = true,
  },
	colors = {
		fg_gutter = "#5D6899",
		comment = "#6B7F99",
	}
})

nightfox.load()
EOF


let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]

lua << EOF
vim.opt.list = true

require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
EOF
