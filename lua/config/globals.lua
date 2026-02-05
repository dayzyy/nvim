vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.clipboard = "unnamedplus"

vim.opt.number = true
vim.opt.relativenumber = true

local function toggle_relative_number(relative)
	vim.opt.relativenumber = relative
      end

vim.api.nvim_create_autocmd('InsertEnter', {
    callback = function() toggle_relative_number(false) end
})

vim.api.nvim_create_autocmd('InsertLeave', {
    callback = function() toggle_relative_number(true) end
})

vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function() vim.highlight.on_yank() end
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "help",
  callback = function()
    vim.cmd("wincmd L") -- Move window to the far right
  end,
})
