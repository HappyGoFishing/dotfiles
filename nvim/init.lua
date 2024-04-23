-- OG vim commands
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
-- Bind vim leader key to space
vim.g.mapleader = " "

-- Installs lazy.nvim 
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local plugins = {
    { "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...},
    { "nvim-telescope/telescope.nvim", tag = "0.1.6", dependencies = { "nvim-lua/plenary.nvim" } },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" }
}

local opts = {
}


require("lazy").setup(plugins, opts)
 

-- telescope 
local builtin = require("telescope.builtin")
-- Bind find_files to control+p
vim.keymap.set("n", "<C-p>", builtin.find_files, {})

vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})


-- treesitter
local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = {"lua", "c"},
    highlight = { enable = true },
    indent = { enable = true }
})

require("gruvbox").setup()
vim.cmd("colorscheme gruvbox")