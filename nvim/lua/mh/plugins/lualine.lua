-- return {}
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },

	config = function()
		require("lualine").setup(
			{
				options = {
					theme = "onenord",
					-- ... the rest of your lualine config
				},
				sections = {
					lualine_x = {
						{
							require("noice").api.statusline.mode.get,
							cond = require("noice").api.statusline.mode.has,
							color = { fg = "#ff9e64" },
						},
					},
				},
			} --[[ {
			options = {
				icons_enabled = true,
				component_separators = "|",
				section_separators = "",
			},
			sections = {
				lualine_x = {
					{
						require("noice").api.statusline.mode.get,
						cond = require("noice").api.statusline.mode.has,
						color = { fg = "#ff9e64" },
					},
				},
				lualine_a = {
					{
						"buffers",
					},
				},
			},
		} ]]
		)
	end,
}
