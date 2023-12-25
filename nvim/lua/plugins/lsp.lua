return {
    {
        "williamboman/mason.nvim",
        opts = {}
    }, {
        "williamboman/mason-lspconfig",
        opts = {
            ensure_installed = { "lua_ls" }
        },
    },
    {
        "neovim/nvim-lspconfig",
        keys = {
            { 'K', vim.lsp.buf.hover },
            { 'gd', vim.lsp.buf.definition },
            { '<leader>la', vim.lsp.buf.code_action, desc="Code actions" },
            { '<leader>lr', vim.lsp.buf.rename, desc="Document symbols" }
        },
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
        end
    }
}
