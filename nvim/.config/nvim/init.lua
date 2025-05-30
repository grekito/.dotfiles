-- Auto install vim-plug and plugins, if not found
local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
	vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
	vim.o.runtimepath = vim.o.runtimepath
	vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug ('nvim-tree/nvim-web-devicons')

Plug ('christoomey/vim-tmux-navigator')
Plug ('nvim-lua/plenary.nvim')
Plug ('nvim-telescope/telescope-fzf-native.nvim')

Plug ('windwp/nvim-autopairs')
Plug ('nvim-tree/nvim-tree.lua')
Plug ('nvim-treesitter/nvim-treesitter')
Plug ('Mofiqul/dracula.nvim')
Plug ('nvim-lualine/lualine.nvim')
Plug ('folke/which-key.nvim')
Plug ('lukas-reineke/indent-blankline.nvim')
Plug ('mfussenegger/nvim-lint')
Plug ('numToStr/FTerm.nvim')
Plug ('nvim-telescope/telescope.nvim')
Plug ('rmagatti/auto-session')
Plug ('stevearc/dressing.nvim')
Plug ('zbirenbaum/copilot.lua')

-- CMP
Plug ('L3MON4D3/LuaSnip')
Plug ('saadparwaiz1/cmp_luasnip')
Plug ('onsails/lspkind.nvim')
Plug ('hrsh7th/cmp-nvim-lsp')
Plug ('hrsh7th/cmp-buffer')
Plug ('hrsh7th/cmp-path')
Plug ('rafamadriz/friendly-snippets')
Plug ('hrsh7th/nvim-cmp')

-- LSP
Plug ('antosha417/nvim-lsp-file-operations')
Plug ('folke/neodev.nvim')
Plug ('neovim/nvim-lspconfig')
Plug ('WhoIsSethDaniel/mason-tool-installer.nvim')
Plug ('williamboman/mason-lspconfig.nvim')
Plug ('williamboman/mason.nvim')

vim.call('plug#end')

-- Core configurations
require('config.mappings')
require('config.options')
require('config.theme')

-- Plugins configs
require('plugins.autopairs')
require('plugins.tree')
require('plugins.treesitter')
require('plugins.dracula')
require('plugins.lualine')
require('plugins.web-devicons')
require('plugins.which-key')
require('plugins.indent-blankline')
require('plugins.linting')
require('plugins.fterm')
require('plugins.telescope')
require('plugins.auto-session')
require('plugins.dressing')
require('plugins.copilot')
require('plugins.cmp')
require('plugins.lsp.mason')
require('plugins.lsp.lspconfig')
