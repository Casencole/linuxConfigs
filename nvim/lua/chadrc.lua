-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",
  transparency = true, 
	hl_override = {
		-- Comment = { italic = true },
		-- ["@comment"] ={ italic = true },
	},
}

M.nvdash = { load_on_startup = true }
M.ui = {

  statusline = {

    theme = "default",            -- "default" | "vscode"| "minimal" | "vscode_colored"
    separator_style = "default",  -- "default" | "round" | "block" | "arrow"
    order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "cursor" ,"f" },
    -- order = { "mode", "f", "git", "%=", "lsp_msg", "%=", "lsp", "cwd", "xyz" },
    modules = {
      f = "%c",
      xyz = "bob",
    },

  },
}


return M
