return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local actions = require("telescope.actions")
            require("telescope").setup({
                defaults = {
                    mappings = {
                        i = {
                            ["<esc>"] = actions.close,
                        },
                    },
                },
            })
        end,
        keys = {
            { "<leader>ff", "<Cmd>Telescope find_files<CR>", desc = "Find files" },
            { "<leader>fg", "<Cmd>Telescope live_grep<CR>", desc = "Live grep" },
            { "<leader>fb", "<Cmd>Telescope buffers<CR>", desc = "Find buffers" },
            { "<leader>fq", "<Cmd>Telescope quickfix<CR>", desc = "Find quickfix" },
            { "<leader>fi", "<Cmd>Telescope lsp_implementations<CR>", desc = "Find LSP implementations" },
            { "<leader>fd", "<Cmd>Telescope lsp_definitions<CR>", desc = "Find LSP definitions" },
            { "<leader>fs", "<Cmd>Telescope lsp_document_symbols<CR>", desc = "Find document symbols" },
            { "<leader>fS", "<Cmd>Telescope lsp_dynamic_workspace_symbols<CR>", desc = "Find workspace symbols" },
            { "<leader>fG", "<Cmd>Telescope git_files<CR>", desc = "Find git files" },
            { "<leader>ft", "<Cmd>Telescope treesitter<CR>", desc = "Find treesitter sybols" },
        },
    },

}
