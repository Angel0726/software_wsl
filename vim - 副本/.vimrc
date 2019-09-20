"去掉vi的一致性"
set nocompatible
"显示行号"
set number
" 隐藏滚动条"    
set guioptions-=r 
set guioptions-=L
set guioptions-=b
"隐藏顶部标签栏"
set showtabline=0
"设置字体"
set guifont=Monaco:h13         
syntax on   "开启语法高亮"
let g:solarized_termcolors=256  "solarized主题设置在终端下的设置"
set background=dark     "设置背景色"
colorscheme solarized
set nowrap  "设置不折行"
set fileformat=unix "设置以unix的格式保存文件"
set cindent     "设置C样式的缩进格式"
set tabstop=4   "设置table长度"
set shiftwidth=4        "同上"
set showmatch   "显示匹配的括号"
set scrolloff=5     "距离顶部和底部5行"
set laststatus=2    "命令行为两行"
set fenc=utf-8      "文件编码"
set backspace=2
set mouse=a     "启用鼠标"
set selection=exclusive
set selectmode=mouse,key
set matchtime=5
set ignorecase      "忽略大小写"
set incsearch
set hlsearch        "高亮搜索项"
set noexpandtab     "不允许扩展table"
set whichwrap+=<,>,h,l
set autoread
set cursorline      "突出显示当前行"
set cursorcolumn        "突出显示当前列"

"py缩进"
au BufNewFile,BufRead *.py
\ set tabstop=4   "tab宽度
\ set softtabstop=4 
\ set shiftwidth=4  
\ set textwidth=79  "行最大宽度
\ set expandtab       "tab替换为空格键
\ set autoindent      "自动缩进
\ set fileformat=unix   "保存文件格式

"一键运行"
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
        exec "w"
        if &filetype == 'c'
                exec "!g++ % -o %<"
                exec "!time ./%<"
        elseif &filetype == 'cpp'
                exec "!g++ % -o %<"
                exec "!time ./%<"
        elseif &filetype == 'java'
                exec "!javac %"
                exec "!time java %<"
        elseif &filetype == 'sh'
                :!time bash %
        elseif &filetype == 'python'
                exec "!clear"
                exec "!time python3 %"
        elseif &filetype == 'html'
                exec "!firefox % &"
        elseif &filetype == 'go'
                " exec "!go build %<"
                exec "!time go run %"
        elseif &filetype == 'mkd'
                exec "!~/.vim/markdown.pl % > %.html &"
                exec "!firefox %.html &"
        endif
endfunc

"分割窗口"
set splitbelow    ":vs  或者 :vsplit  将当前窗口竖直分割，并在上面新窗口中显示当前文件"
set splitright      ":sp 或者:sv或者:split  将当前窗口水平分割，并在左边新窗口中显示当前文件"
                          ":new 新建文件并竖直分割，:vnew 新建文件并水平分割"

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"创建折叠"
set foldmethod=indent
set foldlevel=99

nnoremap <space> za      "使用zc按键来创建折叠，使用za来打开或者关闭折叠。"

set nocompatible              " be iMproved, required
filetype off                  " required
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
 
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required