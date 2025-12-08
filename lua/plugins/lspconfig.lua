return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      cssls = {},
      css_variables = {},
      emmet_ls = {},
      taplo = {
        settings = {
          schema = { enabled = true },
          formatter = {
            reorderKeys = true,
            alignEntries = true,
            indentTables = true,
            indentEntries = true,
            reorderArrays = true,
            reorderInlineTables = true,
          },
        },
      },
    },
  },
}
