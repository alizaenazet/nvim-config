return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      -- Memaksa nvim-lint untuk mengabaikan markdownlint
      linters_by_ft = {
        markdown = {}, -- Kosongkan linter untuk filetype markdown
      },
    },
  },
}
