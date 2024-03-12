-- function ColorMyPencils(color)
-- 	color = color or "rose-pine"
-- 	vim.cmd.colorscheme(color)
--
-- 	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
-- 	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end
--
-- return {
--
-- 	{
-- 		"rose-pine/neovim",
-- 		name = "rose-pine",
-- 		config = function()
-- 			require("rose-pine").setup({
-- 				disable_background = true,
-- 			})
--
-- 			vim.cmd("colorscheme rose-pine")
--
-- 			ColorMyPencils()
-- 		end,
-- 	},
-- }
--
function ColorMyPencils(color)
	color = color or "midnight"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

local M = {
	"dasupradyumna/midnight.nvim",
	lazy = false,
	priority = 1000,
}

function M.config()
	vim.cmd.colorscheme("midnight")
	ColorMyPencils()
end
return M
