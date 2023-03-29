local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
	{
		"loctvl842/monokai-pro.nvim",
		lazy = false,
		config = function()
			require('monokai-pro').setup({
				filter = "spectrum",
			})
			vim.cmd("colorscheme monokai-pro")
		end
	},
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		config = function()
			require('nvim-treesitter.configs').setup({
				highlight = {
					enable = true,
				},
			})
		end
	},
	{
		'VonHeikemen/lsp-zero.nvim',
		lazy = false,
		dependencies = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },    -- Required
			{ 'williamboman/mason.nvim' },  -- Optional
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' }, -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'hrsh7th/cmp-buffer' }, -- Optional
			{ 'hrsh7th/cmp-path' }, -- Optional
			{ 'saadparwaiz1/cmp_luasnip' }, -- Optional
			{ 'hrsh7th/cmp-nvim-lua' }, -- Optional

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },    -- Required
			{ 'rafamadriz/friendly-snippets' }, -- Optional
		},
	},
	{
		"ThePrimeagen/harpoon",
		lazy = false,
		dependencies = {
			{ 'nvim-lua/plenary.nvim' },
		},
		config = function()
			vim.keymap.set('n', '<leader>a', require('harpoon.mark').add_file)
			vim.keymap.set('n', '<leader>s', require('harpoon.ui').toggle_quick_menu)
			vim.keymap.set('n', '<leader>n', require('harpoon.ui').nav_next)
			vim.keymap.set('n', '<leader>p', require('harpoon.ui').nav_prev)
		end
	},
	{
		'ollykel/v-vim',
		lazy = false,
	},
	{
		"rose-pine/neovim",
		lazy = false,
		config = function()
			require('rose-pine').setup({
				disable_background = true,
				disable_float_background = true,
				disable_italics = true,
			})
		end
	},
})
