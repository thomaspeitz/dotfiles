if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

set nocompatible  " Use Vim settings, rather then Vi settin
set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=500
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
" set statusline=%f\ [%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=[%-3.3n]\ %c,%l/%L\ %P
set autowrite     " Automatically :write before running commands
set hidden
set number
set numberwidth=1

" leader
let mapleader = ","

syntax on

" Color scheme
let g:solarized_termcolors=256
colorscheme solarized
set background=dark
let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'

filetype plugin indent on

" FZF
nnoremap <silent> <leader>t :Files<CR>
nnoremap <silent> <leader>g :GFiles<CR>
nnoremap <silent> <leader>b :Buffers<CR>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Switch between the last two files
nmap <leader><leader> <c-^>

" Use Tab for autocompletion
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-P>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

set tabstop=2
set shiftwidth=2
set expandtab

autocmd Filetype gitcommit setlocal spell textwidth=72
autocmd FileType eruby,json,yaml,html setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType ruby setlocal colorcolumn=79 shiftwidth=2 tabstop=2 softtabstop=2 expandtab
autocmd FileType ruby,eruby,json,yaml,html autocmd BufWritePre <buffer> :%s/\s\+$//e

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" vim golang settings
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Jenkinsfile
au BufNewFile,BufRead *.groovy  setf groovy

" vim json settings
let g:vim_json_warnings = 1

set hlsearch
set undofile
set undodir=/Users/tpeitz/.vimundo/

" Faster update of git changes
set updatetime=250

" Jump to next Change
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

" Remove annoying ** bold ** hiding of special chars in markdown
autocmd FileType markdown let g:indentLine_enabled=0
au FileType markdown vmap <Leader><Bslash> :EasyAlign*<Bar><Enter>
