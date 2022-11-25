require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        'bash',
        'dockerfile',
        'fish',
        'gitignore',
        'html',
        'java',
        'json',
        'lua',
        'markdown',
        'pascal',
        'python',
        'regex',
        'sql',
        'vim',
        'yaml'
    },
    highlight = {
        enable = true,
    },
}
