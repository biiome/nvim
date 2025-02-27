local opt = vim.opt

-- Session Management
opt.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- Set spelllang for Markdown files
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.md", "*.txt" },
  callback = function()
    vim.opt_local.spelllang = "en_au"
  end,
})

-- Line Numbers
opt.relativenumber = true
opt.number = true

-- Tabs & Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
vim.bo.softtabstop = 2

-- Line Wrapping
opt.wrap = false

-- Search Settings
opt.ignorecase = true
opt.smartcase = true

-- Cursor Line
opt.cursorline = true

-- Appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
vim.diagnostic.config {
  float = { border = "rounded" }, -- add border to diagnostic popups
}

-- Backspace
opt.backspace = "indent,eol,start"

-- Clipboard
opt.clipboard:append "unnamedplus" -- use system slipboard as default clipboard

-- Split Windows
opt.splitright = true
opt.splitbelow = true

-- Consider - as part of keyword
opt.iskeyword:append "-"

-- Folding
opt.foldlevel = 99
-- opt.statuscolumn = [[%!v:lua.require'lazy'.ui.statuscolumn()]]
opt.foldtext = "v:lua.require'lazy'.ui.foldexpr()"
opt.foldmethod = "indent"
vim.o.formatexpr = "v:lua.require'lazy.util'.format.formatexpr()"

-- Limit the maximum number of items to show in the popup menu
vim.o.pumheight = 20

-- Turn off swapfile
opt.swapfile = false

-- Minimal number of screen lines to keep above and below cursor
vim.opt.scrolloff = 10
