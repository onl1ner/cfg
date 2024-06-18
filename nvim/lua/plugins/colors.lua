function Color(color)
	color = color 

	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    "rebelot/kanagawa.nvim",
    config = function()
        require("kanagawa").setup {
            compile = true,
            transparent = false,
            theme = "wave"
        }
        Color("kanagawa")
    end
}
