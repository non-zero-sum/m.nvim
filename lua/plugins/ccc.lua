return {
  "uga-rosa/ccc.nvim",
  ft = "css",
  config = function()
    local ccc = require("ccc")
    ccc.setup({
      convert = {
        { ccc.picker.hex, ccc.output.css_hsl },
        { ccc.picker.css_hsl, ccc.output.css_oklch },
        { ccc.picker.css_oklch, ccc.output.hex },
      },
    })
  end,
}
