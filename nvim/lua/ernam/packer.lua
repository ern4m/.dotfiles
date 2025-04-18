-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
        requires = { 
            {'nvim-lua/plenary.nvim'},
        }
    }

    use {"nvim-telescope/telescope-media-files.nvim"}

	use({
		"ellisonleao/gruvbox.nvim" ,
		as = 'gruvbox',
	})

    use { "ellisonleao/gruvbox.nvim" }

    use {"folke/tokyonight.nvim"}

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},             -- Required
			{'williamboman/mason.nvim'},           -- Optional
			{'williamboman/mason-lspconfig.nvim'}, -- Optional

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},         -- Required
			{'hrsh7th/cmp-nvim-lsp'},     -- Required
			{'hrsh7th/cmp-buffer'},       -- Optional
			{'hrsh7th/cmp-path'},         -- Optional
			{'saadparwaiz1/cmp_luasnip'}, -- Optional
			{'hrsh7th/cmp-nvim-lua'},     -- Optional

			-- Snippets
			{'L3MON4D3/LuaSnip'},             -- Required
			{'rafamadriz/friendly-snippets'}, -- Optional
		}
	}
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use {'lervag/vimtex'}
    use {'tpope/vim-commentary'}
    use {'preservim/tagbar'}
    use {'zane-/cder.nvim'}
    use {'preservim/nerdtree'}
    use {'dcampos/cmp-emmet-vim'}
    use {'mattn/emmet-vim'}

    -- jupyter package
    use { 'dccsillag/magma-nvim', run = ':UpdateRemotePlugins' }
end)
