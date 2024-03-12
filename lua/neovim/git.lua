return {
	"tpope/vim-fugitive",
	"github/copilot.vim",
	config = function()
		vim.keymap.set("n", "<leader>gg", ":Git<CR>", {})
		vim.api.nvim_set_keymap("n", "<leader>gs", ":Git status<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>ga", ":Git add<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>gc", ":Git commit<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>gb", ":Git branch<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>gd", ":Git diff<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>gl", ":Git log<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>gp", ":Git push<CR>", { noremap = true, silent = true })
		vim.api.nvim_set_keymap("n", "<leader>gj", ":Git pull<CR>", { noremap = true, silent = true })

		vim.keymap.set("n", "gu", "<cmd>diffget //2<CR>")
		vim.keymap.set("n", "gh", "<cmd>diffget //3<CR>")
	end,
}
