require "nvchad.options"

-- add yours here!
--------------------------------------------------
-- BASIC EDITOR SETTINGS
--------------------------------------------------
local opt = vim.opt
opt.number = true
opt.relativenumber = false
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.termguicolors = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.signcolumn = "yes"
opt.cursorline = true
opt.wrap = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.linebreak = true
opt.breakindent = true
--------------------------------------------------
-- FILETYPE-SPECIFIC: MAKEFILES (use real tabs)
--------------------------------------------------
vim.api.nvim_create_autocmd("FileType", {
  pattern = "make",
  callback = function() vim.opt_local.expandtab = false end,
})

