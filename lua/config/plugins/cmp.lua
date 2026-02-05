return {
  -- Autocompletion engine
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp", -- LSP source
      "L3MON4D3/LuaSnip",     -- Snippet engine
      "saadparwaiz1/cmp_luasnip", -- Snippet source
      "hrsh7th/cmp-buffer",   -- Optional: buffer words
      "hrsh7th/cmp-path",     -- Optional: filesystem paths
	  "hrsh7th/cmp-emoji",
    },
	sources = {
		{ name = 'nvim_lsp_signature_help' },
	},
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-n>"] = cmp.mapping.select_next_item(),
          ["<C-p>"] = cmp.mapping.select_prev_item(),
          ["<C-y>"] = cmp.mapping.confirm({ select = true }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "emoji" },
        }, {
          { name = "buffer" },
          { name = "path" },
        }),
		performance = {
			max_view_entries = 10
		},
		window = {
			completion = cmp.config.window.bordered({scrollbar=true}),
			documentation = cmp.config.window.bordered({scrollbar=true}),
		}
      })
    end,
  },
}
