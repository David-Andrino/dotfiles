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
    },
    config = function()
        local wk = require("which-key")
        wk.register({
            q = "File explorer",
            y = "Copy selection to clipboard",
            Y = "Copy line to clipboard",
            d = "Delete without yanking",
            -- Telescope
            f = {
                name = "Find (Telescope)",
                f = "Find file",
                g = "Grep find",
                b = "Find buffer",
                q = "Find Quickfix",
                i = "Find implementations",
                d = "Find definitions",
                s = "Find symbols in file",
                S = "Find symbols in workspace",
                G = "Find git files",
                t = "Find in Treesitter"
            },
            -- Neotree
            b = {
                name = "Neotree",
                b = "Open sidebar",
                f = "Open filesystem",
                g = "Open Git Status",
                d = "Open Buffers",
                s = "Open Symbols",
                q = "Close sidebar"
            },
        }, { prefix = "<leader>"})
    end
}
