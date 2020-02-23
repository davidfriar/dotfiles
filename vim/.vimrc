if has('python3')
endif
" Plugins
call plug#begin('~/.vim/plugged')
" === Colors

Plug 'lifepillar/vim-solarized8'
" Plug 'vim-scripts/CycleColor'
" Plug 'chriskempson/base16-vim'
" Plug 'danielwe/base16-vim'
" Plug 'jacoborus/tender.vim'
" Plug 'dikiaap/minimalist'
" Plug 'dylanaraps/crayon'
" Plug 'morhetz/gruvbox'
" Plug 'lifepillar/vim-solarized8'
" Plug 'rafi/awesome-:wvim-colorschemes'

" === Misc
Plug 'scrooloose/nerdtree'
Plug 'jeetsukumaran/vim-filebeagle'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
" Plug 'yggdroot/indentline'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/hexHighlight.vim'
Plug 'gerw/vim-HiLinkTrace'
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tommcdo/vim-exchange'
Plug 'tpope/vim-eunuch'
Plug 'KabbAmine/vCoolor.vim'
Plug 'sjl/gundo.vim'
Plug 'vim-scripts/VisIncr'
Plug 'drwx/calutil.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jremmen/vim-ripgrep'
Plug 'mattn/webapi-vim'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
Plug 'machakann/vim-swap'
Plug 'terryma/vim-smooth-scroll'



" === IDE
" Plug 'skywind3000/asyncrun.vim'
Plug 'w0rp/ale'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-projectionist'


" === Purescript
Plug 'raichoo/purescript-vim'
Plug 'frigoeu/psc-ide-vim'

" === CSS
Plug 'ap/vim-css-color'
Plug 'othree/csscomplete.vim'

" === Javascript
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
" Plug 'maxmellon/vim-jsx-pretty'

" === JSON
"Plug 'leshill/vim-json'
Plug 'elzr/vim-json'

" === Typescript
" Plug 'dkorolev/typescript-vim'
" Plug 'HerringtonDarkholme/yats.vim'
Plug 'leafgarland/typescript-vim', {'for': ['typescript', 'typescript.tsx']}
" Plug 'ianks/vim-tsx', { 'for': 'typescript.tsx' }
Plug 'davidfriar/vim-tsx', { 'for': 'typescript.tsx' }
"Plug 'peitalin/vim-jsx-typescript'
" Plug 'Quramy/tsuquyomi'

" === LATEX
Plug 'lervag/vimtex'

" === Python
" Plug 'riher/python-mode',{ 'branch': 'fix/py3-importlib' }
Plug 'vim-python/python-syntax'

" === Scheme
Plug 'kovisoft/slimv'
Plug 'kien/rainbow_parentheses.vim'
Plug 'calebsmith/vim-lambdify'

" === Rust
Plug 'rust-lang/rust.vim'
Plug 'rhysd/rust-doc.vim'
Plug 'racer-rust/vim-racer'
Plug 'pest-parser/pest.vim'

Plug 'beyondmarc/glsl.vim'

" === Writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'beloglazov/vim-online-thesaurus'

" === Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'jxnblk/vim-mdx-js'


call plug#end()


let g:pymode_python = 'python3'
let g:python_highlight_all = 1

let g:gundo_prefer_python3 = 1

let g:UltiSnipsSnippetDirectories=['~/.vim/UltiSnips', 'UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

let g:user_emmet_mode='iv'
let g:user_emmet_leader_key=';'
let g:user_emmet_settings = { 'javascript.jsx' : {  'extends' : 'jsx', }, }

let g:ycm_autoclose_preview_window_after_insertion = 1


let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '●'
let g:ycm_error_symbol = '●'
let g:ycm_warning_symbol = '●'
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   'javascript': ['eslint', 'prettier'],
\   'javascript.jsx': ['eslint', 'prettier'],
\   'typescript': ['tslint', 'prettier'],
\   'typescript.tsx': ['tslint', 'prettier'],
\   'css': ['prettier'],
\   'html': ['tidy'],
\   'python': [ 'add_blank_lines_for_python_control_statements', 'autopep8',
\     'black', 'isort', 'remove_trailing_lines', 'trim_whitespace', 'yapf']
\}
let g:ale_linters = {'rust': ['rls']}
let g:ale_rust_rls_toolchain ='stable'

let g:ale_set_balloons= 1

let g:ycm_enable_diagnostic_highlighting = 0

