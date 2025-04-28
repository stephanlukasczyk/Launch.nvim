local M = {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPost", "BufNewFile" },
  commit = "684eeac91ed8e297685a97ef70031d19ac1de25a",
  build = ":TSUpdate",
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter-textobjects",
      event = "VeryLazy",
      commit = "205e3369bc83d8cb83f7409c36120e24611f8c5c",
    },
    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      event = "VeryLazy",
      commit = "1b212c2eee76d787bbea6aa5e92a2b534e7b4f8f",
    },
    {
      "windwp/nvim-ts-autotag",
      event = "VeryLazy",
      commit = "a1d526af391f6aebb25a8795cbc05351ed3620b5",
    },
    {
      "windwp/nvim-autopairs",
      event = "InsertEnter",
      commit = "4d74e75913832866aa7de35e4202463ddf6efd1b",
    },
  },
}
function M.config()
  require("nvim-treesitter.configs").setup {
    ensure_installed = { "lua", "markdown", "markdown_inline", "bash", "python" }, -- put the language you want in this array
    ignore_install = { "" },
    sync_install = false,
    highlight = {
      enable = true,
      disable = { "markdown" },
      additional_vim_regex_highlighting = false,
    },

    indent = { enable = true },

    matchup = {
      enable = { "astro" },
      disable = { "lua" },
    },

    autotag = { enable = true },

    autopairs = { enable = true },

    textobjects = {
      select = {
        enable = true,
        -- Automatically jump forward to textobj, similar to targets.vim
        lookahead = true,
        keymaps = {
          -- You can use the capture groups defined in textobjects.scm
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["at"] = "@class.outer",
          ["it"] = "@class.inner",
          ["ac"] = "@call.outer",
          ["ic"] = "@call.inner",
          ["aa"] = "@parameter.outer",
          ["ia"] = "@parameter.inner",
          ["al"] = "@loop.outer",
          ["il"] = "@loop.inner",
          ["ai"] = "@conditional.outer",
          ["ii"] = "@conditional.inner",
          ["a/"] = "@comment.outer",
          ["i/"] = "@comment.inner",
          ["ab"] = "@block.outer",
          ["ib"] = "@block.inner",
          ["as"] = "@statement.outer",
          ["is"] = "@scopename.inner",
          ["aA"] = "@attribute.outer",
          ["iA"] = "@attribute.inner",
          ["aF"] = "@frame.outer",
          ["iF"] = "@frame.inner",
        },
      },
    },
  }

  require("ts_context_commentstring").setup {
    enable_autocmd = false,
  }

  -- local configs = require "nvim-treesitter.configs"
  --
  -- configs.setup {
  --   -- modules = {
  --   --
  --   --
  --   --   rainbow = {
  --   --     enable = false,
  --   --     query = {
  --   --       "rainbow-parens",
  --   --     },
  --   --     strategy = require("ts-rainbow").strategy.global,
  --   --     hlgroups = {
  --   --       -- "TSRainbowRed",
  --   --       "TSRainbowBlue",
  --   --       -- "TSRainbowOrange",
  --   --       -- "TSRainbowCoral",
  --   --       "TSRainbowPink",
  --   --       "TSRainbowYellow",
  --   --       -- "TSRainbowViolet",
  --   --       -- "TSRainbowGreen",
  --   --     },
  --   --   },
  --   -- },
  -- }
end

return M
