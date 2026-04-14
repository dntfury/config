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

-- Open all help in a new tab by default
vim.api.nvim_create_autocmd("FileType", {
  pattern = "help",
  callback = function()
    vim.cmd("wincmd T")
  end
})

-- vim wiki config start
---- pluigin setup start
-- to get vim wiki plugin
-- mkdir -p ~/.config/nvim/pack/plugins/start
-- git clone https://github.com/vimwiki/vimwiki.git ~/.config/nvim/pack/plugins/start/vimwiki
---- vim wiki pluing setup done
vim.g.vimwiki_list = {
  {
    path = vim.fn.expand("~/vimwiki/"),
    syntax = "markdown",
    ext = ".md",

    diary_rel_path = "diary/",
    diary_index = "diary",
    diary_header = "Diary",
  },
}
vim.g.vimwiki_global_ext = 0
-- vim wiki config end
