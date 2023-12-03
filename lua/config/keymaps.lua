local mapkey = require("util.keymapper").mapkey
local myNext = require("util.function").MyNext
local myPrev = require("util.function").MyPrev

vim.api.nvim_set_keymap("n", "<Tab>", "<cmd>lua MyNext()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", "<cmd>lua MyPrev()<CR>", { noremap = true, silent = true })

-- Normal mode mappings
vim.api.nvim_set_keymap("n", "<A-j>", [[:m .+1<CR>==]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", [[:m .-2<CR>==]], { noremap = true, silent = true })

-- Insert mode mappings
vim.api.nvim_set_keymap("i", "<A-j>", [[<Esc>:m .+1<CR>==gi]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<A-k>", [[<Esc>:m .-2<CR>==gi]], { noremap = true, silent = true })

-- Visual mode mappings
vim.api.nvim_set_keymap("x", "<A-j>", [[:m '>+1<CR>gv=gv]], { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<A-k>", [[:m '<-2<CR>gv=gv]], { noremap = true, silent = true })

-- Vmap for maintaining Visual Mode after shifting to the left (<)
vim.api.nvim_set_keymap("x", "<", "<gv", { noremap = true, silent = true })

-- Vmap for maintaining Visual Mode after shifting to the right (>)
vim.api.nvim_set_keymap("x", ">", ">gv", { noremap = true, silent = true })

-- Save buffer
mapkey("<leader>w", "w!", "n")

-- Exit vim
mapkey("<leader>q", "q", "n")
mapkey("<leader>Q", "qa", "n")

-- Buffer Navigation
mapkey("<leader>bn", "bnext", "n") -- Next buffer
mapkey("<leader>bp", "bprevious", "n") -- Prev buffer
mapkey("<leader>bb", "e #", "n") -- Switch to Other Buffer
mapkey("<leader>`", "e #", "n") -- Switch to Other Buffer

-- Directory Navigatio}n
mapkey("<leader>m", "NvimTreeFocus", "n")
mapkey("<leader>e", "NvimTreeToggle", "n")

-- Pane and Window Navigation
mapkey("<C-h>", "<C-w>h", "n") -- Navigate Left
mapkey("<C-j>", "<C-w>j", "n") -- Navigate Down
mapkey("<C-k>", "<C-w>k", "n") -- Navigate Up
mapkey("<C-l>", "<C-w>l", "n") -- Navigate Right
mapkey("<C-h>", "wincmd h", "t") -- Navigate Left
mapkey("<C-j>", "wincmd j", "t") -- Navigate Down
mapkey("<C-k>", "wincmd k", "t") -- Navigate Up
mapkey("<C-l>", "wincmd l", "t") -- Navigate Right
mapkey("<C-h>", "TmuxNavigateLeft", "n") -- Navigate Left
mapkey("<C-j>", "TmuxNavigateDown", "n") -- Navigate Down
mapkey("<C-k>", "TmuxNavigateUp", "n") -- Navigate Up
mapkey("<C-l>", "TmuxNavigateRight", "n") -- Navigate Right

-- Window Management
mapkey("<leader>sv", "vsplit", "n") -- Split Vertically
mapkey("<leader>sh", "split", "n") -- Split Horizontally

-- Show Full File-Path
mapkey("<leader>pa", "echo expand('%:p')", "n") -- Show Full File Path

local api = vim.api

-- Zen Mode
api.nvim_set_keymap("n", "<leader>zn", ":TZNarrow<CR>", {})
api.nvim_set_keymap("v", "<leader>zn", ":'<,'>TZNarrow<CR>", {})
api.nvim_set_keymap("n", "<leader>sm", ":TZFocus<CR>", {})
api.nvim_set_keymap("n", "<leader>zm", ":TZMinimalist<CR>", {})
api.nvim_set_keymap("n", "<leader>za", ":TZAtaraxis<CR>", {})

-- Comments
api.nvim_set_keymap("n", "<leader>/", "gtc", { noremap = false })
api.nvim_set_keymap("v", "<leadre>/", "gtc", { noremap = false })
