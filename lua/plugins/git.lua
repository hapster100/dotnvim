return {
	{
		"NeogitOrg/neogit",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
		},
		config = function()
			local ngit = require("neogit")
			ngit.setup({
				kind = "floating",
				commit_editor = { kind = "floating" },
			})

			local function openFloating()
				ngit.open({ kind = "floating" })
			end
			local function openDiff()
				local ngitdp = require("neogit.popups.diff")
				local ngitdpa = require("neogit.popups.diff.actions")
				local pop = ngitdp.create()
				ngitdpa.worktree(pop)
			end

			vim.keymap.set("n", "<leader>gd", openDiff)
			vim.keymap.set("n", "<leader>gc", ngit.action("commit", "commit", {}))
			vim.keymap.set("n", "<leader>gg", openFloating, {})
		end,
	},
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	},
}
