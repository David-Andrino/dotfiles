local NORMAL_KEYMAP = {

}

local INSERT_KEYMAP = {
    {"jk", "<Esc>"},
}

local VISUAL_KEYMAP = {

}

local BASE_WHICH_KEYMAP = {
    { "<leader>q", "<cmd>q<cr>",  desc="Close buffer", icon="󰅗" },
    { "<leader>Q", "<cmd>qa<cr>", desc="Close all",    icon={ icon="󰅗", color="red" } }
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
