return {
    'ms-jpq/coq_nvim',
    branch = 'coq',
    requires = {
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig",
        {'ms-jpq/coq.artifacts', branch = 'artifacts'},
        {'ms-jpq/coq.thirdparty', branch = '3p'}
    },
    config = function()
        require("coq_3p") {
            {
                src = "repl",
                sh = "zsh",
                shell = { p = "perl", n = "node", },
                max_lines = 99,
                deadline = 500,
                unsafe = { "rm", "poweroff", "mv",  }
            },
            { src = "nvimlua", short_name = "nLUA", conf_only = true },
            { src = "vimtex", short_name = "vTEX" },
            { src = "bc", short_name = "MATH", precision = 6 },
            { src = "orgmode", short_name = "ORG" }
        }
        require('lang')()
    end,
    run = ":COQdeps",
    opt = false,
}
