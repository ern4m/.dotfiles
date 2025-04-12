function Color(color)
	-- color = color or "tokyonight-night"
	-- vim.cmd.colorscheme(color)

    vim.go.background = "light" -- or "light" for light mode
    vim.cmd([[colorscheme gruvbox]])

	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) 
end

Color()
