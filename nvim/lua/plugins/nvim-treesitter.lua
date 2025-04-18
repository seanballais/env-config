return {
  'nvim-treesitter/nvim-treesitter',
  event = { 'BufReadPre', 'BufNewFile' },
  build = ':TSUpdate',
  dependencies = {
    'windwp/nvim-ts-autotag',
  },
  config = function()
    local install = require('nvim-treesitter.install')
    install.prefer_git = false

    -- Get OS name and set the compiler based on the OS.
    -- Based on https://www.reddit.com/r/neovim/comments/tci7qf/comment/i0gru59
    local uname = vim.loop.os_uname()
    local os = uname.sysname
    local os_is_mac = os == 'Darwin'
    local os_is_linux = os == 'Linux'
    local os_is_windows = os:find 'Windows' and true or false
    local os_is_wsl = IS_LINUX and uname.release:find 'Microsoft' and true or false
    if os_is_windows then
      install.compilers = { 'cl' }
    else
      error('Running in an OS where this plugin configuration has not yet considered...')
    end

    local configs = require('nvim-treesitter.configs')
    configs.setup({
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      autotag = {
        enable = true,
      },
      ensure_installed = {
        'c',
        'cpp',
        'rust',
        'python',
        'json',
        'javascript',
        'typescript',
        'tsx',
        'yaml',
        'html',
        'css',
        'markdown',
        'markdown_inline',
        'bash',
        'lua',
        'vim',
        'dockerfile',
        'gitignore',
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<C-space>',
          node_incremental = '<C-space>',
          scope_incremental = false,
          node_decremental = '<bs>',
        },
      },
      rainbow = {
        enable = true,
        extended_mode = false,
        max_file_lines = nil,
      },
      context_commentstring = {
        enable = true,
        enable_autocmd = false,
      },
    })
  end,
}

