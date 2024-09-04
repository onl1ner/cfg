return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "wojciech-kulik/xcodebuild.nvim",
        "leoluz/nvim-dap-go"
    },
    config = function()
        local dap = require("dap")

        dap.adapters.godot = {
            type = "server",
            host = "127.0.0.1",
            port = 6006,
        }

        dap.configurations.gdscript = {
            {
                type = "godot",
                request = "launch",
                name = "Launch scene",
                project = "${workspaceFolder}",
                launch_scene = true,
            },
        }
    end
}
