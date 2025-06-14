return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme gruvbox")
    end,
  },
  {
    "neovim/nvim-lspconfig",
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
  },
  {
  "andymass/vim-matchup",
  event = "VeryLazy",
  config = function()
    -- Optional: improve offscreen matching
    vim.g.matchup_matchparen_offscreen = { method = "popup" }

    -- Optional: enable syntax-based matching (helps with strings)
    vim.g.matchup_delim_noskips = 1
    vim.g.matchup_delim_start_literal = 1
  end,
  },
}

