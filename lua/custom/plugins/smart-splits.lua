return {
  'mrjones2014/smart-splits.nvim',
  config = function()
    local smart_splits = require 'smart-splits'

    -- recommended mappings
    -- resizing splits
    -- these keymaps will also accept a range,
    -- for example `10<C-S-h>` will `resize_left` by `(10 * config.default_amount)`
    vim.keymap.set('n', '<C-S-h>', smart_splits.resize_left)
    vim.keymap.set('n', '<C-S-j>', smart_splits.resize_down)
    vim.keymap.set('n', '<C-S-k>', smart_splits.resize_up)
    vim.keymap.set('n', '<C-S-l>', smart_splits.resize_right)
    -- moving between splits
    vim.keymap.set('n', '<C-h>', smart_splits.move_cursor_left)
    vim.keymap.set('n', '<C-j>', smart_splits.move_cursor_down)
    vim.keymap.set('n', '<C-k>', smart_splits.move_cursor_up)
    vim.keymap.set('n', '<C-l>', smart_splits.move_cursor_right)
    vim.keymap.set('n', '<C-\\>', smart_splits.move_cursor_previous)
    -- swapping buffers between windows
    vim.keymap.set('n', '<leader><leader>h', smart_splits.swap_buf_left)
    vim.keymap.set('n', '<leader><leader>j', smart_splits.swap_buf_down)
    vim.keymap.set('n', '<leader><leader>k', smart_splits.swap_buf_up)
    vim.keymap.set('n', '<leader><leader>l', smart_splits.swap_buf_right)
  end,
}
