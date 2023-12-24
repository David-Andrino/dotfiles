return { 
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
        { "<leader>ff", "<Cmd>Telescope find_files<CR>", desc = "" }, 
        { "<leader>fg", "<Cmd>Telescope live_grep<CR>", desc = "" }, 
        { "<leader>fb", "<Cmd>Telescope buffers<CR>", desc = "" }, 
        { "<leader>fq", "<Cmd>Telescope quickfix<CR>", desc = "" }, 
        { "<leader>fi", "<Cmd>Telescope lsp_implementations<CR>", desc = "" }, 
        { "<leader>fd", "<Cmd>Telescope lsp_definitions<CR>", desc = "" }, 
        { "<leader>fs", "<Cmd>Telescope lsp_document_symbols<CR>", desc = "" }, 
        { "<leader>fS", "<Cmd>Telescope lsp_dynamic_workspace_symbols<CR>", desc = "" }, 
        { "<leader>fG", "<Cmd>Telescope git_files<CR>", desc = "" }, 
        { "<leader>ft", "<Cmd>Telescope treesitter<CR>", desc = "" }, 
    },
}
