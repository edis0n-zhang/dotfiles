-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Function to toggle Codeium
function ToggleCodeium()
  vim.g.codeium_enabled = not vim.g.codeium_enabled
  print("Codeium is now " .. (vim.g.codeium_enabled and "enabled" or "disabled"))
end

-- Keybinding to toggle Codeium
vim.api.nvim_set_keymap("n", "<leader>tc", ":lua ToggleCodeium()<CR>", { noremap = true, silent = true })

vim.o.updatetime = 1000 -- Optional: Set cursor idle time to 1 second
vim.cmd([[autocmd CursorHold * silent! mode]])
