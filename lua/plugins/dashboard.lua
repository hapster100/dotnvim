return {
	"nvimdev/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			config = {
				shortcut = {},
				header = {
					"██╗  ██╗██╗        █████╗ ██╗      █████╗ ███╗   ██╗██████╗ ",
					"██║  ██║██║       ██╔══██╗██║     ██╔══██╗████╗  ██║██╔══██╗",
					"███████║██║       ███████║██║     ███████║██╔██╗ ██║██║  ██║",
					"██╔══██║██║       ██╔══██║██║     ██╔══██║██║╚██╗██║██║  ██║",
					"██║  ██║██║▄█╗    ██║  ██║███████╗██║  ██║██║ ╚████║██████╔╝",
					"╚═╝  ╚═╝╚═╝╚═╝    ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝ ",
				},
				footer = {},
				project = { enable = true, limit = 8 },
				mru = { enable = true, limit = 4 },
			},
		})
	end,
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
	},
}
