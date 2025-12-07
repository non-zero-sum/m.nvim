--
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- the following are modifications from the LazyVim kickstart
--
-- set python lsp to basedpyright
vim.g.lazyvim_python_lsp = "basedpyright"
-- set soft wrap
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true
-- have not less than 10 lines above/below the cursor while moving up/down
vim.opt.scrolloff = 10
