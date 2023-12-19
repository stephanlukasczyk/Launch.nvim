local M = {
  "nordtheme/vim",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  commit = "f13f5dfbb784deddbc1d8195f34dfd9ec73e2295",
}

function M.config()
  vim.cmd.colorscheme "nord"
end

return M
