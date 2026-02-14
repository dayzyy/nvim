return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
	  view = {
		width = 35,
		side = "left",
	  },

	  renderer = {
		group_empty = true,
	  },

	  filters = {
		dotfiles = false,
	  },

	  git = {
		enable = true,
	  },
	})
  end,
}
