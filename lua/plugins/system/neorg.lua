return {
    "nvim-neorg/neorg",
    requires = {"nvim-lua/plenary.nvim"},
    config = function()
        require('neorg').setup {
            -- check out setup part...
        }
    end,
}