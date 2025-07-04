local theme = {
    normal = {
        a = { fg = '#071013', bg = '#ffb100', bold = true },
        b = { fg = '#f2edeb', bg = '#c05746' },
        c = { fg = '#f2edeb', bg = '#071013' },
    }
}

return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            options = {
                theme = theme,
                section_separators = { right = '\u{E0B6}', left = '' },
                component_separators = { right = '|', left = '|' },
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'filename' },
                lualine_c = { 'branch' },
                lualine_x = { 'filetype' },
                lualine_y = { 'lsp_status' },
                lualine_z = { 'location', 'searchcount' },
            }
        })
    end
}
