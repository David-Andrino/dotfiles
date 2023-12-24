return {
    {
        "williamboman/mason.nvim",
        opts = {}
    }, {
        "williamboman/mason-lspconfig",
        opts = {
            ensure_installed = { "lua_ls" }
        }
    }
}
