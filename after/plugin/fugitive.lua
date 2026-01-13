vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
vim.opt.diffopt:append('algorithm:patience')
vim.opt.diffopt:append('indent-heuristic')
