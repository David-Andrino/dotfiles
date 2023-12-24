local configs = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = { "c", "cpp", "make", "cmake", "rust", "python", "lua" },
    highlight = { enable = true },
    indent = { enable = true },
})
