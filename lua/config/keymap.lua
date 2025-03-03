local opts = { noremap = true, silent = true }

-- general 
vim.keymap.set("i", "jj", "<Esc>", vim.tbl_extend("force", opts, { desc = "Enter Normal Mode" }))

-- lines 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", vim.tbl_extend("force", opts, { desc = "Move block down" }))
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", vim.tbl_extend("force", opts, { desc = "Move block up" }))

-- buffers
vim.keymap.set("n", "<leader>bd", ":bd<CR>", vim.tbl_extend("force", opts, { desc = "Close buffer" }))
vim.keymap.set("n", "<S-l>", ":bn<CR>", vim.tbl_extend("force", opts, { desc = "Next buffer" }))
vim.keymap.set("n", "<S-h>", ":bp<CR>", vim.tbl_extend("force", opts, { desc = "Previous buffer" }))