let g:pandoc#syntax#conceal#use =0
let g:pandoc#filetypes#handled = ["pandoc", "markdown"]
let g:pandoc#filetypes#pandoc_markdown = 0


" autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %
" autocmd BufWritePost *.ts,*.tsx AsyncRun -post=checktime ./node_modules/.bin/tslint --fix % && npx prettier --parser typescript --write %


autocmd FileType json let g:vim_json_syntax_conceal = 0

set termguicolors
" set t_Co=256
set background=dark
colorscheme solarized8
let g:solarized_diffmode="high"
hi EndOfBuffer guifg=bg
:exe 'hi SpecialKey guibg=NONE guifg=' g:terminal_ansi_colors[0]
:exe 'hi Error guibg=' g:terminal_ansi_colors[0] 'guifg=' g:terminal_ansi_colors[1] 'gui=bold cterm=bold'
:exe 'hi ALEError guibg=NONE guifg=' g:terminal_ansi_colors[1] 'gui=underline'
:exe 'hi YcmErrorSign guibg=NONE guifg=' g:terminal_ansi_colors[1]
:exe 'hi YcmErrorSection guibg=NONE guifg=' g:terminal_ansi_colors[1] 'gui=underline'

set fillchars+=vert:│
:exe 'hi VertSplit guifg=bg guibg=' g:terminal_ansi_colors[0]

let g:gitgutter_sign_priority = 9


let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1
let g:airline_solarized_bg='dark'
" let g:airline_solarized_normal_green = 1
let g:airline_solarized_dark_text = 1
let g:airline_solarized_dark_inactive_border = 1
" au InsertEnter * call Base16hi("CursorLine","","101010","","","","")
" au InsertLeave * call Base16hi("CursorLine","",g:base16_gui01,"","","","")
" au InsertEnter * call Base16hi("CursorLineNr","","101010","","","","")
" au InsertLeave * call Base16hi("CursorLineNr","",g:base16_gui01,"","","","")
" call Base16hi("LineNr",g:base16_gui04,g:base16_gui00,"","","","")
" call Base16hi("CursorLineNr",g:base16_gui05,g:base16_gui00,"","","","")
" call Base16hi("Comment",g:base16_gui04,g:base16_gui00,"","","italic","")
" call Base16hi("SignColumn","",g:base16_gui00,"","","","")
" call Base16hi("GitGutterAdd","",g:base16_gui00,"","","","")
" call Base16hi("GitGutterChange","",g:base16_gui00,"","","","")
" call Base16hi("GitGutterDelete","",g:base16_gui00,"","","","")
" call Base16hi("GitGutterChangeDelete","",g:base16_gui00,"","","","")
" call Base16hi("NonText",g:base16_gui02,"","","","","")
" call Base16hi("SpecialKey",g:base16_gui03,"","","","","")
" call Base16hi("Error","ff0000",g:base16_gui00,"","","","")
" call Base16hi("ALEError","ff0000","","","","underline","")
" call Base16hi("YcmErrorSign","ff0000","","","","","")
" call Base16hi("YcmErrorSection","ff0000","","","","underline","")
" let g:indentLine_color_gui = '#282a2e'
" let g:indentLine_concealcursor=0
au VimEnter * call matchadd('SpecialKey', '\s', -1)
au VimEnter * call matchadd('SpecialKey', '$', -1)
set cursorline
" highlight clear CursorLineNR
hi! link typescriptReserved Keyword
hi! link jsxCloseTag jsxTag
hi! link jsxCloseString jsxTag
hi! link xmlTag Operator
hi! link xmlEndTag Operator
hi! link tsxComponent Function
hi! link tsxIntrinsicElement Structure
hi! link embeddedTsStart Statement
hi! link embeddedTsEnd Statement
hi! link schemeParentheses Normal
" hi Visual guifg=#282828 guibg=#c9d05c
" highlight DiffAdd    guifg=#000000 guibg=#99cc99
" highlight DiffDelete guifg=#000000 guibg=#f2777a
" highlight DiffChange guifg=#000000 guibg=#ffcc66
" highlight DiffText   guifg=#ef2929 guibg=#ffcc66


" let g:indentLine_char = '¦'
" let g:indentLine_char = '⌇'
" let g:indentLine_setConceal = 1
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¬


let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeHijackNetrw = 0
let NERDTreeShowHidden=1
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:filebeagle_show_hidden = 1

