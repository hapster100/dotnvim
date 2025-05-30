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
                graph_style = "kitty",
            })

            local function openFloating()
                ngit.open({ kind = "floating" })
            end

            vim.keymap.set("n", "<leader>gl", ngit.action("log", "log_current", { "--graph", "--color", "--decorate" }))
            vim.keymap.set("n", "<leader>gd", ngit.action("diff", "worktree"))
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
