-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
-- Turn off autoformat for any ts or js related files
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "lua", "typescriptreact", "typescript", "astro", "svelte", "javascript", "javascriptreact" },
  callback = function()
    vim.b.autoformat = false
  end,
})
