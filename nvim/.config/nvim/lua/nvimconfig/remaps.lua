local telescope_builtin  = require('telescope.builtin')
local multicursor = require('multicursor-nvim')

local NORMAL_KEYMAP = {
    {"J", "mzJ`z"},
    { '<C-p>', telescope_builtin.find_files},

    -- Multicursor management
    {"<M-C-Up>",   function() multicursor.lineAddCursor(-1) end, desc="Add cursor above" },
    {"<M-C-k>",    function() multicursor.lineAddCursor(-1) end, desc="Add cursor above" },
    {"<M-C-Down>", function() multicursor.lineAddCursor(1)  end, desc="Add cursor below" },
    {"<M-C-j>",    function() multicursor.lineAddCursor(1)  end, desc="Add cursor below" },

}

local INSERT_KEYMAP = {
    {"jk",      "<Esc>"},
    {"<C-H>",   "<Esc>ldbi", desc="Delete previous word" },
    {"<C-Del>", "<Esc>ldei", desc="Delete next word" },
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
    },

    -- Telescope: Find files
    { '<leader>f', group = "Telescope (find)" },
    { '<leader>ff', telescope_builtin.find_files,
        desc = 'Find files' 
    },
    { '<leader>fg', telescope_builtin.live_grep,
        desc = 'Live grep' 
    },
    { '<leader>fG', telescope_builtin.git_files,
        desc = 'Find in Git' 
    },
    { '<leader>fb', telescope_builtin.buffers,
        desc = 'Find buffers' 
    },

    -- Multicursor
    { '<leader>a', multicursor.alignCursors,
        desc = 'Align cursors',
        icon = { icon = '󰘠', color = 'blue' }
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
