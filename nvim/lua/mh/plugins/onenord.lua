return {
	--[[
	config = function()
		require("flow").setup({
			transparent = true,
			fluo_color = "pink",
			mode = "normal", -- Intensity of the palette: normal, bright, desaturate, or dark
			aggressive_spell = false,
		}) ]]
	"rmehri01/onenord.nvim",
	-- "0xstepit/flow.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
	config = function()
		require("onenord").setup({
			theme = "dark",
			disable = {
				background = true,
			},
		})
		vim.cmd("colorscheme onenord")
	end,
}
