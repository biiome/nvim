local keymap = vim.keymap

-- Set leader key to space
vim.g.mapleader = " "

-- General keymaps
keymap.set("n", "<leader>qq", ":q<CR>", { desc = "Quit", silent = true })
keymap.set("n", "<leader>ww", ":w<CR>", { desc = "Save File", silent = true })
keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "Save and Quit", silent = true })
keymap.set({ "n", "v" }, "<ESC>", ":noh<CR>", { desc = "Clear Highlights", silent = true })
keymap.set("i", "jk", "<Esc>", { noremap = true })
keymap.set("n", "<S-q>", ":bd<CR>", { desc = "Close Buffer", silent = true })
keymap.set("n", "A", "^i", { desc = "Enter Insert Mode at EOL", noremap = true })
keymap.set("n", "I", "$a", { desc = "Enter Insert Mode at SOL", noremap = true })

-- Split window management
keymap.set("n", "<leader>s|", "<C-w>v", { desc = "Split Vertically" })
keymap.set("n", "<leader>s-", "<C-w>s", { desc = "Split Horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make split windows equal width" })
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Close Window" })
keymap.set("n", "<leader>sj", "<C-w>-", { desc = "Decrease Split Height" })
keymap.set("n", "<leader>sk", "<C-w>+", { desc = "Increase Split Height" })
keymap.set("n", "<leader>sl", "<C-w>>5", { desc = "Increase Split Width" })
keymap.set("n", "<leader>sh", "<C-w><5", { desc = "Decrease Split Width" })

--- Vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { desc = "Toggle Maximize Tab" })

-- Tab management
keymap.set("n", "<Tab>", vim.cmd.bp, { desc = "Next Tab" })

-- Quickfix keymaps
keymap.set("n", "<leader>qn", ":cnext<CR>", { desc = "Next Quickfix Item" })
keymap.set("n", "<leader>qp", ":cprev<CR>", { desc = "Previous Quickfix Item" })

-- Nvim-tree
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", { desc = "File Explorer" })

-- Telescope
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find Files" })
keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live Grep" })
keymap.set("n", "<leader>fw", builtin.current_buffer_fuzzy_find, { desc = "Word Search" })
keymap.set("n", "<leader>fo", builtin.lsp_document_symbols, { desc = "Document Symbols" })
keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find Help" })
keymap.set("n", "<leader>fm", function()
  require("telescope.builtin").treesitter({ default_text = ":method:", desc = "Methods" })
end, { desc = "Document Methods" })

-- Git-stuff
keymap.set("n", "<leader>Gp", ":Gitsigns preview_hunk<CR>", { desc = "Preview Hunk" })
keymap.set("n", "<leader>G", ":Fugit2<CR>", { desc = "Open Fugit2" })
-- keymap.set("n", "<leader>G", ":Git<CR>")

-- Harpoon
keymap.set("n", "<leader>ha", require("harpoon.mark").add_file, { desc = "Add File" })
keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu, { desc = "Harpoon Menu" })
keymap.set("n", "<leader>hs", function()
  require("harpoon.ui").nav_file(1)
end, { desc = "File 1" })
keymap.set("n", "<leader>hd", function()
  require("harpoon.ui").nav_file(2)
end, { desc = "File 2" })
keymap.set("n", "<leader>hf", function()
  require("harpoon.ui").nav_file(3)
end, { desc = "File 3" })
keymap.set("n", "<leader>hg", function()
  require("harpoon.ui").nav_file(4)
end, { desc = "File 4" })

-- LSP
keymap.set("n", "<leader>gg", "<cmd>lua vim.lsp.buf.hover()<CR>", { desc = "Hover Information" })
keymap.set("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Definition" })
keymap.set("n", "<leader>gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "Declaration" })
keymap.set("n", "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { desc = "Implementations" })
keymap.set("n", "<leader>gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", { desc = "Type Definition" })
keymap.set("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>", { desc = "References" })
keymap.set("n", "<leader>gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { desc = "Signature Information" })
keymap.set("n", "<leader>rm", "<cmd>lua vim.lsp.buf.rename()<CR>", { desc = "Rename Symbol" })
keymap.set("n", "<leader>gf", "<cmd>lua vim.lsp.buf.format({async = true})<CR>", { desc = "Format" })
keymap.set("v", "<leader>gf", "<cmd>lua vim.lsp.buf.format({async = true})<CR>", { desc = "Format" })
keymap.set("n", "<leader>ga", "<cmd>lua vim.lsp.buf.code_action()<CR>", { desc = "Code Actions" })
keymap.set("n", "<leader>gl", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "Diagnostics" })
keymap.set("n", "<leader>gp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", { desc = "Prev Disgnostic" })
keymap.set("n", "<leader>gn", "<cmd>lua vim.diagnostic.goto_next()<CR>", { desc = "Next Diagnostic" })
keymap.set("n", "<leader>tr", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", { desc = "Symbols" })
keymap.set("i", "<C-Space>", "<cmd>lua vim.lsp.buf.completion()<CR>", { desc = "Completions" })
