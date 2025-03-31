-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- for deindent / indent with tab in normal mode
vim.api.nvim_set_keymap("n", "<S-Tab>", "<<", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Tab>", ">>", { noremap = true, silent = true })

vim.keymap.set("i", "<S-Space>", "<Space>", { noremap = true, silent = true })

-- to go into normal mode from insert mode with <C-a>
vim.keymap.set("i", "<C-a>", "<ESC>", { noremap = true, silent = true })
