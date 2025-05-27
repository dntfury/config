-- Basic settings
vim.opt.number = true              -- Show absolute line numbers
vim.opt.relativenumber = true      -- Show relative line numbers
vim.opt.tabstop = 4                -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4             -- Size of an indent
vim.opt.expandtab = true           -- Use spaces instead of tabs
vim.opt.smartindent = true         -- Smart autoindenting
vim.opt.mouse = 'a'                -- Enable mouse support
vim.opt.clipboard = 'unnamedplus' -- Use system clipboard
vim.opt.termguicolors = true       -- Better colors

-- Better search behavior
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Load lazy.nvim
vim.opt.rtp:prepend(vim.fn.expand("~/.config/nvim/lazy/lazy.nvim"))

-- Plugin setup
require("lazy").setup({
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'auto',
          icons_enabled = true,
          component_separators = '|',
          section_separators = '',
        },
        sections = {
          lualine_a = {'mode'},
          lualine_b = {'branch', 'diff'},
          lualine_c = {'filename', 'diagnostics'},
          lualine_x = {'encoding', 'fileformat', 'filetype'},
          lualine_y = {'progress'},
          lualine_z = {'location'}
        }
      }
    end
  }
})


