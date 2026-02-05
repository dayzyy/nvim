return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function()
		vim.g.mapleader = " "
		vim.g.maplocalleader = "\\"
		require('bufferline').setup()
	end,
}
