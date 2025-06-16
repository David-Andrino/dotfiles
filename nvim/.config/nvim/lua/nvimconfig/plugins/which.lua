return {
    "folke/which-key.nvim",
	requires = {
        {"nvim-tree/nvim-web-devicons"},
        {'echasnovski/mini.nvim'},
	},
    opts = {
        -- replace = { {"<leader>", "SPC"} },
        plugins = {
            marks = true,
            registers = true,
            spelling = {
              enabled = true,
              suggestions = 20,
            },
            presets = {
              operators = true,
              motions = true,
              text_objects = true,
              windows = true,
              nav = true,
              z = true,
              g = true,
            },
        }
    },
}
