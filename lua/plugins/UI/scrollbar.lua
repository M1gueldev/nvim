return {
    "petertriho/nvim-scrollbar",
    after = 'theme',
    requires = {
        {'kevinhwang91/nvim-hlslens', config = function()
            local kopts = {noremap = true, silent = true}

            vim.api.nvim_set_keymap('n', 'n',
                    [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]],
                    kopts)
            vim.api.nvim_set_keymap('n', 'N',
                    [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]],
                    kopts)
            vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
            vim.api.nvim_set_keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
            vim.api.nvim_set_keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
            vim.api.nvim_set_keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)

            vim.api.nvim_set_keymap('n', '<Leader>l', ':noh<CR>', kopts)
        end},
    },
     config = function()
         local colors = require("nightfox.lib.color")
         require("scrollbar").setup({
             handle = {
                 color = colors.bg_highlight,
             },
             marks = {
                 Search = { color = colors.orange },
                 Error = { color = colors.error },
                 Warn = { color = colors.warning },
                 Info = { color = colors.info },
                 Hint = { color = colors.hint },
                 Misc = { color = colors.purple },
             }
         })
         require("scrollbar.handlers.search").setup()
     end
}