return {
    'nvim-telescope/telescope-packer.nvim',
    requires = {
        'nvim-telescope/telescope.nvim',
        'wbthomason/packer.nvim',
        'nvim-telescope/telescope-file-browser.nvim'
    },
    config = function()
        require("telescope").load_extension("packer")
    end
}