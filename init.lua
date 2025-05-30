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

require('colors.neogit')
require('colors.nvimtree')

vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none", fg = "#ffb100" })
vim.api.nvim_set_hl(0, "TelescopePromptCounter", { bg = "none", fg = "#c05746" })
vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { bg = "none", fg = "#c05746" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "none", fg = "#c05746" })
vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none", fg = "#ffb100" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#11262D" })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#11262D" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#11262D" })
vim.api.nvim_set_hl(0, "StatusLine", { bg = "#c05746" })
vim.api.nvim_set_hl(0, "@tag", { fg = "#c05746" })
vim.api.nvim_set_hl(0, "@tag.builtin", { fg = "#f45B1B" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", fg = "#ffb100" })
vim.api.nvim_set_hl(0, "WinSeparator", { fg = "#ffb100" })
vim.api.nvim_set_hl(0, "TreesitterContext", { bg = "#11262D" })
vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { bg = "#11262D", fg = "#ffb100" })


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
