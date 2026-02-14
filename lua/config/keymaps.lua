-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { noremap = true, silent = true })   -- Switch to next buffer
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { noremap = true, silent = true }) -- Switch to previous buffer
vim.keymap.set('n', '<leader>cb', ':bd<CR>', { noremap = true, silent = true }) -- Close current buffer

vim.keymap.set('n', '<leader>sh', ':split<CR>', { noremap = true, silent = true })  -- Horizontal split
vim.keymap.set('n', '<leader>sv', ':vsplit<CR>', { noremap = true, silent = true }) -- Vertical split

vim.keymap.set('n', '<C-h>', '10zh', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '10j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '10k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '10zl', { noremap = true, silent = true })

vim.keymap.set('v', 'E', 'g_', { noremap = true, silent = true })  -- select to end of line
vim.keymap.set('v', 'B', '0', { noremap = true, silent = true })   -- select to beginning of line

vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float, { noremap = true, silent = true })

vim.keymap.set('n', '<leader>n', ':nohlsearch<CR>', { noremap = true, silent = true }) -- Clear search higlights

local telescope = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', telescope.find_files, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fw', telescope.live_grep, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
