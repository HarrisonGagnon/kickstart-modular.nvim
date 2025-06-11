return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  opts = {
    no_italic = true, -- Force no italic
  },

  init = function()
    -- Load the colorscheme here.
    vim.cmd.colorscheme 'catppuccin-mocha'
  end,
}

-- vim: ts=2 sts=2 sw=2 et
