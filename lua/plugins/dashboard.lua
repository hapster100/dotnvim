return {
    'nvimdev/dashboard-nvim',
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
    event = 'VimEnter',
    config = function()
        require('dashboard').setup({
            config = {
                shortcut = {},
                footer = {},
                project = { enable = true, limit = 8 },
                mru = { enable = true, limit = 4 },
            },
        })
    end
}
