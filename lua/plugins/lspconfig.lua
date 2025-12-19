return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      cssls = {},
      css_variables = {},
      emmet_ls = {},
      basedpyright = {
        settings = {
          basedpyright = {
            disableOrganizeImports = true,
            analysis = {
              autoImportCompletions = true,
              useLibraryCodeForTypes = true,
              useTypingExtensions = true,
              diagnosticSeverityOverrides = {
                -- disabling things that double up with Ruff
                reportPrivateUsage = false,
                reportUnusedParameter = false,
              },
            },
          },
        },
      },
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
      jsonls = {
        before_init = function(_, new_config)
          new_config.settings.json.schemas = new_config.settings.json.schemas or {}
          vim.list_extend(new_config.settings.json.schemas, require("schemastore").json.schemas())
        end,
      },
    },
  },
}
