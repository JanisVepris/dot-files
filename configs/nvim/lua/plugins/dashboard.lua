return {
	{
		"goolord/alpha-nvim",
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
	},
	--
	-- {
	-- 	"nvimdev/dashboard-nvim",
	-- 	dependencies = { { "nvim-tree/nvim-web-devicons" } },
	-- 	event = "VimEnter",
	-- 	opts = {
	-- 		theme = "hyper",
	-- 		config = {
	-- 			header = vim.split([[ ]], "\n"),
	--
	-- 			packages = { enable = true },
	-- 		},
	-- 	},
	-- 	config = function(_, opts)
	-- 		require("dashboard").setup(opts)
	-- 	end,
	-- },
}
