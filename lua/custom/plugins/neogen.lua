return {
  'danymat/neogen',
  -- Uncomment next line if you want to follow only stable versions
  version = '*',
  config = function()
    require('neogen').setup {
      enabled = true, --if you want to disable Neogen
      input_after_comment = true, -- (default: true) automatic jump (with insert mode) on inserted annotation
    }
    vim.keymap.set('n', '<leader>gdf', ":lua require('neogen').generate()<CR>", { desc = '[G]en [D]ocs [F]unc' })
    vim.keymap.set('n', '<leader>gdc', ":lua require('neogen').generate({ type = 'class' })<CR>", { desc = '[G]en [D]ocs [C]lass' })

    require('which-key').add {
      { '<leader>g', group = '[G]enerate' }, -- group
      { '<leader>gd', group = '[D]ocumentation' }, -- group
    }
  end,
}
