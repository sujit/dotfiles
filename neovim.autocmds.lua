-- Path: ~/.config/nvim/lua/config/autocmds.lua


-- SUJIT (BEGIN)
-- Automatically reload files changed outside of Neovim
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  command = "if mode() != 'c' | checktime | endif",
  pattern = "*",
})
-- Trigger `autoread` when files changes on disk
vim.o.autoread = true
-- SUJIT (END)
