return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Text editing
    use 'jiangmiao/auto-pairs'

    -- Look and feel
    use 'machakann/vim-highlightedyank'
    use 'morhetz/gruvbox'
    use 'ap/vim-css-color'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'kyazdani42/nvim-web-devicons'

    -- Widgets
    use 'nvim-lualine/lualine.nvim'
    use 'romgrk/barbar.nvim'
    -- use 'rcarriga/nvim-notify'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'jose-elias-alvarez/null-ls.nvim'

    -- Completions
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'

    -- Other
    use 'nvim-lua/plenary.nvim'
end)
