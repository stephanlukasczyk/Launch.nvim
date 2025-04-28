local M = {
  "nvim-orgmode/orgmode",
  commit = "27ab1cf9e7ae142f9e9ffb218be50dd920f04cb3",
  event = "VeryLazy",
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter",
      lazy = true,
    },
  },
}

function M.config()
  -- Load treesitter grammar for org
  require("orgmode").setup_ts_grammar()

  -- Setup treesitter
  require("nvim-treesitter.configs").setup({
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = { "org" },
    },
    ensure_installed = { "org" },
  })

  -- Setup orgmode
  require("orgmode").setup({
    org_agenda_files = "~/Documents/orgfiles/**/*",
    org_default_notes_file = "~/Documents/orgfiles/refile.org",
  })
end

return M
