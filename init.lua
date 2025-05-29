LAZY_TREE = false

require("config.lazy")

-- VIM.OPT SETUP
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.wrap = false
vim.opt.colorcolumn = { 81, 101 }
vim.opt.cursorline = true

-- COLORS SETUP
vim.cmd(":source ~/.config/nvim/mycs.vim")
vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none", fg = "#ffb100" })
vim.api.nvim_set_hl(0, "TelescopePromptCounter", { bg = "none", fg = "#c05746" })
vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { bg = "none", fg = "#c05746" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "none", fg = "#c05746" })
vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none", fg = "#ffb100" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#11262D" })
vim.api.nvim_set_hl(0, "NvimTreeCursorLine", { bg = "#11262D" })
vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#ffb100" })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#f9cf76" })
vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#c05746" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#11262D" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#c05746" })
vim.api.nvim_set_hl(0, "@tag", { fg = "#c05746" })
vim.api.nvim_set_hl(0, "@tag.builtin", { fg = "#f45B1B" })
vim.api.nvim_set_hl(0, 'FloatBorder', {bg = 'none', fg = '#ffb100'})
vim.api.nvim_set_hl(0, 'NeogitObjectId', {fg = '#ffb100'})
vim.api.nvim_set_hl(0, 'NeogitSubtleText', {fg='#c05746'})
vim.api.nvim_set_hl(0, 'NeogitSectionHeader', {fg='#ffb100'})
vim.api.nvim_set_hl(0, 'NeogitPopupActionKey', {fg='#ffb100'})
vim.api.nvim_set_hl(0, 'NeogitPopupSectionTitle', {fg='#c05746'})
vim.api.nvim_set_hl(0, 'NeogitPopupSwitchKey', {fg='#79ADB1'})
vim.api.nvim_set_hl(0, 'NeogitPopupConfigKey', {fg='#eb88af'})
vim.api.nvim_set_hl(0, 'WinSeparator', {fg='#ffb100'})
vim.api.nvim_set_hl(0, 'NeogitPopupOptionKey', {fg='#79ADB1'})

-- KEYS SETUP
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "<A-Down>", "ddp")
vim.keymap.set("n", "<A-Up>", "ddkP")
vim.keymap.set("n", "<A-k>", "ddkP")
vim.keymap.set("n", "<A-j>", "ddp")
vim.keymap.set("n", "<leader>.", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>td", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>qt", vim.cmd.tabc, {})
vim.keymap.set("n", "<leader>qq", vim.cmd.q, {})

require("nvim-web-devicons").refresh()
vim.cmd("cd %")
