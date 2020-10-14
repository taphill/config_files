runtime macros/matchit.vim
set nocompatible

if has('termguicolors')
  set termguicolors
endif

" Uncomment this to check highlight groups
" Place cursor over word ang hit shift-c

" nnoremap <S-c> :call <SID>SynStack()<CR>
" function! <SID>SynStack()
"   if !exists("*synstack")
"     return
"   endif
"   echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
" endfunc

set background=dark
colorscheme gruvbox 

syntax on
filetype plugin on

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
set relativenumber                    

"Statusline stuff
"run this command to see availible colors :so $VIMRUNTIME/syntax/hitest.vim
set laststatus=2
set ttimeout ttimeoutlen=30
set noshowmode
set statusline=
set statusline+=%#CursorLine#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffAdd#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#GruvboxOrangeSign#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=%#CursorLine#\ %n\                             " buffer number
set statusline+=%#CursorLine#                                  " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#ErrorMsg#                                    " colour
set statusline+=%R                                             " readonly flag
set statusline+=%M                                             " modified file flag
set statusline+=%#Cursor#                                      " colour
set statusline+=%#CursorLine#                                  " colour
set statusline+=%f
set statusline+=%=                                             " right align
set statusline+=%#CursorLine#                                  " colour
set statusline+=\ %Y\                                          " file type
set statusline+=%#Title#                                       " colour
set statusline+=\ %3l:%-2c\                                    " line + column
set statusline+=%#yamlKey#                                     " colour
set statusline+=\ %3p%%\                                       " percentage

"Netrw
let g:netrw_altv = 1
let g:netrw_liststyle = 3
let g:netrw_winsize = 20
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'                " Hide dot files

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
let g:surround_{char2nr('=')} = "<%= \r %>"    " ctrl + s + =
let g:surround_{char2nr('-')} = "<% \r %>"     " ctrl + s + -

"Key Commands
nnoremap <space>t :tabn<CR>
nnoremap <space>r :tabp<CR>
nnoremap <space>h <C-W><C-H>
nnoremap <space>l <C-W><C-L>
nnoremap <space>j <C-W><C-J>
nnoremap <space>k <C-W><C-K>

"Vim Commands
nnoremap ,ws :write <bar> suspend<CR>
nnoremap ,trim :%s/\s\+$//<CR>
vnoremap ,r "hy:%s/<C-r>h//g<left><left>

"Vim-Rails mappings
nnoremap ,em :Emodel<space>
nnoremap ,ev :Eview<space>
nnoremap ,ec :Econtroller<space>
nnoremap ,es :Espec<space>
nnoremap ,em :Emodel<space>

nnoremap ,vv :Vview<space>
nnoremap ,vc :Vcontroller<space>
nnoremap ,vs :Vspec<space>
nnoremap ,vm :Vmodel<space>

nnoremap ,sv :Sview<space>
nnoremap ,sc :Scontroller<space>
nnoremap ,ss :Sspec<space>
nnoremap ,sm :Smodel<space>

"Code Snippets
nnoremap ,b :-1read $HOME/.vim/.ruby_snippets/.pry.rb<CR>

nnoremap <leader>init :-1read $HOME/.vim/.ruby_snippets/.def_initialize.rb<CR>jjjddkkk$i
nnoremap <leader>min :-1read $HOME/.vim/.ruby_snippets/.minitest.rb<CR>jjj 

nnoremap <leader>atr :-1read $HOME/.vim/.ruby_snippets/.attr_reader.rb<CR>ea<space>
nnoremap <leader>atw :-1read $HOME/.vim/.ruby_snippets/.attr_writer.rb<CR>ea<space>
nnoremap <leader>ata :-1read $HOME/.vim/.ruby_snippets/.attr_access.rb<CR>ea<space>

nnoremap <leader>ain :-1read $HOME/.vim/.ruby_snippets/.assert_ins.rb<CR>jddkea<space>
nnoremap <leader>aic :-1read $HOME/.vim/.ruby_snippets/.assert_inc.rb<CR>jddkea<space>
nnoremap <leader>ae :-1read $HOME/.vim/.ruby_snippets/.assert_eq.rb<CR>jddkea<space>
nnoremap <leader>an :-1read $HOME/.vim/.ruby_snippets/.assert_nil.rb<CR>jddkea<space>

nnoremap <leader>rake :-1read $HOME/.vim/.ruby_snippets/.rakefile.rb<CR> 
