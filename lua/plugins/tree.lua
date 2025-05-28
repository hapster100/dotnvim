return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local nvtreeapi = require("nvim-tree.api")
		local nvtree = require("nvim-tree")
		nvtree.setup({
			diagnostics = {
				enable = true,
				show_on_dirs = true,
			},
		})
		vim.keymap.set("n", "<leader>tt", nvtreeapi.tree.toggle, {})
	end,
}
