return {
  'andweeb/presence.nvim',
  config = function()
    local presence = require('presence')
    presence.setup({
      auto_update         = true,
      neovim_image_text   = 'The One True Text Editor',
      main_image          = 'neovim',
      log_lvel            = nil,
      debounce_timeout    = 10,
      enable_line_number  = false,
      blacklist           = {},
      buttons             = true,
      file_assets         = {},
      show_time           = true,
      editing_text        = 'Editing %s',
      file_explorer_text  = 'Browsing files',
      git_commit_text     = 'Committing changes',
      plugin_manager_text = 'Managing plugins',
      reading_text        = 'Reading %s',
      workspace_text      = 'Working on %s',
      line_number_text    = 'Line %s/%s',
    })
  end,
}

