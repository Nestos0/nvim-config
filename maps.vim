let mapleader="\<space>"
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
map u <Up>
map j <undo>
map n <Left>
map i <Right>
map e <Down>
map w <Insert>
map gu gk
map ge gj
map <S-w> <C-Insert>
map k <S-Right>
map <S-k> <C-Right>
map <C-f> <Pageup>
map <C-b> <Pagedown>
imap <C-u> <Up>
imap <C-e> <Down>
imap <C-i> <Right>
imap <C-n> <Left>
map <S-n> <Home>
map <S-i> <End>
map l ?<CR>
map h /<CR>
nnoremap <C-n> <C-w><left>
nnoremap <C-i> <C-w><right>
nnoremap <C-u> <C-w><up>
nnoremap <C-e> <C-w><down>
nnoremap <A-m> :NvimTreeToggle<CR>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>
set mouse=a
let g:copilot_no_tab_map = v:true
set nobackup
set nowritebackup
inoremap <C-s> <ESC> :w<CR>
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
func SkipPair()
 	 if getline('.')[col('.') - 1] == '>' || getline('.')[col('.') - 1] == ')' || getline('.')[col('.') - 1    ] == ']' || getline('.')[col('.') - 1] == '"' || getline('.')[col('.') - 1] == "'" || getline('.')[col('.'    ) - 1] == '}'
          return "\<ESC>la"
      else
          return "\<ESC>A"
      endif
  endfunc
  :inoremap ,, <c-r>=SkipPair()<CR>
au Filetype FILETYPE let b:AutoPairs = {"(": ")"}
au FileType php      let b:AutoPairs = AutoPairsDefine({'<?' : '?>', '<?php': '?>'})

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
    \ coc#pum#visible() ? coc#pum#next(1):
    \ exists('b:_copilot.suggestions') ? copilot#Accept("\<CR>") :
    \ CheckBackSpace() ? "\<Tab>" :
    \ coc#refresh()
inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-Tab> coc#pum#visible() ? coc#pum#prev(1) : "\<C-,>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                         \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

inoremap <silent><expr> <C-p> coc#pum#visible() ? coc#pum#prev(0) : "\<C-p>"

imap <silent><script><expr> <C-y> copilot#Accept("\<CR>")

nnoremap <unique> <A-e> <cmd>call smoothie#forwards() <CR>
vnoremap <unique> <A-e> <cmd>call smoothie#forwards() <CR>
nnoremap <unique> <A-u> <cmd>call smoothie#upwards() <CR>
vnoremap <unique> <A-u> <cmd>call smoothie#upwards() <CR>

nnoremap <unique> <A-V> <cmd>vsplit <CR>
nnoremap <unique> <A-B> <cmd>split <CR>
