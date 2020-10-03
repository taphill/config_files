set nocompatible

if has('termguicolors')
  set termguicolors
endif

set background=dark
colorscheme nord 

syntax on
filetype plugin on

"Statusline stuff
"run this command to see availible colors :so $VIMRUNTIME/syntax/hitest.vim
set laststatus=2
set ttimeout ttimeoutlen=30
set noshowmode

set statusline=
set statusline+=%#CursorLine#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffAdd#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#HealthSuccess#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=%#CursorLine#\ %n\                                 " buffer number
set statusline+=%#CursorLine#                                      " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#WarningMsg#                                  " colour
set statusline+=%R                                             " readonly flag
set statusline+=%M                                             " modified file flag
set statusline+=%#Cursor#                                      " colour
set statusline+=%#CursorLine#                                  " colour
set statusline+=\ %t\                                          " short file name
set statusline+=%=                                             " right align
set statusline+=%#CursorLine#                                  " colour
set statusline+=\ %Y\                                          " file type
set statusline+=%#yamlKey#                                       " colour
set statusline+=\ %3l:%-2c\                                    " line + column
set statusline+=%#Title#                                      " colour
set statusline+=\ %3p%%\                                       " percentage

"Backspace through anything in insert mode
set backspace=indent,eol,start

set colorcolumn=100

set belloff=all
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set noswapfile

set number                    

"Netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 20

"Always show at least one line above/below the cursor
if !&scrolloff
  set scrolloff=12
endif
if !&sidescrolloff
  set sidescrolloff=5
endif

"Search down into subfolders
"Provides tab-completion for all file-related tasks
set path+=**

"Display all matching files when we tab complete
set wildmenu

"Emmet shortcuts
let g:user_emmet_mode = 'n'
let g:user_emmet_leader_key = ','

"Add erb tags to surround plugin
let g:surround_{char2nr('=')} = "<%= \r %>"
let g:surround_{char2nr('-')} = "<% \r %>"

"Key Commands
nnoremap <C-t> :tabn<CR>
nnoremap <S-H> <C-W><C-H>
nnoremap <S-L> <C-W><C-L>

"Vim Commands
nnoremap ,trim :%s/\s\+$//<CR>
nnoremap ,s :set hlsearch<CR>
nnoremap ,so :set nohlsearch<CR>

vnoremap ,c :%y+<CR>
vnoremap ,r "hy:%s/<C-r>h//g<left><left>

"Code Snippets
nnoremap ,b :-1read $HOME/.vim/.ruby_snippets/.pry.rb<CR>

nnoremap ,init :-1read $HOME/.vim/.ruby_snippets/.def_initialize.rb<CR>jjjddkkk$i
nnoremap ,min :-1read $HOME/.vim/.ruby_snippets/.minitest.rb<CR>jjj 

nnoremap ,atr :-1read $HOME/.vim/.ruby_snippets/.attr_reader.rb<CR>ea<space>
nnoremap ,atw :-1read $HOME/.vim/.ruby_snippets/.attr_writer.rb<CR>ea<space>
nnoremap ,ata :-1read $HOME/.vim/.ruby_snippets/.attr_access.rb<CR>ea<space>

nnoremap ,ain :-1read $HOME/.vim/.ruby_snippets/.assert_ins.rb<CR>jddkea<space>
nnoremap ,aic :-1read $HOME/.vim/.ruby_snippets/.assert_inc.rb<CR>jddkea<space>
nnoremap ,ae :-1read $HOME/.vim/.ruby_snippets/.assert_eq.rb<CR>jddkea<space>
nnoremap ,an :-1read $HOME/.vim/.ruby_snippets/.assert_nil.rb<CR>jddkea<space>

nnoremap ,rake :-1read $HOME/.vim/.ruby_snippets/.rakefile.rb<CR> 

nnoremap ,html :-1read $HOME/.vim/.html_snippets/.doctype.html<CR>

" Get persisted bit from pry session
" nnoremap <leader>p :.! cat /tmp/pry-output.json \| jq .<CR>
