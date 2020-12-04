runtime macros/matchit.vim
set nocompatible

if has('termguicolors')
  set termguicolors
endif

" Uncomment this to check highlight groups
" Place cursor over word and hit shift-c

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

set autoindent
set colorcolumn=100
set belloff=all
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set noswapfile
set number
set relativenumber                    
set hlsearch
set regexpengine=1

set rtp+=/usr/local/opt/fzf

"Backspace through anything in insert mode
set backspace=indent,eol,start

" Change cursor to vertical bar on insert
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

"run this command to see availible colors :so $VIMRUNTIME/syntax/hitest.vim
set ttimeout ttimeoutlen=30
set laststatus=2
set statusline=
set statusline+=%#CursorLine#
set statusline+=\ ‹‹
set statusline+=\ %f
set statusline+=\ ››\ %*
set statusline+=%#CursorLine#
set statusline+=\ %*
set statusline+=%#DiffChange#
set statusline+=%(\ \ %M%R\ \ %)
set statusline+=%#CursorLine#
set statusline+=%=
set statusline+=\ \ %*
set statusline+=\ ::
set statusline+=\ %{FugitiveStatusline()}
set statusline+=\ ::
set statusline+=\ %*

"FZF
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview({'options': ['--layout=reverse', '--color', 'hl:10,hl+:10']}), <bang>0)

"Netrw
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
set wildmode=list:longest,full

"Emmet shortcuts
let g:user_emmet_mode = 'n'
let g:user_emmet_leader_key = ','

"Add erb tags to surround plugin
let g:surround_{char2nr('=')} = "<%= \r %>"    " ctrl + s + =
let g:surround_{char2nr('-')} = "<% \r %>"     " ctrl + s + -

"Key Commands
nnoremap <space>e :Explore<CR>
nnoremap <space>t :tabn<CR>
nnoremap <space>r :tabp<CR>
nnoremap <space>h <C-W><C-H>
nnoremap <space>l <C-W><C-L>
nnoremap <space>j <C-W><C-J>
nnoremap <space>k <C-W><C-K>

"Vim Commands
nnoremap ,ws :write <bar> suspend<CR>
nnoremap ,trim :%s/\s\+$//<CR>
vnoremap ,c :%y+<CR>
vnoremap ,ra "hy:%s/<C-r>h//g<left><left>

"Vim-Fugitive mappings
nnoremap <space>g :Git<space>

"Vim-FZF mappings
nnoremap <space>f :Files<CR>
nnoremap <space>? :GFiles?<CR>
nnoremap <space>s :Rg<CR>

"Vim-Rails mappings
nnoremap ,em :Emodel<space>
nnoremap ,ev :Eview<space>
nnoremap ,ec :Econtroller<space>
nnoremap ,es :Espec<space>

nnoremap ,vm :Vmodel<space>
nnoremap ,vv :Vview<space>
nnoremap ,vc :Vcontroller<space>
nnoremap ,vs :Vspec<space>

nnoremap ,sm :Smodel<space>
nnoremap ,sv :Sview<space>
nnoremap ,sc :Scontroller<space>
nnoremap ,ss :Sspec<space>

"Code Snippets
nnoremap ,b :-1read $HOME/.vim/.ruby_snippets/.pry.rb<CR>
