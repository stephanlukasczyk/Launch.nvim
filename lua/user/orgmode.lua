local M = {
  "nvim-orgmode/orgmode",
  commit = "c60cf77031a5a9a3c590c6f7b876bc7117603e57",
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
