local NORMAL_KEYMAP = {
    {"J", "mzJ`z"},
}

local INSERT_KEYMAP = {
    {"jk",      "<Esc>"},
    {"<C-H>",   "<Esc>ldbi"}, -- Delete previous word
    {"<C-Del>", "<Esc>ldei"}, -- Delete next word
}

local VISUAL_KEYMAP = {
    {"J", ":m '>+1<CR>gv=gv", desc="Move line up"},
    {"K", ":m '>-2<CR>gv=gv", desc="Move line down"},
}

local BASE_WHICH_KEYMAP = {
    { "<leader>q", "<cmd>q<cr>",
        desc="Close buffer",
        icon="󰅗"
    },
    { "<leader>Q", "<cmd>qa<cr>",
        desc="Close all",
        icon={ icon="󰅗", color="red" }
    },
    { "<leader>w", "<cmd>set wrap!<CR>",
        desc="Toggle line wrap",
        icon={ icon="󰖶", color="orange" }
    },
    { "<leader>n", ":set relativenumber!<CR>",
        desc="Toggle relative numbering"
    }
}

for i,m in ipairs(NORMAL_KEYMAP) do
   vim.keymap.set("n", m[1], m[2]) 
end
for i,m in ipairs(INSERT_KEYMAP) do
   vim.keymap.set("i", m[1], m[2]) 
end
for i,m in ipairs(VISUAL_KEYMAP) do
   vim.keymap.set("v", m[1], m[2]) 
end
require("which-key").add(BASE_WHICH_KEYMAP)
