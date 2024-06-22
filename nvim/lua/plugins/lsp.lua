return {
	"neovim/nvim-lspconfig",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		{ "antosha417/nvim-lsp-file-operations", config = true },
	},
	config = function()
		local lspconfig = require("lspconfig")

        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        local on_attach = function(_, bufnr)
            local opts = {
                noremap = true,
                silent = true,
                buffer = bufnr
            }

            vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
            vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        end

		lspconfig.sourcekit.setup {
			capabilities = capabilities,
            on_attach = on_attach
		}

        lspconfig.gopls.setup {
            capabilities = capabilities,
            on_attach = on_attach,
            cmd = { "gopls" }, 
            filetypes = { "go", "gomod", "gowork", "gotmpl" },
            settings = {
                gopls = {
                    completeUnimported = true
                },
            }
        }
	end,
}
