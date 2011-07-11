" Colorscheme >>>
colorscheme evening
"<<<
"SET>>>
"FONT >>>
set guifont=Monospace\ 8
"<<<
"TAB PREFERENCES">>>
set ts=4
set sts=4
set ai
set si
set sw=4
set et
set modeline
"<<<
" Директорія для складання swp файлів>>>
" Директорія обов'язково має бути присутня для того щоб це працювало
"
set dir=~/.vim/swp
"<<<
" Лінія статусу >>>
" Встановлення лінії статусу >>>
" 
" set statusline=%<[%n]\ %f\ %m%r%h%w\ %y\ %{&fileencoding}%=%b\ \ \ %c/%v\ %l/%L\ \ %P\ %a
"
"
" hp mini preference
" set statusline=%<%f%h%m%r\ %b\ %{&fileencoding}\ %l,%c%V\ %P
" inpsiron preference
" Depends on cdargs
"set statusline=%{CdargsCurrentDirectory()}\ %<%f%h%m%r%=\ %5b\ 0x%-5B\ %5.4l,%4.4c\ %P\ format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}"
" Set temporary to show full file name
set statusline=%{CdargsCurrentDirectory()}\ %<%f%h%m%r%=
" <<<
" Завжди показувати лінію статусу>>>
set laststatus=2
"<<<
"<<<
" Опція збереження ~ бекап файлів>>>
set backup
"<<<
" Backupdir>>>
set backupdir=/tmp,.,~/
"<<<
" Графічні опції>>>
" Це не працює під моєю ОС @see :help guioptions
"set guioptions-=t
" Видаляєм toolbar
set guioptions-=T
" Видаляєм іконку
"set guioptions-=i
" Видаляєм головне меню
"set guioptions-=m
" Видаляєм графіку з табів, тепер вони текстові
set guioptions-=e
"<<<
" blinking in place of beep>>>
set visualbell
"<<<
" Show line numbers>>>
set number  
"<<<
" Ignore case when searching >>>
set ignorecase
"<<<
" Highlight all matches>>>
set hlsearch 
"<<<
" Wordwrap - on>>>
set wrap 
"<<<
" Встановлюєм helplang до чого це тут не знаю>>>
set helplang=ru
"<<<
"MENU >>>
set wildmenu
set wcm=<Tab>
"<<<
" Fileencodings >>>
"set fileencodings=ucs-bom,utf-8,default,cp1251,latin1
set fileencodings=ucs-bom,utf-8,cp1251,koi8-r,cp866,latin1,utf-16
"<<<
">>>
set fileformats=unix,dos,mac
"<<<
" Настраиваем переключение раскладок клавиатуры по <C-^> >>>
set keymap=russian-jcukenwin
"set keymap=ukrainian-jcuken

" Раскладка по умолчанию - английская
set iminsert=0
set imsearch=0
"<<<
" Вертикальний diffsplit >>>
set diffopt+=vertical 
"<<<
" Підсвічуєм лінію з курсором>>>
set cursorline
"<<<
""<<<
" Підключаєм filetype and indenting>>>
filetype indent on
filetype plugin on
filetype on
"<<<
" Підключаєм синтаксис >>>
syntax on
"<<<
" MAP>>>
" Mapping F1 - F12>>>
"nnoremap <F5> :make<CR>
map <F5> :cnext<CR>
map <F6> :cprev<CR>
map <S-F5> :cnfile<CR>
map <S-F6> :cpfile<CR>
map <F3> :Hexplore<CR>
map <F2> :if expand("%") == ""<Bar>browse confirm w<Bar>else<Bar>confirm w<Bar>endif<CR>
imap <F2> <ESC><F2>
imap <F3> <ESC><F3>
"<<<
" Folding maps>>>
map <S-Left> zc
imap <S-Left> <ESC>zc
map <S-Right> zo
imap <S-Right> <ESC>zo
"<<<
" Зручні mappings для роботи з split-ами>>>
nmap <C-down>   <c-w>w
nmap <C-up>     <c-w>W
nmap <C-left>   <c-w>h
nmap <C-right>  <c-w>l
map + <C-w>+
map _ <C-w>-
"<<<
" OTHER MAPPINGS>>>
let mapleader="," 
imap <C-L> <ESC>:if &keymap == 'russian-jcukenwin' <BAR>set keymap=ukrainian-jcuken<BAR>else<BAR>set keymap=russian-jcukenwin<BAR>endif<CR>a
map <Leader>q :q<CR>
map <Leader>l :let &list=!&list<CR>
map <Leader>Q :q!<CR>
">>> Moving lines
"nnoremap <C-S-DOWN> mz:m+<CR>`z==
"nnoremap <C-S-UP> mz:m-2<CR>`z==
"inoremap <C-S-DOWN> <Esc>:m+<CR>==gi
"inoremap <C-S-UP> <Esc>:m-2<CR>==gi
"vnoremap <C-S-DOWN> :m'>+<CR>gv=`<my`>mzgv`yo`z
"vnoremap <C-S-UP> :m'<-2<CR>gv=`>my`<mzgv`yo`z
"<<<
" <<<
" <<<
" SCRIPTS MAPPINGS AND SETTINGS>>>
" DirDiff http://www.vim.org/scripts/script.php?script_id=102 >>>
let g:DirDiffExcludes='.svn,*.swp,*~,.git'
"<<<
" ToggleWords http://www.vim.org/scripts/script.php?script_id=1676 >>>
map <Leader>t :ToggleWord<CR>
let g:toggle_words_dict = {
    \ 'sh' : [
        \ ['-eq', '-ne'],
        \ ['-n', '-z'],
        \ ['=', '!='],
        \ ['-gt', '-lt'],
        \ ['-ge', '-le']
    \ ],
    \ 'lisp' : [
        \ ['t', 'nil'],
        \ ['if', 'unless']
    \ ]}
"<<<
" VimWiki http://www.vim.org/scripts/script.php?script_id=2226 >>>
let g:vimwiki_list = [{'path': '~/notes/'}]
let g:vimwiki_folding = 1
let g:vimwiki_browsers = ['firefox', 'opera', 'google-chrome']
"<<<
"<<<
" vim:fdm=marker:fmr=>>>,<<<
