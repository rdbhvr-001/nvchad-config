require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
-- My Custom Mappings 
--------------------------------------------------
-- KEYMAPS (concise)
--------------------------------------------------
local map = vim.keymap.set
-- Explorer
map("n", "<C-m>", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
-- Telescope
map("n", "<C-f>", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<C-g>", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help tags" })

-- LSP
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gr", vim.lsp.buf.references, { desc = "References" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover" })
map("n", "<F2>", vim.lsp.buf.rename, { desc = "Rename" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })

-- INSERT MODE: VS Code–like
map("i", "<C-s>", "<Esc>:w<CR>a", { desc = "Save (insert mode)" })
map("i", "<C-x>", "<Esc>:q<CR>", { desc = "Quit (insert mode)" })
map("i", "<C-S-s>", "<Esc>:wq<CR>", { desc = "Save & Quit (insert mode)" })
map("i", "<C-S-x>", "<Esc>:q!<CR>", { desc = "Quit no save (insert mode)" })

--------------------------------------------------
-- OPTIONAL TWEAKS / SANE DEFAULTS
--------------------------------------------------
vim.o.updatetime = 250
vim.o.lazyredraw = true
