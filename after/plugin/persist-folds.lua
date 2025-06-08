return	{
	"nvim-persistent-folds",
	lazy = false,
	config = function()
		vim.opt.viewOptions:append("cursor")
		vim.opt.viewOptions:remove("options")

		local group = vim.api.nvim_create_augroup("remember_folds", { clear = true })

		vim.api.nvim_create_autocmd("BufWinLeave", {
			group = group,
			pattern = "*",
			command = "silent! mkview",
		})

		vim.api.nvim_create_autocmd("BufWinEnter", {
			group = group,
			pattern = "*",
			command = "silent! loadview",
		})
	end,
}
