return {
    "ahmedkhalf/project.nvim",
    config = function()
        require("project_nvim").setup {
            patterns = { ".git", ".xcodeproject", "go.mod", "Makefile" }
        }
    end
}
