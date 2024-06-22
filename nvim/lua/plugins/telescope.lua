return {
	'nvim-telescope/telescope.nvim', 
	tag = '0.1.6',
	dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local telescope = require('telescope')
        local telescope_actions = require('telescope.actions')

        telescope.setup {
            defaults = {
                path_display = { 'smart' },
                mappings = {
                    i = {
                        ['<C-j>'] = telescope_actions.move_selection_next,
                        ['<C-k>'] = telescope_actions.move_selection_previous,
                    },
                },
            }
        }

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end,
}
