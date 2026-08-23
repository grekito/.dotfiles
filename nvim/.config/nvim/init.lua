-- Auto install vim-plug and plugins, if not found
--local data_dir = vim.fn.stdpath('data')
--if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.nvim')) == 1 then
--	vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.nvim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.nvim')
--	vim.o.runtimepath = vim.o.runtimepath
--	vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
--end

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

-- Themes
Plug ('Mofiqul/dracula.nvim')
Plug ('ribru17/bamboo.nvim')
Plug ('nvim-tree/nvim-web-devicons')

Plug ('folke/snacks.nvim')
Plug ('lukas-reineke/indent-blankline.nvim')

Plug ('nvim-tree/nvim-tree.lua')
Plug ('nvim-treesitter/nvim-treesitter')

Plug ('windwp/nvim-autopairs')

Plug ('christoomey/vim-tmux-navigator')
Plug ('folke/which-key.nvim')

Plug ('numToStr/FTerm.nvim')
Plug ('nvim-lualine/lualine.nvim')

-- Telescope & dependencies
Plug ('nvim-lua/plenary.nvim')
Plug ('nvim-telescope/telescope-fzf-native.nvim')
Plug ('nvim-telescope/telescope.nvim')

vim.call('plug#end')

-- Core configurations
require('config.options')
require('config.mappings')
require('config.theme')

-- Plugins configurations
require('plugins.dracula')
require('plugins.bamboo')
require('plugins.web-devicons')

require('plugins.snacks')
require('plugins.indent-blankline')

require('plugins.tree')
require('plugins.treesitter')

require('plugins.autopairs')

require('plugins.which-key')

require('plugins.fterm')
require('plugins.lualine')

require('plugins.telescope')
