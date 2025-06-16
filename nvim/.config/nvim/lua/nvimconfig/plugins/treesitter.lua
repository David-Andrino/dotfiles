return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "c", "cpp", "lua", "python", "rust", "vimdoc", "luadoc", "vim", "markdown" },
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}

