return  {
    'f4z3r/gruvbox-material.nvim',
    priority = 1000 ,
    opts = ...,
    config = function()
        local builtin = require('gruvbox-material').setup({
            transparent = true,
        })
        vim.cmd("colorscheme gruvbox-material")
    end

}
