function ColorMyPencils(color)
	-- Colorscheme
	color = color or "tokyonight-night"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
