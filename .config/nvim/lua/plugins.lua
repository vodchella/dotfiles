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
    use 'rcarriga/nvim-notify'
end)
