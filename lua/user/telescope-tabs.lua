local M = {
  "LukasPietzschmann/telescope-tabs",
  event = "VeryLazy",
  commit = "9ca0800d4e9c2610d5cac4d121cde0d9fbd89a64",
}

function M.config()
  require("telescope-tabs").setup {
    show_preview = false,
    close_tab_shortcut_i = "<C-d>", -- if you're in insert mode
    close_tab_shortcut_n = "dd", -- if you're in normal mode
    entry_formatter = function(tab_id, buffer_ids, file_names, file_paths, is_current)
      local entry_string = table.concat(file_names, ", ")
      return string.format("%d: %s%s", tab_id, entry_string, is_current and " " or "")
    end,
  }
end

return M
