"set nu rnu wrap hls ic scs ss=1 ai tabstop=8 softtabstop=4 shiftwidth=4 
set nu rnu background=dark nowrap tabstop=8 softtabstop=4 shiftwidth=4 hls ic scs ss=1 ai wrap
set cindent cinkeys-=0#

"PLUGINS
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/vim-easy-align'
Plug 'sainnhe/gruvbox-material'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/AutoComplPop'
Plug 'tpope/vim-repeat'
call plug#end()

" filetype indent off
filetype plugin indent off

"For vim 8
 if (has("termguicolors"))
  set termguicolors
 endif

set timeoutlen=1000

" Theme
syntax enable
let g:gruvbox_material_background             = 'hard'
let g:gruvbox_material_foreground             = 'mix'
let g:gruvbox_material_transparent_background = 2
let g:gruvbox_material_enable_bold            = 1
let g:gruvbox_material_better_performance     = 1
colorscheme gruvbox-material

" Mapping Keys
map      z           :w<cr>
map      qq          :q!<cr>
map      mm          :se mouse=a<cr>
map      nm          :se mouse=<cr>
map      <F2>        :wa!<cr>
map!     <F2>        <esc>:wa!<cr>a
map      <F5>        :qa!<cr>
map      <F7>        :vsp<cr>
nnoremap <leader>nu  :set nornu<cr>:set  nu<cr>
nnoremap <leader>no  :set nornu<cr>:set  nu<cr>:set nonu<cr>
nnoremap <leader>=   :set wrap<cr>
nnoremap <leader>==  :set nowrap<cr>
nnoremap <leader>rnu :set nonu <cr>:set rnu<cr>

" EasyAlign in visual mode
xmap ga  <Plug>(EasyAlign)
xmap lga <Plug>(LiveEasyAlign)
" EasyAlign for a motion/text object
nmap ga  <Plug>(EasyAlign)
nmap lga <Plug>(LiveEasyAlign)

" Commentary
autocmd FileType php setlocal commentstring=/\/\ %s
" autocmd FileType perl setlocal commentstring=/# %s
" autocmd FileType tpl setlocal commentstring=<\!-- %s --\!>
" autocmd FileType tpl setlocal commentstring=<!--%s--!>
" autocmd FileType text setlocal commentstring=/# %s
autocmd FileType sql setlocal commentstring=--%s

" Numberwidth
if version >= 700
    set numberwidth=4
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
