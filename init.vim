" Load Nvim Configuration parameters"
source  ~/.config/nvim/vim/settings.vim
source  ~/.config/nvim/vim/mappings.vim
" Load Plugins and lua stuff"
lua require('')
" Load Vanillla Mappings"

let g:coq_settings = { 'auto_start': v:true }
let g:coq_settings = { 'display.pum.fast_close': v:false }

