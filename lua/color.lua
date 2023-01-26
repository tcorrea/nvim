vim.g.tokyonight_diagnostic_line_highlight = 1
vim.cmd('colorscheme tokyonight-moon')
-- vim.cmd [[colorscheme onedark]]
vim.fn.sign_define({
    {
        name = 'DiagnosticSignError',
        -- text = '',
        text = 'E',
        texthl = 'DiagnosticSignError',
        linehl = 'ErrorLine',
    },
    {
        name = 'DiagnosticSignWarn',
        text = 'W',
        -- text = '',
        texthl = 'DiagnosticSignWarn',
        linehl = 'WarningLine',
    },
    {
        name = 'DiagnosticSignInfo',
        text = 'I',
        -- text = '',
        texthl = 'DiagnosticSignInfo',
        linehl = 'InfoLine',
    },
    {
        name = 'DiagnosticSignHint',
        -- text = '',
        text = 'H',
        texthl = 'DiagnosticSignHint',
        linehl = 'HintLine',
    },
})
