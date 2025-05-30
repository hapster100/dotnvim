return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local tel_bin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", tel_bin.find_files, {})
            vim.keymap.set("n", "<leader>fg", tel_bin.live_grep, {})
            vim.keymap.set("n", "<leader>fh", tel_bin.help_tags, {})
            vim.keymap.set('n', '<leader>fb', tel_bin.buffers, {})
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").load_extension("ui-select")
        end,
    },
}
