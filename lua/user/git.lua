local M = {
  "rhysd/committia.vim",
  commit = "c8c0f255e8090ed90dd9d5dd2e8672994f8e3671",
  event = { "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
  dependencies = {
    {
      "tpope/vim-fugitive",
      commit = "4a745ea72fa93bb15dd077109afbb3d1809383f2",
    },
  },
}

function M.config()
end

return M
