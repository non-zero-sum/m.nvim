return {
  "folke/todo-comments.nvim",
  opts = {
    keywords = {
      TODO = { icon = "󰄰 ", color = "#ddc445", alt = { "TASK", "OBJECTIVE" } },
      IDEA = { icon = "󰟶 ", color = "#31bd3f" },
      DONE = { icon = "󰄴 ", color = "#53846b", alt = { "DECISION-MADE", "QUESTION-ANSWERED", "OBJECTIVE-MET" } },
      CHOICE = { icon = "󰙁 ", color = "#ab4af7", alt = { "DECISION" } },
      QUESTION = { icon = " ", color = "#ab4af7" },
      HACK = { icon = " ", color = "#d13229" },
      WARN = { icon = " ", color = "#f5b74e", alt = { "WARNING", "XXX" } },
      NOTE = { icon = " ", color = "#ab4af7", alt = { "INFO" } },
      TEST = { icon = " ", color = "#ddc445", alt = { "TESTING", "CONFIRM" } },
      PASSED = { icon = " ", color = "#31bd3f", alt = { "CONFIRMED" } },
      PERF = { alt = {} },
      FIX = {
        icon = " ", -- icon used for the sign, and in search results
        color = "#d13229", -- can be a hex color, or a named color (see below)
        alt = { "FIXME", "BUG", "FIXIT", "ISSUE", "FAILED" }, -- a set of other keywords that all map to this FIX keywords
        -- signs = false, -- configure signs for some keywords individually
      },
    },
    search = { pattern = [[\b(KEYWORDS).*:]] },
    highlight = {
      keyword = "bg",
      after = "fg",
      pattern = [[.*(KEYWORDS).*:]],
      comments_only = false,
    },
  },
}
