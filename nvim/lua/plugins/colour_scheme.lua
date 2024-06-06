return  {
    "Mofiqul/vscode.nvim",
    priority = 1000 ,
    opts = ...,
    config = true,

    config = function()
        vim.cmd("colorscheme vscode")
    end

}
