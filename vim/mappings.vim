let mapleader = ' '
let maplocalleader = '\'
" System Clipboard"
noremap <leader>y "+y
noremap <leader>p "+p
" better up/down
nnoremap j gj
nnoremap k gk
" better Yank Delete Change
nnoremap Y y$
nnoremap D d$
nnoremap C c$
" Spell Check toggle F11
nnoremap <silent> <F11> :set spell!<cr>
inoremap <silent> <F11> <C-O>:set spell!<cr>
" F7 to display spelling corrections
nnoremap <F7> z=
nnoremap <C-F7> 1z=
" better HJKL
nnoremap H ^
nnoremap L $
nnoremap J <C-d>
nnoremap K <C-u>

" Packer

nnoremap <F12> <cmd>:PackerSync<cr>

" Chad tree
nnoremap <C-n> <cmd>:Neotree toggle <cr>
inoremap <C-n> <C-O>:Neotree toggle <cr>
vnoremap <C-n> <cmd>:Neotree toggle <cr>

" Bufferline"

nnoremap <silent> gt :BufferLinePick<CR>
nnoremap <silent><TAB> :BufferLineCycleNext<CR>
nnoremap <silent><S-TAB> :BufferLineCyclePrev<CR>
nnoremap <silent><F4> :bdelete<CR>

" These commands will move the current buffer backwards or forwards in the bufferline
nnoremap <silent><M-TAB> :BufferLineMoveNext<CR>
nnoremap <silent><M-S-TAB> :BufferLineMovePrev<CR>


nnoremap <silent><M-1> <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><M-2> <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><M-3> <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><M-4> <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><M-5> <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><M-6> <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><M-7> <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><M-8> <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><M-9> <Cmd>BufferLineGoToBuffer 9<CR>

