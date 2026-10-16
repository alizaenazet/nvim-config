return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local configs = require("lspconfig.configs")
      if not configs.sfmc then
        configs.sfmc = {
          default_config = {
            cmd = {
              "node",
              vim.fn.expand("~/.local/share/sfmc-language-server/server/out/server.js"),
              "--stdio",
            },
            filetypes = { "ampscript", "sfmc", "ssjs" },
            root_dir = require("lspconfig.util").root_pattern(".git"),
            single_file_support = true,
            settings = {
              sfmcLanguageServer = {
                maxNumberOfProblems = 100,
                -- targetPlatform = "next", -- enable if you build for Marketing Cloud Next
              },
            },
          },
        }
      end
      opts.servers = opts.servers or {}
      opts.servers.sfmc = {}
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        ampscript = { "prettier" },
        sfmc = { "prettier" },
        ssjs = { "prettier" },
      },
    },
  },
}
