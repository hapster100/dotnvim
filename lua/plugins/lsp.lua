return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "ts_ls", "eslint", "css-lsp", "gopls" },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabls = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabls,
            })
            lspconfig.ts_ls.setup({
                capabilities = capabls,
            })
            vim.lsp.enable('dartls')
        end,
    },
}
