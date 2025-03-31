return {
  -- { "ellisonleao/gruvbox.nvim" },
  -- { "EdenEast/nightfox.nvim" },
  -- { "catppuccin/nvim", name = "catppuccin" },
  -- { "AlexvZyl/nordic.nvim" },
  -- { "comfysage/evergarden" },
  -- { "folke/tokyonight.nvim" },
  -- { "datsfilipe/vesper.nvim" },
  { "nyoom-engineering/oxocarbon.nvim" },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oxocarbon",
    },
  },

  -- Apply evergarden settings after it loads
  {
    "comfysage/evergarden",
    config = function()
      require("evergarden").setup({
        transparent_background = false,
        contrast_dark = "hard",
        override_terminal = true,
        style = {
          tabline = { reverse = true, color = "green" },
          search = { reverse = false, inc_reverse = true },
          types = { italic = false },
          keyword = { italic = false },
          comment = { italic = false },
          sign = { highlight = false },
        },
        overrides = {}, -- Add custom overrides if necessary
      })
    end,
  },
}
