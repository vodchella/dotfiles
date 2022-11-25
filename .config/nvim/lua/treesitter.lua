require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        'bash',
        'fish',
        'gitignore',
        'json',
        'lua',
        'markdown',
        'python',
        'regex',
        'sql',
        'yaml'
    },
    highlight = {
        enable = true,
    },
}
