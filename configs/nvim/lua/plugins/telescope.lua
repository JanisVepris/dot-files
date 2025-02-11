return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"plenary",
		},
		opts = {
			pickers = {
				find_files = {
					find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
				},
			},
		},
		keys = {
			{
				"<leader>=",
				function()
					require("telescope.builtin").lsp_document_symbols()
				end,
			},
			{
				"<leader>pf",
				function()
					require("telescope.builtin").find_files()
				end,
			},
			{
				"<leader>pg",
				function()
					require("telescope.builtin").live_grep()
				end,
			},
			{
				"<leader>e",
				function()
					require("telescope.builtin").buffers()
				end,
			},
			{
				"<leader>ee",
				function()
					require("telescope.builtin").oldfiles()
				end,
			},
			{
				"<C-p>",
				function()
					require("telescope.builtin").git_files()
				end,
			},
			{
				"<leader>gd",
				function()
					require("telescope.builtin").lsp_definitions()
				end,
			},
			{
				"<leader>ps",
				function()
					require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
				end,
			},
		},
	},
}
