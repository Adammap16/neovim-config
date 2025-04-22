return {
    "mfussenegger/nvim-dap",
    dependencies = {
        "mfussenegger/nvim-dap-python",
        -- stylua: ignore
        keys = {
            { "<leader>dPt", function() require('dap-python').test_method() end, desc = "Debug Method" },
            { "<leader>dPc", function() require('dap-python').test_class() end,  desc = "Debug Class" },
        },
    },
}
