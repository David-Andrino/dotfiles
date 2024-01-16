return {
    {
        "williamboman/mason.nvim",
        opts = {}
    }, {
    "williamboman/mason-lspconfig",
    opts = {
        ensure_installed = { "lua_ls" },
    },
},
    {
        "neovim/nvim-lspconfig",
        keys = {
            { 'K',          vim.lsp.buf.hover },
            { 'gd',         vim.lsp.buf.definition },
            { 'gD',         vim.lsp.buf.declaration },
            { '<leader>la', vim.lsp.buf.code_action, desc = "Code actions" },
            { '<leader>lr', vim.lsp.buf.rename,      desc = "Document symbols" },
            { "<M-=>",      vim.lsp.buf.format,      desc = "Format buffer" },
            { "<leader>lf", vim.lsp.buf.format,      desc = "Format buffer" },
        },
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            vim.diagnostic.config({ update_in_insert = true })
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.rust_analyzer.setup({
                capabilities = capabilities,
            })
        end
    }
}
