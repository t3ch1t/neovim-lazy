return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd", "arduino_language_server", "gopls", "jsonls" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup ({})
            lspconfig.clangd.setup ({})
            lspconfig.gopls.setup ({})
            lspconfig.arduino_language_server.setup({})
            lspconfig.jsonls.setup ({})
        end
    }
}
