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


-- Plugins (using lazy.nvim)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- This builds a path like ~/.local/share/nvim/lazy/lazy.nvim

-- Step 2: Check if lazy.nvim is already installed at lazypath, if not installed it will install it at
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        lazypath
    })
end

-- Step 3: Prepend lazy.nvim's path to Neovim's runtime path
vim.opt.rtp:prepend(lazypath)


-- Plugin & LSP setup ( MINIMUM )
require("lazy").setup({
    "williamboman/mason.nvim",          -- Plugin that manages external tools (LSP servers, linters, formatters)
    "williamboman/mason-lspconfig.nvim", -- Bridge between mason.nvim and lspconfig for easy LSP installation
    "neovim/nvim-lspconfig",            -- Neovim's built-in LSP client configuration plugin
})

-- Initialize mason.nvim
require("mason").setup()

-- Configure mason-lspconfig to automatically ensure these LSP servers are installed
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "gopls"},    -- Automatically install and keep lua_ls language server up to date
})

local lspconfig = require("lspconfig")

-- set up language server with default settings (after mason ensures it is installed)
lspconfig.lua_ls.setup({})
lspconfig.gopls.setup({})

-- Keymaps for LSP
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
-- 'gd' in normal mode: go to the definition of the symbol under the cursor
-- Useful for jumping to the function/variable declaration

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
-- 'K' in normal mode: show hover information (e.g. function signature, documentation)
-- Like tooltip info when you hover with a mouse in an IDE
