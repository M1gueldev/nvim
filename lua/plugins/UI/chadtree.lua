return {
    'ms-jpq/chadtree',
    branch = 'chad',
    run = 'python3 -m chadtree deps',
    config = function()
        vim.cmd([[source ~/.config/nvim/vim/chadtree.vim]])
    end
}