return {
    "neovim/nvim-lspconfig",
    keys = {
        { 'K', vim.lsp.buf.hover },
        { 'gd', vim.lsp.buf.definition },
        { '<leader>la', vim.lsp.buf.code_action },
        { '<leader>lr', vim.lsp.buf.rename }
    },
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup()
    end
}
