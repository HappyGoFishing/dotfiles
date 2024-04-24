return { 
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",

    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = {"lua", "c"},
            highlight = { enable = true },
            indent = { enable = true }
        })
        vim.keymap.set("n", "<C-e>", ":Neotree filesystem toggle<CR>", {})

    end
}



