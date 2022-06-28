return {
    'nvim-telescope/telescope-project.nvim',
    requires = {
        "nvim-telescope/telescope-file-browser.nvim",
        'nvim-telescope/telescope.nvim',
    },
    config = function()
        require'telescope'.load_extension('project')
    end
}