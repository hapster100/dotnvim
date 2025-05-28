return {
    'NeogitOrg/neogit',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'sindrets/diffview.nvim',
    },
    config = function()
        local ngit = require('neogit')
        ngit.setup()
    end
}

