local map = vim.keymap.set

map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live Grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help Tags" })
map("t", "<Esc>", [[<C-\><C-n>]], { desc = "Switch to Normal Mode in Terminal" })
map("n", "<leader>1", ":ToggleTerm 1<CR>", { noremap = true, silent = true })
map("n", "<leader>2", ":ToggleTerm 2<CR>", { noremap = true, silent = true })
map("n", "<leader>tn", ":ToggleTerm<CR>", { noremap = true, silent = true }) -- Open a new terminal
