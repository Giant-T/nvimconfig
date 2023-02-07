require("rose-pine").setup({
	disable_italics = true,
})

function SetColors(color)
	color = color or "rose-pine"

	vim.cmd.colorscheme(color)
end

SetColors()
