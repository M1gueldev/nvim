return function()
    local main = {
        'wbthomason/packer.nvim',
    }
    local ui = require('plugins.UI')
    local system = require('plugins.system')()

    for _, v in pairs(ui) do
        table.insert(main, v)
    end

    for _, v in pairs(system) do
        table.insert(main, v)
    end

    return main
end