vim.opt.clipboard = "unnamedplus" -- sync with system clipboard
vim.opt.hidden = true

vim.opt.confirm = true    -- confirm to save changes before exiting modified buffer
vim.opt.cursorline = true -- Enable highlighting of the current line
vim.opt.list = true       -- Show some invisible characters (tabs...
vim.opt.number = true     -- Print line number
vim.opt.shiftround = true -- Round indent

vim.g.markdown_recommended_style = 0

-- Folding settings
vim.opt.fillchars = { fold = " " }
vim.opt.foldmethod = "indent"
vim.opt.foldenable = false
vim.opt.foldlevel = 99

-- Indentation settings
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

-- rulers (used by virtcolumn.nvim)
-- vim.opt.colorcolumn = "80,120"
-- vim.cmd([[highlight ColorColumn ctermbg=darkgrey guibg=lightgrey]])

vim.opt.backup = false                          -- creates a backup file
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2                           -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.wrap = false                            -- display lines as one long line
vim.opt.smartindent = true                      -- enables smart auto indenting for new line
vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
