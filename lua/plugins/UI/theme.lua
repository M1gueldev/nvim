--return {
--    'folke/tokyonight.nvim',
--    config = function()
--        vim.g.tokyonight_style = "night"
--        vim.g.tokyonight_italic_functions = true
--        vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
--        vim.cmd('colorscheme tokyonight')
--    end
--}
--
return {
    "EdenEast/nightfox.nvim",
    as = 'theme',
    config = function()
       -- local palette = require('nightfox.palette').load('nightfox')
       -- local Color = require("nightfox.lib.color")
       -- require("nightfox").setup()
        vim.cmd("colorscheme nightfox")
    end
}