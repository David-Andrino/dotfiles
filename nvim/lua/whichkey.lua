local wk = require("which-key")

wk.register({
    q = "File explorer",
    y = "Copy selection to clipboard",
    Y = "Copy line to clipboard",
    d = "Delete without yanking",
    -- Telescope
    f = {
        name = "Telescope (Find)",
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
    }
}, { prefix = "<leader>"})
