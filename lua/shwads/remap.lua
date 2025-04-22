vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("v", "<Tab>", ">gv", { noremap = true, silent = true, desc = "Indent selection" })
vim.keymap.set("v", "<S-Tab>", "<gv", { noremap = true, silent = true, desc = "Unindent selection" })
