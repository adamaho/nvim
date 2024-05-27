-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
vim.keymap.set('n', '<leader>pv', "<Cmd>Neotree toggle<CR>", { desc = 'Open file explorer' })
vim.keymap.set('n', '<leader>pg', "<Cmd>Neotree git_status<CR>", { desc = 'Open git view' })
vim.keymap.set('i', 'jj', "<Esc>", { desc = 'Back to normal mode' })

-- Code Editing
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = 'Move block down' })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = 'Move block up' })
vim.keymap.set("n", "<leader>.", "<Cmd>lua vim.lsp.buf.code_action()<CR>", { desc = 'View code actions' })

-- Formatting
vim.keymap.set("n", "<leader>f", "<Cmd>lua vim.lsp.buf.format({ timeout_ms = 2000 })<CR>")
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- vim: ts=2 sts=2 sw=2 et
