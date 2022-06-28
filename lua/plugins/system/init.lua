return function()
    local  main = {
        'tyru/open-browser.vim',
        'famiu/nvim-reload',
        { "beauwilliams/focus.nvim", config = function() require("focus").setup() end },
        --require('plugins.system.'),
        require('plugins.system.neorg'),
        require('plugins.system.hop'),
        --require('plugins.system.tabout'),
        require('plugins.system.comment'),
        require('plugins.system.treesiter'),
        require('plugins.system.wilder'),
        require('lsp')
    }
    local tele = require('plugins.system.telescope')()
    for _, v in pairs(tele) do
        table.insert(main, v)
    end
    return main
end