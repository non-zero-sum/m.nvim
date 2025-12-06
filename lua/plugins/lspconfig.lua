return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      taplo = {
        evenBetterToml = {
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
