return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").install({
            "c", "cpp", "lua", "python", "rust", "vimdoc", "luadoc", "vim", "markdown"
        })

        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "c", "cpp", "lua", "python", "rust", "vimdoc", "luadoc", "vim", "markdown" },
            callback = function()
                vim.treesitter.start()
                vim.opt_local.indentexpr = "v:lua.vim.treesitter.indentexpr()"
            end,
        })
    end
}
