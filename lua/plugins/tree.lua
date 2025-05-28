return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local is_active = false
        local nvtreeapi = require("nvim-tree.api")
        local nvtree = require("nvim-tree")

        local function setupTree()
            if not is_active then
                nvtree.setup({
                    diagnostics = {
                        enable = true,
                        show_on_dirs = true,
                    },
                })
                is_active = true
            end
        end

        local function toggleTree()
            if not is_active then
                setupTree()
            end
            nvtreeapi.tree.toggle()
        end

        if not LAZY_TREE then
            setupTree()
        end

        vim.keymap.set("n", "<leader>tt", toggleTree, {})
    end,
}
