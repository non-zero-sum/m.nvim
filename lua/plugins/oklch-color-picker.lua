return {
  "eero-lehtinen/oklch-color-picker.nvim",
  event = "VeryLazy",
  version = "*",
  keys = {
    -- One handed keymap recommended, you will be using the mouse
    {
      "<leader>v",
      function()
        require("oklch-color-picker").pick_under_cursor()
      end,
      desc = "Color pick under cursor",
    },
  },
  ---@type oklch.Opts
  opts = { -- Options: 'background'|'foreground'|'virtual_left'|'virtual_eol'|'foreground+virtual_left'|'foreground+virtual_eol'
    highlight = { style = "foreground+virtual_left", bold = true },
  },
}
