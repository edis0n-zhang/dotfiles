return {
  -- Remove the `use` here if you're using folke/lazy.nvim.
  {
    "Exafunction/codeium.vim",
    config = function()
      -- uncomment to go into manual mode
      -- vim.g.codeium_manual = true

      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set("i", "<Tab>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-;>", function()
        return vim.fn["codeium#CycleOrComplete"]()
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-,>", function()
        return vim.fn["codeium#CycleCompletions"](-1)
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<c-x>", function()
        return vim.fn["codeium#Clear"]()
      end, { expr = true, silent = true })
      -- vim.keymap.set("i", "<leader>C", function()
      --   return vim.fn["codeium#Complete()"]()
      -- end, { expr = true, silent = true })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    -- stylua: ignore
    keys = {
      {
        "<tab>",
        function()
          local fn = vim.fn
          if fn["codeium#Accept"]() ~= "" then
            return fn["codeium#Accept"]()
          else
            return "<tab>"
          end
        end,
        expr = true, silent = true, mode = "i",
      },
    },
  },
}
