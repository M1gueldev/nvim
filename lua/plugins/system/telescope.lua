return function()
    local d = require('plugins.t')
    local main = {
        {
            'nvim-telescope/telescope.nvim',
            requires = {
                'nvim-lua/plenary.nvim'
            },
            config = function()
                require("telescope").load_extension "packer"
            end
        }
    }
    for k,v in pairs(d) do main[k] = v end
    return main
end