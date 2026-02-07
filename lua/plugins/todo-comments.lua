return {
  "folke/todo-comments.nvim",
  opts = {
    keywords = { TEST = { alt = { "TESTING", "PASSED", "FAILED", "CONFIRM" } } },
    search = { pattern = [[\b(KEYWORDS).*:]] },
    highlight = {
      pattern = [[.*(KEYWORDS).*:]],
      comments_only = false,
    },
  },
}
