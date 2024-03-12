vim.opt.guicursor = ""
vim.g.mapleader = " "
vim.opt.nu = true
vim.opt.relativenumber = true
vim.o.clipboard = "unnamed"
--copy paste
vim.api.nvim_set_keymap("v", "<S-p>", '"+y', { noremap = true })
vim.api.nvim_set_keymap("n", "<S-k>", '"+p', { noremap = true })

vim.api.nvim_set_keymap("n", "'", ":", { noremap = true })
vim.api.nvim_set_option("completefunc", "completefunc#omni#syntax")

vim.keymap.set("n", "ss", "<cmd>bd<CR>", { noremap = true, silent = true, desc = "Close current buffer" })
vim.opt.autoindent = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.showmode = false

vim.opt.smartindent = true

vim.opt.wrap = true
-- vim.opt.cursorline = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

--vim.opt.termguicolors = true

vim.opt.scrolloff = 8
--vim.opt.signcolumn = "yes" //removed line at the right side
vim.opt.isfname:append("@-@")
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.updatetime = 50

vim.opt.colorcolumn = "100"

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