let mapleader=" "
let maplocalleader="\\"

map <leader>s :source ~/.vimrc<CR>
map <leader>t :NERDTreeToggle<CR>
vmap <leader>c "+y
" map <leader>o :call SetBG("NONE")<CR>
" map <leader>O :call SetBG("#".g:base16_gui00)<CR>
nmap <leader>n :set relativenumber!<CR>
nmap <leader>N :set number!<CR>
nmap <leader>g :Goyo<CR>
nmap <leader>p "+p
nmap <leader>P "+P

"highlight last inserted text
nnoremap gV `[v`]

nnoremap <leader>u :GundoToggle<CR>


" function! SetBG(colour)
"   exec "hi Normal guibg=" . a:colour
"   exec "hi Comment guibg=" . a:colour
"   exec "hi LineNr guibg=" . a:colour
"   exec "hi SignColumn guibg=" . a:colour
"   exec "hi GitGutterAdd guibg=" . a:colour
"   exec "hi GitGutterChange guibg=" . a:colour
"   exec "hi GitGutterDelete guibg=" . a:colour
"   exec "hi GitGutterChangeDelete guibg=" . a:colour
" endfunction


" Quick jumping between splits
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l



set number
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
set incsearch
set noshowmode
"this is a comment
noremap <F8> :Geeknote<cr>


" hi Bang ctermbg=red guibg=red
" match Bang /\%>80v.*\%<82v/

set rtp+=/usr/local/opt/fzf

set mouse=a

set omnifunc=syntaxcomplete#Complete
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags noci
autocmd FileType css set omnifunc=csscomplete#CompleteCSS noci
autocmd FileType less set omnifunc=csscomplete#CompleteCSS noci
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
let g:ycm_cache_omnifunc = 0

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

set autoread
set encoding=utf-8


let g:vimtex_view_method='zathura'

" Open some binaries with external tools
autocmd BufReadCmd *.pdf silent !zathura % &
autocmd BufEnter *.pdf bdelete
autocmd BufReadCmd *.png silent !xdg-open % &
autocmd BufEnter *.png bdelete
autocmd BufReadCmd *.jpg silent !xdg-open % &
autocmd BufEnter *.jpg bdelete
autocmd BufReadCmd *.jpeg silent !xdg-open % &
autocmd BufEnter *.jpeg bdelete
autocmd BufReadCmd *.gif silent !xdg-open % &
autocmd BufEnter *.gif bdelete
autocmd BufReadCmd *.ico silent !xdg-open % &
autocmd BufEnter *.ico bdelete

set wildmenu


if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/undo")
    call mkdir($HOME."/.vim/undo", "", 0700)
endif
if !isdirectory($HOME."/.vim/swap")
    call mkdir($HOME."/.vim/swap", "", 0700)
endif
set undodir=~/.vim/undo//
set undofile
set directory=~/.vim/swap//

" Chicken Scheme
let g:is_chicken = 1
setl lispwords+=let-values,condition-case,with-input-from-string
setl lispwords+=with-output-to-string,handle-exceptions,call/cc,rec,receive
setl lispwords+=call-with-output-file


let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[0 q"

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

let g:rustfmt_autosave = 1


set spelllang=en_gb
set spellfile=~/.vim/spell/en.utf-8.add

function! s:goyo_enter()
  Limelight
  set noshowmode
  set noshowcmd
  set nolist
  set wrap
  set linebreak
  set noruler
  set laststatus=0
  set display+=lastline
  set spell
  hi StatusLine guifg=bg guibg=bg gui=NONE term=none cterm=NONE
  hi StatusLineNC guifg=bg guibg=bg gui=NONE term=none cterm=NONE
  hi TabLine guifg=bg guibg=bg gui=NONE term=none cterm=NONE
  nnoremap j gj
  nnoremap k gk
endfunction

function! s:goyo_leave()
  Limelight!
  set showmode
  set showcmd
  set nowrap
  set nolinebreak
  set list
  set nospell
  unmap j
  unmap k
  :exe 'hi SpecialKey guibg=NONE guifg=' g:terminal_ansi_colors[0]
  " highlight clear CursorLineNR
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal_code_blocks = 0

omap i, <Plug>(swap-textobject-i)
xmap i, <Plug>(swap-textobject-i)
omap a, <Plug>(swap-textobject-a)
xmap a, <Plug>(swap-textobject-a)

noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 1)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 1)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 2)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 2)<CR>

