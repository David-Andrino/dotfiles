return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {
        plugins = {
            spelling = true,
            operators = false,
            motions = false,
        },
        key_labels = { ["<leader>"] = "SPC" },
        defaults = {
            ["<leader>f"] = { name = "+ Find (telescope)" },
            ["<leader>b"] = { name = "+ Sidebar (Neotree)" },
            ["<leader>l"] = { name = "+ LSP" },
            ["<leader>d"] = "Delete without yanking",
            ["<leader>y"] = "Yank to clipboard",
            ["<leader>Y"] = "Yank line to clipboard",
            ["<leader>q"] = "File explorer"
        }
    },
    config = function(_, opts)
        local wk = require("which-key")
        wk.setup(opts)
        wk.register(opts.defaults)
    end
}
