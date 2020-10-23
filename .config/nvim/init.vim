" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath

" Temp fix for netrw slow loading. Might not need once version 0.5 is released
let g:loaded_clipboard_provider = 1

runtime macros/matchit.vim

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

set colorcolumn=100
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nowrap
set noswapfile
set number
set relativenumber                    
set mouse+=a

"run this command to see availible colors :so $VIMRUNTIME/syntax/hitest.vim
" set ttimeout ttimeoutlen=30
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

" Ale settings
let g:ale_sign_error = '❱❱'
" let g:ale_sign_warning = '.'
let g:ale_enabled = 0
let g:ale_sign_column_always = 1
let g:ale_linters_explicit = 1

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'ruby': ['rubocop'],
\}

let g:ale_fixers = {
\   'ruby': ['rubocop']
\}

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
nnoremap ,gs :Git<CR>

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

" au TextYankPost * silent lua vim.highlight.on_yank()
