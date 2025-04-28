local M = {
  "lewis6991/gitsigns.nvim",
  event = "BufEnter",
  commit = "ee7e50dfbdf49e3acfa416fd3ad3abbdb658582c",
  cmd = "Gitsigns",
}
M.config = function()
  local icons = require "user.icons"

  require("gitsigns").setup {
    signs = {
      add = {
        -- hl = "GitSignsAdd",
        text = icons.ui.BoldLineLeft,
        -- numhl = "GitSignsAddNr",
        -- linehl = "GitSignsAddLn",
      },
      change = {
        -- hl = "GitSignsChange",
        text = icons.ui.BoldLineLeft,
        -- numhl = "GitSignsChangeNr",
        -- linehl = "GitSignsChangeLn",
      },
      delete = {
        -- hl = "GitSignsDelete",
        text = icons.ui.TriangleShortArrowRight,
        -- numhl = "GitSignsDeleteNr",
        -- linehl = "GitSignsDeleteLn",
      },
      topdelete = {
        -- hl = "GitSignsDelete",
        text = icons.ui.TriangleShortArrowRight,
        -- numhl = "GitSignsDeleteNr",
        -- linehl = "GitSignsDeleteLn",
      },
      changedelete = {
        -- hl = "GitSignsChange",
        text = icons.ui.BoldLineLeft,
        -- numhl = "GitSignsChangeNr",
        -- linehl = "GitSignsChangeLn",
      },
    },
    signs_staged_enable = true,
    signcolumn = true,   -- Toggle with `:Gitsigns toggle_signs`
    numhl      = false,  -- Toggle with `:Gitsigns toggle_numhl`
    linehl     = false,  -- Toggle with `:Gitsigns toggle_linehl`
    word_diff  = false,  -- Toggle with `:Gitsigns toggle_word_diff`
    watch_gitdir = {
      follow_files = true,
    },
    auto_attach = true,
    attach_to_untracked = false,
    current_line_blame = false,  -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
      virt_text = true,
      virt_text_pos = 'eol',  -- 'eol' | 'overlay' | 'right_align'
      delay = 1000,
      ignore_whitespace = false,
      virt_text_priority = 100,
      use_focus = true,
    },
    current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
    sign_priority = 6,
    update_debounce = 100,
    status_formatter = nil,  -- Use default
    max_file_length = 40000,  -- Disable if file is longer than this (in lines)
    preview_config = {
      -- Options passed to nvim_open_win
      border = "rounded",
      style = "minimal",
      relative = "cursor",
      row = 0,
      col = 1,
    },
  }
end

return M
