return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            local ts_conf = require("nvim-treesitter.configs")
            ts_conf.setup({
                ensure_installed = {
                    "bash",
                    "c",
                    "cpp",
                    "css",
                    "csv",
                    "dart",
                    "go",
                    "html",
                    "javascript",
                    "lua",
                    "markdown",
                    "scss",
                    "svelte",
                    "json",
                    "typescript",
                },
                sync_install = false,
                auto_install = false,
                ignore_install = {},
                highlight = { enable = true },
                indent = { enable = true },
            })
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        config = function()
            require("treesitter-context").setup({
                enable = true,
                line_numbers = true,
                separator = "─",
            })
        end,
    },
    {
        "nvim-treesitter/playground",
        config = function()
            require("nvim-treesitter.configs").setup({
                playground = {
                    enable = true,
                },
            })
        end,
    },
}
