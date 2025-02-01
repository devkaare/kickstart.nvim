return {
  'catppuccin/nvim',
  priority = 1000,
  config = function()
    -- Set options
    require('catppuccin').setup {
      transparent_background = true,
    }

    -- Load colorscheme
    vim.cmd.colorscheme 'catppuccin'
  end,
}
