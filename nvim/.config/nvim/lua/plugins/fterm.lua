require('FTerm').setup{
  config = function()
    local fterm = require('FTerm')
    local lazygit = fterm:new({
      cmd = 'lazygit',
    })

    vim.keymap.set('n', '<leader>g', function() lazygit:toggle() end, {desc = 'Toggle [L]azy[G]it'})
    vim.keymap.set('t', '<leader>g', function() lazygit:toggle() end, {desc = 'Toggle [L]azy[G]it'})
  end,
}
