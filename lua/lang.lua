return function()
    require("nvim-lsp-installer").setup {
        automatic_installation = true
    }
    local lspc = require("lspconfig")

    lspc.sumneko_lua.setup {}
    lspc.rome.setup {}
    lspc.ltex.setup {}
    lspc.lemminx.setup {}
    lspc.zk.setup {}

    print('LSP Ready')
end