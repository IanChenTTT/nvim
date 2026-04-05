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
  -- main (latest):
  {
    "echasnovski/mini.pick",
    version = false,
    config = function()
      require("mini.pick").setup()
      source = {
      cwd = function()
        local ok, git_root = pcall(function()
          return vim.fn.systemlist('git rev-parse --show-toplevel')[1]
        end)
        print(git_root)
        return (ok and git_root and git_root ~= '') and git_root or vim.loop.cwd()
      end,
    }
    end,
  },
  {
  "lervag/vimtex",
  lazy = false,     -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = 'general'
    vim.g.vimtex_view_general_viewer = 'okular'
    vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'
    vim.g.maplocalleader = "\\"
  end
  }, 
}

