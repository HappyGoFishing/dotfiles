return {
    {
        "williamboman/mason.nvim",
	    config = function()
            require("mason").setup()
	    end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } }
                    }
                }
            })

            lspconfig.rust_analyzer.setup({
                settings = {
                    ["rust-analyzer"] = {
                        cargo = {
                            allFeatures = true,
                        },
                    },
                },
            })
            lspconfig.clangd.setup({})
            lspconfig.zls.setup({
                capabilities = capabilities,
                on_attach = on_attach,
                cmd = { "zls" },
                filetypes = { "zig", "zir" },
                root_dir = lspconfig.util.root_pattern("zls.json", "build.zig", ".git"),
                single_file_support = true,
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {})
        end
    }
}
