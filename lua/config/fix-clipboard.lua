vim.opt.clipboard = "unnamedplus"

if vim.fn.executable("xclip") == 1 then
	local function preserve_clipboard()
		vim.fn.system({ "xclip", "-i", "-selection", "clipboard" }, vim.fn.getreg("+"))
	end

	local function preserve_clipboard_and_suspend()
		preserve_clipboard()
		vim.cmd("suspend")
	end

	vim.api.nvim_create_autocmd("VimLeave", {
		callback = preserve_clipboard,
	})

	vim.keymap.set({ "n", "v" }, "<C-z>", preserve_clipboard_and_suspend, {
		silent = true,
	})
end

vim.keymap.set({ "n", "x" }, "x", '"_x', { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "d", '"_d', { noremap = true, silent = true })
vim.keymap.set({ "n", "x" }, "D", '"_D', { noremap = true, silent = true })
