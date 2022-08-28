" Basic Settings
se nu rnu ic ts=8 sw=4 sts=4
syntax on

" Plugins
call plug#begin('~/vimfiles/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdtree'
Plug 'vim-scripts/AutoComplPop'
Plug 'ryanoasis/vim-devicons'
Plug 'sainnhe/gruvbox-material'

call plug#end()

" Capex
if (has("termguicolors"))
    set termguicolors
endif
set encoding=UTF-8
set bg=dark

" Theme
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_foreground = 'mix'
let g:gruvbox_material_enable_bold = 1
let g:gruvbox_material_visual = 'blue background'
let g:gruvbox_material_ui_contrast = 'high'
colorscheme gruvbox-material

" Mappings
xmap     ga          <Plug>(EasyAlign)
nmap     ga          <Plug>(EasyAlign)
nmap     zz          :w<CR>
nmap     qq          :q!<CR>
" Toggle Num-Line
nnoremap <leader>nu  :set nornu<cr>:set nu<cr>
nnoremap <leader>no  :set nornu<cr>:set nu<cr>:set nonu<cr>
nnoremap <leader>rnu :set nonu<cr>:set  rnu<cr>
" Toggle NERDTree
nnoremap <leader>n   :NERDTreeFocus<CR>
nnoremap <C-n>       :NERDTree<CR>
nnoremap <C-t>       :NERDTreeToggle<CR>
nnoremap <C-f>       :NERDTreeFind<CR>
map      <leader>ff  :FZF<CR>
