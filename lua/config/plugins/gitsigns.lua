return {
    'lewis6991/gitsigns.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('gitsigns').setup {
            signs = {
                add          = {hl = 'GitGutterAdd',    text = '+', numhl='GitGutterAddNr'},
                change       = {hl = 'GitGutterChange', text = '~', numhl='GitGutterChangeNr'},
                delete       = {hl = 'GitGutterDelete', text = '_', numhl='GitGutterDeleteNr'},
                topdelete    = {hl = 'GitGutterDelete', text = '‾', numhl='GitGutterDeleteNr'},
                changedelete = {hl = 'GitGutterChange', text = '~', numhl='GitGutterChangeNr'},
            },
            signcolumn = true,  -- show signs
            numhl      = false, -- highlight line number
            watch_gitdir = {
                interval = 1000,
                follow_files = true
            },
            current_line_blame = false, -- optional
            update_debounce = 100,
            status_formatter = nil, -- use default
        }
    end
}
