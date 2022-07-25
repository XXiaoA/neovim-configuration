local mason_lspconfig = require("utils").requirePlugin("mason-lspconfig")
local lspconfig = require("utils").requirePlugin("lspconfig")
if not mason_lspconfig or not lspconfig then
    return
end

---@diagnostic disable-next-line: unused-local
local on_attach = function(client, bufnr)
    local nmap = require("core.keymap").set_keymap("n")
    nmap({ "<leader>rn", vim.lsp.buf.rename, { buffer = bufnr } })
    nmap({ "<space>ca", vim.lsp.buf.code_action, { buffer = bufnr } })
    nmap({ "gh", vim.lsp.buf.hover, { buffer = bufnr } })
    nmap({ "gd", vim.lsp.buf.definition, { buffer = bufnr } })
    nmap({ "gD", vim.lsp.buf.declaration, { buffer = bufnr } })
    nmap({ "gi", vim.lsp.buf.implementation, { buffer = bufnr } })
    nmap({ "gr", vim.lsp.buf.references, { buffer = bufnr } })
    nmap({ "go", vim.diagnostic.open_float, { buffer = bufnr } })
    nmap({ "gp", vim.diagnostic.goto_prev, { buffer = bufnr } })
    nmap({ "gn", vim.diagnostic.goto_next, { buffer = bufnr } })
    nmap({ "gk", vim.lsp.buf.signature_help, { buffer = bufnr } })
    nmap({ "<leader>=", vim.lsp.buf.formatting, { buffer = bufnr } })
    -- nmap({ "<leader>q", vim.diagnostic.setloclist, { buffer = bufnr } })
    -- nmap({ '<space>wa', vim.lsp.buf.add_workspace_folder, { buffer = bufnr }'})
    -- nmap({ '<space>wr', vim.lsp.buf.remove_workspace_folder, { buffer = bufnr }'})
    -- nmap({ '<space>wl', print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>, { buffer = bufnr }'})
    -- nmap({ '<space>D', lua vim.lsp.buf.type_definition, { buffer = bufnr }'})
end

mason_lspconfig.setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({
            on_attach = on_attach,
        })
    end,
})