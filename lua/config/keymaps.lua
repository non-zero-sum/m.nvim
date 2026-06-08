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
vim.keymap.set("n", "<leader>j", "", { desc = "+jq" })
vim.keymap.set("n", "<leader>jq", function()
  require("jq").run()
end, { desc = "parse json" })
vim.keymap.set("n", "<leader>js", function()
  require("jq").run({ commands = { { command = "jq", filetype = "json", arguments = "--slurp" } } })
end, { desc = "parse ndjson (slurp)" })
vim.keymap.set("n", "<leader>jy", function()
  require("jq").run({ commands = { { command = "yq", filetype = "yaml", arguments = "-r" } } })
end, { desc = "parse yaml" })

-- save and exit
vim.keymap.set("n", "<D-s>", "<cmd>w<cr>", { desc = "save" })
vim.keymap.set("i", "<D-s>", "<esc><cmd>w<cr>", { desc = "save" })
vim.keymap.set("n", "<D-x>", function()
  require("snacks").bufdelete()
end, { desc = "close buffer" })

-- sent changed content to the black hole register
vim.keymap.set("n", "c", '"_c')
vim.keymap.set("n", "C", '"_C')

-- dissable marcro recording
vim.keymap.set("n", "q", "<Nop>", { noremap = true, silent = true })
vim.keymap.set("n", "Q", "<Nop>", { noremap = true, silent = true })
--
-- markdown
vim.keymap.set("n", "<leader>mq", "I> <esc>", { desc = "make line markdown quote" })
vim.keymap.set("n", "<leader>mt", ":Mtoc insert<cr>dd")

-- Add quote to selected lines in normal mode
vim.keymap.set("n", "gsq", 'gsaiw"', { remap = true, desc = "surround with quotes" })
vim.keymap.set("n", "gsb", "gsaiw)", { remap = true, desc = "surroung with ()" })
vim.keymap.set("n", "gsc", "gsaiw}", { remap = true, desc = "surround with {}" })
vim.keymap.set("n", "gss", "gsaiw]", { remap = true, desc = "surround with []" })
vim.keymap.set("n", "gst", "gsaiw`", { remap = true, desc = "surround with backticks" })
vim.keymap.set("n", "gsl", "gsaiw]/]<cr>a()<esc>i", { remap = true, desc = "surround with backticks" })

-- trim markdown to keep it under 80 characters
vim.keymap.set("n", "<leader>88", "gw}", { desc = "format markdown paragraph" })
vim.keymap.set("n", "<leader>89", "gwG", { desc = "format markdown to end of doc" })
vim.keymap.set("n", "<leader>80", "gggwG", { desc = "format markdown paragraph" })

vim.keymap.set("n", "-", "$l", { desc = "move to the end of the line" })
