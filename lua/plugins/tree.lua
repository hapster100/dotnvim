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
                    view = {
                        side = "right",
                    },
                })
                is_active = true
            end
        end

        local function toggleTree()
            setupTree()
            nvtreeapi.tree.toggle()
        end

        if not LAZY_TREE then
            setupTree()
        end

        local function toggleGitFilter()
            setupTree()
            nvtreeapi.tree.open()
            nvtreeapi.tree.toggle_git_clean_filter()
        end

        vim.keymap.set("n", "<leader>tg", toggleGitFilter, {})
        vim.keymap.set("n", "<leader>tt", toggleTree, {})
    end,
}
