return {
  "nvim-lua/plenary.nvim",
  {
    "nvchad/ui",
    config = function()
      require "nvchad"
    end
  },

  -- Not sure what this does?
  -- {
  --   "stevearc/conform.nvim",
  --   event = 'BufWritePre', -- uncomment for format on save
  --   opts = require "configs.conform",
  -- },

  {
    "neovim/nvim-lspconfig",
    dependecies = {
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },

    config = function()
      require("lspconfig").clangd.setup {}
      require("lspconfig").basedpyright.setup {}
      require("lspconfig").html.setup {}
      require("lspconfig").lua_ls.setup{}

    end,
 },

  -- This was an example already in the file not sure what treesitter all does
  -- to be honest
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "c", "python"
  		},
  	},
  },

  -- Moved Terminal toggle to mapping.lua

}
