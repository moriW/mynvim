let mapleader=" "


" BASIC SETTING
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=10
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir

syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu
set nocompatible

" on search action
set hlsearch
set incsearch
set ignorecase
set smartcase
exec "nohlsearch"
noremap <LEADER><CR> :nohlsearch<CR>


" filetype
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" movement
noremap H 10h
noremap J 10j
noremap K 10k
noremap L 10l

inoremap <C-l> <right>
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>

noremap <LEADER>p "*p
noremap <LEADER>b :ls<cr>:b<space>
" noremap <LEADER>t :set splitright<CR>:vsplit<CR>:terminal<CR>

" copy
noremap <LEADER>y "*y
noremap <LEADER>p "*p


inoremap ' ''<left>
inoremap " ""<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap ( ()<left>


" SHORT KEY
" file save
map s <nop>
map S :w<CR>
map q :q<CR>
map Q :q!<CR>
map R :source $MYVIMRC<CR>

map ; :

" Split Windows
map <LEADER>sl :set splitright<CR>:vsplit<CR>
map <LEADER>sh :set nosplitright<CR>:vsplit<CR>
map <LEADER>sj :set nosplitbelow<CR>:split<CR>
map <LEADER>sk :set splitbelow<CR>:split<CR>
"map su :set nosplitbelow<CR>:split<CR>
"map se :set splitbelow<CR>:split<CR>

map <C-l> <C-w>l
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-j> <C-w>j

" map <up> :res +5<CR>
" map <down> :res -5<CR>
" map <left> :vertical resize-5<CR>
" map <right> :vertical resize+5<CR>

noremap <LEADER>src :e ~/.config/nvim/init.vim<CR>

" map tu :tabe<CR>
" map tn :-tabnext<CR>
" map ti :+tabnext<CR>

call plug#begin('~/.vim/plugged')


Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'vim-airline/vim-airline'


" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }


" Undo Tree
Plug 'mbbill/undotree/'



" Other visual enhancement
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/vim-cursorword'

" Git
Plug 'rhysd/conflict-marker.vim'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'gisphm/vim-gitignore', { 'for': ['gitignore', 'vim-plug'] }



" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': ':call mkdp#util#install()', 'for': 'markdown' }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'


" Other useful utilities
Plug 'terryma/vim-multiple-cursors'
Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'scrooloose/nerdcommenter' " in <space>cc to comment a line

" Dependencies
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'kana/vim-textobj-user'
Plug 'fadein/vim-FIGlet'
Plug 'mhinz/vim-startify'
Plug 'cocopon/iceberg.vim'

" Plug 'rakr/vim-one'

call plug#end()

" let g:airline_theme='one'
colorscheme iceberg
set background=dark
" ===
" === NERDTree
" ===

noremap <C-t> :NERDTreeToggle<CR>


" ==
" == NERDTree-git
" ==
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


" ===
" === Taglist
" ===
map <silent> T :TagbarOpenAutoClose<CR>


" ===
" === MarkdownPreview
" ===
nmap <LEADER>M <Plug>MarkdownPreviewToggle
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'


" ===
" === vim-table-mode
" ===
" map <LEADER>tm :TableModeToggle<CR>

" ===
" === vim-indent-guide
" ===
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 1
silent! unmap <LEADER>ig
autocmd WinEnter * silent! unmap <LEADER>ig


" ===
" === Undotree
" ===
let g:undotree_DiffAutoOpen = 0
map <LEADER>Z :UndotreeToggle<CR>


" ===
" === COC
" ===

set signcolumn=yes
set updatetime=100

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <silent><expr><C-s> coc#refresh()

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
" "nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gd :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> D :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end


" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')


" ===
" === StartUp
" ===
"

let g:startify_custom_header = [
    \ '    __  ___           _ ___         __         ',
    \ '   /  |/  /___  _____(_| _ )       / /___ ____ ',
    \ '  / /|_/ / __ \/ ___/ / __ \/|__  / / __ `/ _ \',
    \ ' / /  / / /_/ / /  / / /_/  </ /_/ / /_/ /  __/',
    \ '/_/  /_/\____/_/  /_/\____/\/\____/\__,_/\___/ ',
    \ ]

" autocmd VimEnter * NERDTreeToggle
au BufWritePost *.go :silent !gofmt -w %

