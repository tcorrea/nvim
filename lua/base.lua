local opt = vim.opt

-- Set highlight on search
-- opt.hlsearch = false
opt.hlsearch = true
opt.incsearch = true

-- Make line numbers default
opt.number = true
opt.relativenumber = true

-- Enable mouse mode
opt.mouse = 'a'
opt.clipboard:append('unnamedplus')

-- Enable break indent
opt.breakindent = true

-- Save undo history
opt.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
opt.ignorecase = true
opt.smartcase = true

-- set termguicolors to enable highlight groups
opt.termguicolors = true

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

opt.scrolloff = 8
opt.sidescrolloff = 5

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

opt.swapfile = false
opt.autoread = true
vim.bo.autoread = true

opt.signcolumn = 'yes'
opt.colorcolumn = '100'
opt.list = true

opt.cursorline = true

vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 50
        })
    end
})

opt.updatetime = 300
opt.timeoutlen = 500

-- Set completeopt to have a better completion experience
opt.completeopt = 'menuone,noselect'
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
