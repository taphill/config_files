set nocompatible

colorscheme delek

syntax on
filetype plugin on

"lightline stuff
set laststatus=2
set ttimeout ttimeoutlen=30
set noshowmode

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

"Set key commands
nnoremap <S-H> <C-W><C-H>
nnoremap <S-L> <C-W><C-L>

"Snippets
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

nnoremap ,trim :%s/\s\+$//<CR>
nnoremap ,s :set hlsearch<CR>
nnoremap ,so :set nohlsearch<CR>

" Get persisted bit from pry session
" nnoremap <leader>p :.! cat /tmp/pry-output.json \| jq .<CR>
