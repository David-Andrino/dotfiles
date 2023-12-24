return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    opts = {
        ensure_installed = { "c", "cpp", "make", "cmake", "rust", "python", "lua" },
        highlight = { enable = true },
        indent = { enable = true },
    }
}
