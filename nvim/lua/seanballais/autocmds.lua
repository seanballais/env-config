local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Number toggle group based from:
-- https://www.reddit.com/r/neovim/comments/y0c9vk/comment/irrgfin
local number_toggle_group = augroup('NumberToggle', { clear = true })
autocmd({ 'BufEnter', 'FocusGained', 'InsertLeave' }, {
  pattern = '*',
  callback = function()
    vim.wo.relativenumber = true
  end,
  group = number_toggle_group,
})
autocmd({ 'BufLeave', 'FocusLost', 'InsertEnter' }, {
  pattern = '*',
  callback = function()
    vim.wo.relativenumber = false
  end,
  group = number_toggle_group,
})

