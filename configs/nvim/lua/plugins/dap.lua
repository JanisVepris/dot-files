return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "leoluz/nvim-dap-go",
            "nvim-neotest/nvim-nio",
            "rcarriga/nvim-dap-ui",
            "theHamsta/nvim-dap-virtual-text",
        },
        config = function()
            local dap = require("dap")
            local ui = require("dapui")
            local dapgo = require("dap-go")
            require("dapui").setup()
            require("nvim-dap-virtual-text").setup()
            dapgo.setup({
                dap_configurations = {
                    {
                        type = "go",
                        name = "Debug .",
                        request = "launch",
                        program = ".",
                    },
                    {
                        type = "go",
                        name = "Debug . (args)",
                        request = "launch",
                        program = ".",
                        args = dapgo.get_arguments,
                    },
                },
            })

            vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint)
            vim.keymap.set("n", "<leader>dB", function()
                dap.toggle_breakpoint(vim.fn.input("Condition: "))
            end)
            vim.keymap.set("n", "<leader>dgb", dap.run_to_cursor)

            vim.keymap.set("n", "<leader>d<Right>", dap.step_over)
            vim.keymap.set("n", "<leader>d<Down>", dap.step_into)
            vim.keymap.set("n", "<leader>d<Up>", dap.continue)
            vim.keymap.set("n", "<leader>od", ui.open)
            vim.keymap.set("n", "<leader>cd", ui.close)

            dap.listeners.before.attach.dapui_config = function()
                ui.open()
            end

            dap.listeners.before.launch.dapui_config = function()
                ui.open()
            end

            dap.listeners.before.event_terminated.dapui_config = function()
                ui.close()
            end

            dap.listeners.before.event_exited = function()
                ui.close()
            end
        end,
    },
}
