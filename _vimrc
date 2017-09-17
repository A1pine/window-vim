set tags+=~/.vim/tags
syntax enable
syntax on
set cursorline
hi CursorLine  cterm=NONE   ctermbg=darkred ctermfg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white
filetype plugin indent on
set t_Co=256
set background=dark  "dark light "can switch it to find which is look pretty
set hlsearch                     "highlight the search
set incsearch                    "move to fit position after one char input
set nobackup                     "won't produce the backup file when save file
set nowritebackup                "won't produce the backup file when save file
set noswapfile                   "won't use swapfile
set hidden                       "can open other file when a file is not saved
set ruler                        "show ruler at the right bottom
set wrap                       "disable auto newline
set laststatus=2                 "status bar will show anytime
set updatetime=200               "tagbar response 800ms
set showmatch matchtime=0        "show the other bracket
set wmnu wildmode=longest:full   "when in command mode can use auto complete same as bash
set expandtab tabstop=4          "expand the tab to 4 space
set si ai ci cinkeys-=0# cinoptions=g0,:0   "some indent rules
set shiftwidth=4                 "make the indent 4 length
set softtabstop=4                "backspace can del 4 space
set lcs=eol:$,tab:\|\            "display tab to green line
set backspace=indent,eol,start   "better backspace
set fileencodings=utf-8,cp936    "auto test the file is uft-8 or cp936
set fileformats=unix,dos,mac     "line feed different in different mode
set completeopt=menuone,longest
set relativenumber


set guifont=Consolas:h14 "��������
set clipboard=unnamed "ʹ��windows�ļ�����
colorscheme molokai

set foldmethod=syntax "���﷨�����������۵�
set foldlevel=100   "����vimʱ��Ҫ�Զ��۵�����
set foldcolumn=5    "�����۵����Ŀ��

"�������
set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" �����������Ż�
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" markdown���
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
" javascript��html��css��json��ʽ������
Plugin 'maksimr/vim-jsbeautify'
" ���ٴ��ļ�
Plugin 'ctrlpvim/ctrlp.vim'
" �Զ��պ�html��xml��ǩ
Plugin 'alvan/vim-closetag'
" �����С����ǰ����
Plugin 'szw/vim-maximizer'
" vimgrep�ļ���ʹ�ò��
Plugin 'dkprice/vim-easygrep'
" ע��
Plugin 'scrooloose/nerdcommenter'
" �������ƶ�
Plugin 'easymotion/vim-easymotion'
call vundle#end()

" �ĵ���
Bundle 'scrooloose/nerdtree'
" emmet���
Bundle 'mattn/emmet-vim'
" �Զ����{} ()
Bundle 'Auto-Pairs'
" javascript�﷨�����
Bundle 'othree/javascript-libraries-syntax.vim'

" nerdTree��ݼ�ӳ��
let NERDTreeWinPos='left'
let NERDTreeWinSize=30
map <F2> :NERDTreeToggle<CR>

" ����emmet��� ctrl+tab
let g:user_emmet_expandabbr_key = '<c-tab>'
let g:user_emmet_settings = {'indentation': '    '}
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall


" ��ʽ����ݼ� ctrl+f
map <c-f> :call JsBeautify()<cr>

" ���ÿ��ٴ��ļ���ݼ� ctrl+p
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" F3 ��ݼ��������С������
nnoremap <silent><F3> :MaximizerToggle<CR>
vnoremap <silent><F3> :MaximizerToggle<CR>gv
inoremap <silent><F3> <C-o>:MaximizerToggle<CR>

" ����ע�Ϳճ�һ���ַ�������
let g:NERDSpaceDelims = 1

" ʶ���﷨��
let g:used_javascript_libs = 'jquery,requirejs'

