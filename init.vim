:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set completeopt=noinsert,menuone,noselect

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' " status bar
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/jiangmiao/auto-pairs' " Automatic quote and bracket completion
Plug 'https://github.com/scrooloose/nerdcommenter' " comment plugin
Plug 'https://github.com/joshdick/onedark.vim' " theme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/sheerun/vim-polyglot' " syntax highlighting
Plug 'https://github.com/ncm2/ncm2' " code completion
Plug 'https://github.com/roxma/nvim-yarp' " vim yarp support for code completion
Plug 'https://github.com/ncm2/ncm2-bufword' "completion sources
Plug 'http://github.com/ncm2/ncm2-path' " completion sources
Plug 'https://github.com/ncm2/ncm2-jedi' " python completion

call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

autocmd BufEnter * call ncm2#enable_for_buffer()

let g:onedark_hide_endofbuffer=1
let g:onedark_termcolors=256
let g:onedark_terminal_italics=1

au ColorScheme * hi Normal ctermbg=none guibg=none
au ColorScheme myspecialcolors hi Normal ctermbg=red guibg=red

:colorscheme onedark
