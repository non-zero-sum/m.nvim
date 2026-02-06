--
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- the following are modifications from the LazyVim kickstart
--

-- better up move up and down for lines of code
vim.keymap.set("n", "∆", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "˚", "<cmd>execute 'move .-' . (v:count1 +1)<cr>==", { desc = "Move up" })

vim.keymap.set("i", "∆", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "˚", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })

vim.keymap.set("v", "∆", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "˚", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move up" })

-- color cycler
vim.keymap.set("n", "<leader>cc", ":CccConvert<cr>", { desc = "Cycle colorspace" })

-- jq and yq
vim.keymap.set("n", "<leader>jq", function()
  require("jq").run()
end, { desc = "parse json" })
vim.keymap.set("n", "<leader>yq", function()
  require("jq").run({ commands = { { command = "yq", filetype = "yaml", arguments = "-r" } } })
end, { desc = "parse yaml" })

-- save and exit
vim.keymap.set("n", "<D-s>", "<cmd>w<cr>", { desc = "save" })
vim.keymap.set("n", "<D-x>", function()
  require("snacks").bufdelete()
end, { desc = "close buffer" })

-- sent changed content to the black hole register
vim.keymap.set("n", "c", '"_c')
