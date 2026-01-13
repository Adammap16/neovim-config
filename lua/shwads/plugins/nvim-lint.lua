return {
    "mfussenegger/nvim-lint",
    config = function()
    -- Set pylint as the linter for Python files
    require('lint').linters_by_ft = {
        python = { 'pylint', "flake8" }
    }

    -- Auto-run lint on buffer save
    vim.api.nvim_create_autocmd({"BufWritePost"}, {
        callback = function()
        require("lint").try_lint()
        end,
    })

    -- Configure pylint to run using the current virtualenv's python
    require('lint').linters.pylint.cmd = 'python'
    require("lint").linters.pylint.args = { "-m", "pylint", "-f", "json", "--disable=C0114,C0115,C0116,C0209,E0402,E0401,E0611,E1101", "--from-stdin", function() return vim.api.nvim_buf_get_name(0) end, }
    end
}
