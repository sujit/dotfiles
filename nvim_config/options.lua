-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Disable LazyVim auto format
vim.g.autoformat = false
vim.opt.inccommand = "split"

local opt = vim.opt

opt.autowrite = true -- Enable auto write
opt.expandtab = true -- Use spaces instead of tabs
opt.ignorecase = true -- Ignore case
opt.list = true -- Show some invisible characters (tabs...
opt.mouse = "a" -- Enable mouse mode
opt.shiftround = true -- Round indent
opt.shiftwidth = 4 -- Size of an indent
opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = true -- Insert indents automatically
opt.spelllang = { "en" }
opt.tabstop = 4 -- Number of spaces tabs count for
opt.termguicolors = true -- True color support

if vim.fn.has("nvim-0.10") == 1 then
  opt.smoothscroll = true
end

-- Folding
vim.opt.foldlevel = 99

-- Fix markdown indentation settings
vim.g.markdown_recommended_style = 0

