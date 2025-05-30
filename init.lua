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
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#11262D" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#11262D" })
vim.api.nvim_set_hl(0, "NvimTreeCursorLine", { bg = "#11262D" })
vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#ffb100" })
vim.api.nvim_set_hl(0, "NvimTreeOpenedFolderName", { fg = "#f9cf76" })
vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#c05746" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#11262D" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#c05746" })
vim.api.nvim_set_hl(0, "@tag", { fg = "#c05746" })
vim.api.nvim_set_hl(0, "@tag.builtin", { fg = "#f45B1B" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", fg = "#ffb100" })
vim.api.nvim_set_hl(0, "NeogitObjectId", { fg = "#ffb100" })
vim.api.nvim_set_hl(0, "NeogitSubtleText", { fg = "#c05746" })
vim.api.nvim_set_hl(0, "NeogitSectionHeader", { fg = "#ffb100" })
vim.api.nvim_set_hl(0, "NeogitPopupActionKey", { fg = "#ffb100" })
vim.api.nvim_set_hl(0, "NeogitPopupSectionTitle", { fg = "#c05746" })
vim.api.nvim_set_hl(0, "NeogitPopupSwitchKey", { fg = "#79ADB1" })
vim.api.nvim_set_hl(0, "NeogitPopupConfigKey", { fg = "#eb88af" })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ffb100" })
vim.api.nvim_set_hl(0, "NeogitPopupOptionKey", { fg = "#79ADB1" })

vim.api.nvim_set_hl(0, "NeogitGraphBlack", { fg = "#071013" })
vim.api.nvim_set_hl(0, "NeogitGraphBlackBold", { fg = "#071013", bold = true })
vim.api.nvim_set_hl(0, "NeogitGraphBoldBlack", { fg = "#071013", bold = true })
vim.api.nvim_set_hl(0, "NeogitGraphRed", { fg = "#c05746" })
vim.api.nvim_set_hl(0, "NeogitGraphRedBold", { fg = "#c05746", bold = true })
vim.api.nvim_set_hl(0, "NeogitGraphBoldRed", { fg = "#c05746", bold = true })
vim.api.nvim_set_hl(0, "NeogitGraphGreen", { fg = "#9AE2A5" })
vim.api.nvim_set_hl(0, "NeogitGraphGreenBold", { fg = "#9AE2A5", bold = true })
vim.api.nvim_set_hl(0, "NeogitGraphBoldGreen", { fg = "#9AE2A5", bold = true })
vim.api.nvim_set_hl(0, "NeogitGraphYellow", { fg = "#ffb100" })
vim.api.nvim_set_hl(0, "NeogitGraphYellowBold", { fg = "#ffb100", bold = true })
vim.api.nvim_set_hl(0, "NeogitGraphBoldYellow", { fg = "#ffb100", bold = true })
vim.api.nvim_set_hl(0, "NeogitGraphBlue", { fg = "#79ADB1" })
vim.api.nvim_set_hl(0, "NeogitGraphBlueBold", { fg = "#79ADB1", bold = true })
vim.api.nvim_set_hl(0, "NeogitGraphBoldBlue", { fg = "#79ADB1", bold = true })
vim.api.nvim_set_hl(0, "NeogitGraphPurple", { fg = "#AD498C" })
vim.api.nvim_set_hl(0, "NeogitGraphPurpleBold", { fg = "#AD4982", bold = true })
vim.api.nvim_set_hl(0, "NeogitGraphBoldPurple", { fg = "#AD4982", bold = true })
vim.api.nvim_set_hl(0, "NeogitGraphCyan", { fg = "#1CCAC4" })
vim.api.nvim_set_hl(0, "NeogitGraphCyanBold", { fg = "#1CCAC4", bold = true })
vim.api.nvim_set_hl(0, "NeogitGraphBoldCyan", { fg = "#1CCAC4", bold = true })
vim.api.nvim_set_hl(0, "NeogitGraphWhite", { fg = "#f2EDEB" })
vim.api.nvim_set_hl(0, "NeogitGraphWhiteBold", { fg = "#f2edeb", bold = true })
vim.api.nvim_set_hl(0, "NeogitGraphBoldWhite", { fg = "#f2edeb", bold = true })

vim.api.nvim_set_hl(0, "NeogitDiffAdd", { fg = "#9AE2A5", bold = true })
vim.api.nvim_set_hl(0, "NeogitDiffDelete", { fg = "#c05746", bold = true })
vim.api.nvim_set_hl(0, "NeogitDiffContext", { fg = "#65696A" })
vim.api.nvim_set_hl(0, "NeogitDiffHeader", { fg = "#ffb100", bold = true })
vim.api.nvim_set_hl(0, "NeogitHunkHeader", { bg = "#11262D" })
vim.api.nvim_set_hl(0, "NeogitDiffAddHighlight", { fg = "#9AE2A5", bold = true })
vim.api.nvim_set_hl(0, "NeogitDiffDeleteHighlight", { fg = "#c05746", bold = true })
vim.api.nvim_set_hl(0, "NeogitDiffContextHighlight", { fg = "#65696A", bold = true })
vim.api.nvim_set_hl(0, "NeogitDiffHeaderHighlight", { fg = "#ffb100", bold = true })
vim.api.nvim_set_hl(0, "NeogitHunkHeaderHighlight", { bg = "#11262D", fg = "#f9cf79" })

vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "#11262D" })
vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { bg = "#11262D", fg = "#ffb100" })

vim.api.nvim_set_hl(0, "NeogitBranch", { fg = "#ffb100" })
vim.api.nvim_set_hl(0, "NeogitBranchHead", { fg = "#ffb100", bold = true })
vim.api.nvim_set_hl(0, "NeogitRemote", { fg = "#c05746" })

-- KEYS SETUP
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)

vim.keymap.set("n", "<S-Down>", ":move+1<CR>")
vim.keymap.set("n", "<S-j>", ":move+1<CR>")
vim.keymap.set("x", "<S-j>", ":move '>+1<CR>gv")

vim.keymap.set("n", "<s-up>", ":move-2<CR>")
vim.keymap.set("n", "<s-k>", ":move-2<CR>")
vim.keymap.set("x", "<s-k>", ":move-2<CR>gv")

vim.keymap.set("n", "<c-b>", "<c-b>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "/", ":set hlsearch<CR>/")

vim.keymap.set("n", "<leader>.", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<leader>td", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>qt", vim.cmd.tabc, {})
vim.keymap.set("n", "<leader>qq", vim.cmd.q, {})
vim.keymap.set("n", "<leader>z{", "vi{zf")
vim.keymap.set("n", "<leader>nh", vim.cmd.noh, {})

require("nvim-web-devicons").refresh()
