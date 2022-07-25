local use = require("core.packer").add_plugin

-- lspconfig
use({ "neovim/nvim-lspconfig" })

use({
    "williamboman/mason.nvim",
    branch = "main",
    config = function()
        require("config.lsp.mason")
    end,
})
use({ "williamboman/mason-lspconfig.nvim" })

-- lsp_signature
use({ "ray-x/lsp_signature.nvim", config = "require('config.lsp.lsp-signature')" })


require("config.lsp.setup")
