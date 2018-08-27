" Plugins
call plug#begin('~/.vim/plugged')
Plug 'jacoborus/tender.vim'
Plug 'leafgarland/typescript-vim'
Plug 'tasn/vim-tsx'
Plug 'dikiaap/minimalist'
Plug 'scrooloose/nerdtree'
Plug 'dylanaraps/crayon'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-scripts/CycleColor'
Plug 'francoiscabrol/ranger.vim'
Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'raichoo/purescript-vim'
Plug 'frigoeu/psc-ide-vim'
Plug 'vim-syntastic/syntastic'
Plug 'yggdroot/indentline'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf.vim'
call plug#end()


set termguicolors
set t_Co=256
colorscheme tender
hi Comment ctermfg=244

let g:indentLine_char = '⎸'
let g:indentLine_setConceal = 0
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¬


hi Visual ctermfg=235 ctermbg=185 guifg=#282828 guibg=#c9d05c
hi QuickFixLine ctermfg=235 ctermbg=185 guifg=#282828 guibg=#c9d05c
hi SignColumn ctermbg=235 guibg=#1b1d1e

set number
let mapleader=" "
let maplocalleader="\\"

map <leader>s :source ~/.vimrc<CR>
map <leader>t :NERDTreeToggle<CR>

set hidden
set history=100
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
autocmd BufWritePre * :%s/\s\+$//e
set hlsearch
nnoremap <silent> <CR> :nohlsearch<CR><CR>
set showmatch
set laststatus=2
set timeoutlen=1000 ttimeoutlen=10
au InsertEnter * hi Normal ctermbg=234 guibg=#000000
au InsertLeave * hi Normal ctermbg=235 guibg=#282828
set incsearch
set noshowmode

noremap <F8> :Geeknote<cr>

highlight Comment cterm=italic

hi Bang ctermbg=red guibg=red
match Bang /\%>79v.*\%<81v/

set rtp+=/usr/local/opt/fzf

set mouse=a
set omnifunc=syntaxcomplete#Complete

augroup File-Type
    autocmd!
    autocmd FileType qf setlocal wrap
    " ... Other autocmds if you like.
augroup END

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 25
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_list_hide= netrw_gitignore#Hide('my_gitignore_file')

autocmd FileType purescript :iabbrev <buffer> forall ∀

let g:syntastic_enable_balloons = 1

set diffopt+=vertical

let g:fzf_command_prefix = 'Fz'
" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


