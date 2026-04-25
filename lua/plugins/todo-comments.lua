return {
  "folke/todo-comments.nvim",
  opts = {
    keywords = {
      TODO = { icon = "󰄰 ", color = "#ddc445", alt = { "TASK", "TASKS", "OBJECTIVE", "OBJECTIVES" } },
      IDEA = { icon = "󰟶 ", color = "#31bd3f", alt = { "IDEAS" } },
      COMMENT = { icon = "󰭻 ", color = "#31bd3f", alt = { "COMMENTS" } },
      DONE = {
        icon = "󰄴 ",
        color = "#53846b",
        alt = {
          "DECISIONS-MADE",
          "DECISION-MADE",
          "QUESTIONS-ANSWERED",
          "QUESTION-ANSWERED",
          "OBJECTIVE-MET",
          "OBJECTIVES-MET",
          "COMMENT-RESOLVED",
          "COMMENTS-RESOLVED",
        },
      },
      CHOICE = { icon = "󰙁 ", color = "#ab4af7", alt = { "DECISION", "DECISIONS", "CHOICES" } },
      QUESTION = { icon = " ", color = "#ab4af7", alt = { "QUESTIONS" } },
      TENDRIL = { icon = " ", color = "#ab4af7", alt = { "TENDRILS" } },
      HACK = { icon = " ", color = "#d13229", alt = { "HACKS" } },
      WARN = { icon = " ", color = "#f5b74e", alt = { "WARNING", "WARNINGS", "XXX" } },
      NOTE = { icon = " ", color = "#7395ef", alt = { "NOTES", "INFO" } },
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
