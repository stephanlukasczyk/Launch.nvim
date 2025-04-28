local M = {
  "prichrd/netrw.nvim",
  event = "VeryLazy",
  commit = "90501c62b9b816ed3ed1e912ae9db9af5671a1b2",
}

function M.config()
  require("netrw").setup {
    icons = {
      symlink = " ",
      directory = " ",
      file = " ",
    },
    use_devicons = true,
    mappings = {},
  }
end

return M
