## Configure NVIM

*GOAL* : The goal is to to keeping things minimal and predictable.

```lua
-- Basic settings
vim.opt.number = true              -- Show absolute line numbers
vim.opt.relativenumber = true      -- Show relative line numbers
vim.opt.tabstop = 4                -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4             -- Size of an indent
vim.opt.expandtab = true           -- Use spaces instead of tabs
vim.opt.smartindent = true         -- Smart autoindenting
vim.opt.mouse = 'a'                -- Enable mouse support
vim.opt.clipboard = 'unnamedplus'  -- Use system clipboard
vim.opt.termguicolors = true       -- Better colors

-- Better search behavior
vim.opt.ignorecase = true          -- Makes search case-insensitive
vim.opt.smartcase = true           -- Overrides ignorecase
vim.opt.incsearch = true           -- Shows search matches as you type

```
