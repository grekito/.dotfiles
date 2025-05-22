-- bread's neovim config
-- keymaps are in lua/config/mappings.lua
-- install a patched font & ensure your terminal supports glyphs
-- enjoy :D

-- auto install vim-plug and plugins, if not found
local data_dir = vim.fn.stdpath('data')
if vim.fn.empty(vim.fn.glob(data_dir .. '/site/autoload/plug.vim')) == 1 then
	vim.cmd('silent !curl -fLo ' .. data_dir .. '/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
	vim.o.runtimepath = vim.o.runtimepath
	vim.cmd('autocmd VimEnter * PlugInstall --sync | source $MYVIMRC')
end

local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug ('windwp/nvim-autopairs')
Plug ('nvim-tree/nvim-tree.lua')
Plug ('nvim-treesitter/nvim-treesitter')
Plug ('Mofiqul/dracula.nvim')
Plug ('nvim-lualine/lualine.nvim')
Plug ('nvim-tree/nvim-web-devicons')
Plug ('folke/which-key.nvim')

vim.call('plug#end')

require('config.mappings')
require('config.options')
require('config.theme')


require('plugins.autopairs')
require('plugins.tree')
require('plugins.treesitter')
require('plugins.lualine')
require('plugins.web-devicons')
require('plugins.which-key')
