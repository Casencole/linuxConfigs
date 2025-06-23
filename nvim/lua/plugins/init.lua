return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
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
      -- require("lspconfig").lua-language-server.setup {}
    end,
  },
{
    -- Based off solution found at link below 
    -- https://vi.stackexchange.com/questions/42844/how-to-fix-rgb-rgba-colors-not-being-shown-as-colors-in-neovim-nvchad-lazy-nvi 
    "NvChad/nvim-colorizer.lua",
    opts = {
        filetypes = { "*" },
        user_default_options = {
          RGB = true,     -- #RGB hex codes
          RRGGBB = true,  -- #RRGGBB hex codes
          names = true,   -- "Name" codes like Blue or blue
          RRGGBBAA = false, -- #RRGGBBAA hex codes
          AARRGGBB = false, -- 0xAARRGGBB hex codes
          rgb_fn = true,  -- CSS rgb() and rgba() functions
          hsl_fn = false, -- CSS hsl() and hsla() functions
          css = false,    -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
          css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn

          -- Available modes for `mode`: foreground, background,  virtualtext
          mode = "background", -- Set the display mode.

          -- Available methods are false / true / "normal" / "lsp" / "both"
          -- True is same as normal
          tailwind = false, -- Enable tailwind colors 

          -- parsers can contain values used in |user_default_options|
          sass = { enable = false, parsers = { "css" }, }, -- Enable sass colors
          virtualtext = "■",

          -- update color values even if buffer is not focused
          -- example use: cmp_menu, cmp_docs
          always_update = false
        },

        -- all the sub-options of filetypes apply to buftypes
        buftypes = {},
    }
  },
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
