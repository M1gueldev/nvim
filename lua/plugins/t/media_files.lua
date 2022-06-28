local req = {
    'nvim-lua/popup.nvim',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
}
return {
    'nvim-telescope/telescope-media-files.nvim',
    requires = req,
    config = function()
        local t = require'telescope'
        t.setup {
            extensions = {
                media_files = {
                    -- filetypes whitelist
                    -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
                    filetypes = {"png", "webp", "jpg", "jpeg"},
                    find_cmd = "rg" -- find command (defaults to `fd`)
                }
            },
        }
        t.load_extension('fzf')
    end
}