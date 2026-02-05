return {
  "wnkz/monoglow.nvim",
  lazy = true,
  priority = 1000,
  opts = {},
  config = function()
    local versions = { "-void", "-lack", "", }
    local index = 1

    local function toggle_theme()
      local theme = "monoglow" .. versions[index]
      vim.cmd.colorscheme(theme)

      index = index + 1
      if index > #versions then
        index = 1
      end
    end

    vim.cmd.colorscheme("monoglow" .. versions[index])

    -- Map <leader>s to cycle themes
    vim.keymap.set('n', '<leader>s', toggle_theme, { noremap = true, silent = true })
  end,
}
