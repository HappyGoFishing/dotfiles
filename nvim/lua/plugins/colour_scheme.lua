return  {
    "Mofiqul/vscode.nvim",
    priority = 1000 ,
    opts = ...,
    config = function()
        local builtin = require('vscode').setup({
            transparent = true,
        })
        vim.cmd("colorscheme vscode")
    end

}
