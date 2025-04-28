local M = {
  "famiu/bufdelete.nvim",
  event = "VeryLazy",
  commit = "f6bcea78afb3060b198125256f897040538bcb81",
}

function M.config()
  local keymap = vim.keymap.set
  local opts = { noremap = true, silent = true }
  -- keymap("n", "Q", "<cmd>Bdelete!<CR>", opts)
  keymap("n", "Q", ":lua require('bufdelete').bufdelete(0, false)<cr>", opts)
end

return M
