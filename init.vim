source ~/.config/nvim/after/plugin/airline.rc.vim
runtime ./maps.vim
filetype plugin on
syntax on
set matchtime=1
set hidden
set ts=4
set shiftwidth=4
set expandtab
set autoindent
set number
set relativenumber
set cursorline
set pumblend=15
set pumheight=10
set clipboard+=unnamedplus
set cmdheight=1
if version >= 603
     set helplang=cn
     set encoding=utf-8
endif
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936
set fileencoding=utf-8
set updatetime=300
set shortmess+=c
set signcolumn=yes
let &t_TI = "\<Esc>[>4;2m"
let &t_TE = "\<Esc>[>4;m""
hi CocMenuSel ctermbg=237 guibg=#13354A

if exists("g:neovide")
    set linespace=0
    let g:neovide_scale_factor = 1.0
    let g:neovide_floating_blur_amount_x = 2.0
    let g:neovide_floating_blur_amount_y = 2.0
    let g:neovide_transparency = 0.8
    let g:neovide_scroll_animation_length = 0.2
    let g:neovide_hide_mouse_when_typing = v:true
    let g:neovide_underline_automatic_scaling = v:true
    let g:neovide_refresh_rate = 120
    let g:neovide_no_idle = v:true
endif

set clipboard+=unnamedplus

"lua require('nvim')
lua require('init')
lua require('core.options')
lua require('keymaps')
lua require('lsp.setup')

if executable('clipboard-provider')
  let g:clipboard = {
          \ 'name': 'myClipboard',
          \     'copy': {
          \         '+': 'clipboard-provider copy',
          \         '*': 'clipboard-provider copy',
          \     },
          \     'paste': {
          \         '+': 'clipboard-provider paste',
          \         '*': 'clipboard-provider paste',
          \     },
          \ }
endif

