local M = {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make", lazy = true },
	},
}

function M.config()
	local telescope = require("telescope")
	telescope.load_extension("fzf")
	local builtin = require("telescope.builtin")

	-- set keymaps
	local keymap = vim.keymap

	keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
	keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Find Oldfiles" })
	keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
	keymap.set(
		"n",
		"<leader>fa",
		"<cmd>Telescope find_files follow=true no_ignore=true hidden=true<cr>",
		{ desc = "Find all" }
	)
	keymap.set(
		"n",
		"<leader>fw",
		"<cmd> Telescope current_buffer_fuzzy_find<cr>",
		{ desc = "Find string under cursor in cwd" }
	)
	keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "find buffers" })

	keymap.set("n", "<leader>ps", function()
		builtin.grep_string({
			search = vim.fn.input("Grep > "),
			prompt_title = "Grep Results",
		})
	end)
end

return M
