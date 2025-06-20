require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        'bash',
        'dockerfile',
        'fish',
        'gitignore',
        'gleam',
        'html',
        'java',
        'json',
        'lua',
        'markdown',
        'pascal',
        'python',
        'regex',
        'rust',
        'sql',
        'vim',
        'yaml'
    },
    highlight = {
        enable = true,
    },
}
