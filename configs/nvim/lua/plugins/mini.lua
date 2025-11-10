return {
	{
		"nvim-mini/mini.nvim",
		version = false,
		config = function()
			require("mini.icons").setup()
			require("mini.comment").setup()
			require("mini.surround").setup()
			require("mini.cursorword").setup()

			-- require("mini.starter").setup()

			require("mini.hipatterns").setup({
				highlighters = {
					hex_color = require("mini.hipatterns").gen_highlighter.hex_color(),
				},
			})
		end,
	},
}
