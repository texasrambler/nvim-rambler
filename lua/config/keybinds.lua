local keymap = vim.keymap

-- remove search highlights
keymap.set("n", "<ESC><ESC>", ":nohl<CR>", {desc = "Clear search highlights"})

-- manage tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", {desc = "Open new tab"})
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", {desc = "CLose current tab"})
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", {desc = "Go to next tab"})
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", {desc = "Go to previous tab"})
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", {desc = "Open current buffer in new tab"})

-- manage window splits
keymap.set("n", "<leader>sv", "<C-w>v", {desc = "Split window vertically"})
keymap.set("n", "<leader>sh", "<C-w>s", {desc = "Split window horizontally"})
keymap.set("n", "<leader>se", "<C-w>=", {desc = "Make splits same size"})
keymap.set("n", "<leader>sx", "<cmd>close<CR>", {desc = "Close current split"})

keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
