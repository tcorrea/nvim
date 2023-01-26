vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
local keymap = vim.keymap

keymap.set('n', '<leader>q', '<cmd>q<cr>')
keymap.set('n', '<leader>w', '<cmd>w<cr>')
keymap.set('n', '<leader>x', '<cmd>x<cr>')

keymap.set('n', '<c-a>', 'gg<S-v>G')
keymap.set('n', '<leader>h', '<cmd>nohl<cr>')
keymap.set('n', '<leader>c', '<cmd>bd<cr>')

keymap.set('n', '<leader>s', ':vsplit<Return><C-w>w', { silent = true })
keymap.set('n', '<c-f>', '<C-w>w')

keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

keymap.set('n', 'H', '^')
keymap.set('n', 'L', '$')

keymap.set('n', '<C-h>', '<C-w><Left>', { noremap = true, silent = true })
keymap.set('n', '<C-l>', '<C-w><Right>', { noremap = true, silent = true })

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
