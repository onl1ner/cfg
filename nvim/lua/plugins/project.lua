return {
    "coffebar/neovim-project",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope.nvim",
        "Shatur/neovim-session-manager",
    },
    config = function()
        require("neovim-project").setup {
            projects = {
                "~/Projects/*",
                "~/.config/*",
            },
            dashboard_mode = true,
        }
    end
}
