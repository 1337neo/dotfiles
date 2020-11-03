"Install vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
          silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
              \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
            autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
"vim-plug
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Valloric/YouCompleteMe', { 'commit':'d98f896' }
Plug 'jiangmiao/auto-pairs'
Plug 'jmcantrell/vim-virtualenv'
Plug 'altercation/vim-colors-solarized'
Plug 'sickill/vim-monokai'
call plug#end()

"personal config
set noswapfile
set ts=4
set number
set foldmethod=indent
set foldlevel=99
set encoding=utf-8
set backspace=indent,eol,start
set autoindent
syntax on
colorscheme monokai
set background=dark
"Plugin stuff
let python_highlight_all=1
let NERDTreeMinimalUI=1
let NERDTreeDirArrows = 1
"start nerdtreee
autocmd vimenter * NERDTree
let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeShowHidden=1
"nerdcommenter told me to do this
filetype plugin on
let g:virtualenv_directory='/home/neo/envs/'
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#show_close_button = 0 "disable weird x button on buffers
let g:airline#extensions#tabline#show_tab_nr = 0 "disable tab number
let g:airline#extensions#tabline#show_tab_type = 0 "disable weird orange thing
let g:airline_theme='solarized'
let g:airline_powerline_fonts = 1

"remaps
"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-W> <C-W><C-K>
nnoremap <C-D> <C-W><C-L>
nnoremap <C-A> <C-W><C-H>

"Tab remaps
nnoremap <F1> :tabprev<CR>
nnoremap <F2> :tabnext<CR>
nnoremap <F3> :tabnew<CR>

"remap nerdcomment  toggle"
"you can press number of lines prior to pressing macro"
":map <C-z> <plug>NERDCommenterToggle
nmap <C-c> <Plug>NERDCommenterToggle
vmap <C-c> <Plug>NERDCommenterToggle<CR>gv

"Python PEP 8 indentation
au BufNewFile,BufRead *.py
        \ set tabstop=4 |
        \ set softtabstop=4 |
        \ set shiftwidth=4 |
        \ set textwidth=79 |
        \ set expandtab |
        \ set autoindent |
        \ set fileformat=unix
