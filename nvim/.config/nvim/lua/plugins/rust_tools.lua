return {
    {
        "simrat39/rust-tools.nvim",
        opts = {
            tools = {
                runnables = {
                    use_telescope = true,
                },
                inlay_hints = {
                    auto = true,
                    show_parameter_hints = false,
                    parameter_hints_prefix = "",
                    other_hints_prefix = "",
                },
            },

            server = {
                settings = {
                    ["rust-analyzer"] = {
                        checkOnSave = {
                            command = "clippy",
                        },
                    },
                },
            },
        },
        config = function (_, opts)
            require('rust-tools').setup(opts)
        end
    },
    { "saecki/crates.nvim" }
}
