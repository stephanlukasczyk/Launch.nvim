local M = {
  "rhysd/committia.vim",
  commit = "a187b8633694027ab5ef8a834527d33093282f95",
  event = { "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
  dependencies = {
    {
      "tpope/vim-fugitive",
      commit = "59659093581aad2afacedc81f009ed6a4bfad275",
    },
  },
}

function M.config()
end

return M
