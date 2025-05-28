return { 
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local tel_bin = require("telescope.builtin")
        vim.keymap.set('n', '<leader>ff', tel_bin.find_files, {})
        vim.keymap.set('n', '<leader>fg', tel_bin.live_grep, {})
    end
}
