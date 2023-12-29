return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        config = {
            auto_install = true,
        },
        highlight = { enable = true },
        indent = { enable = true },
    }
}
