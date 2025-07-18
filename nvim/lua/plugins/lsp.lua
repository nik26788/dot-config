require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup({
    -- 确保安装，根据需要填写
    ensure_installed = {
        "lua_ls",
        "ts_ls",
    },
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").lua_ls.setup {
    capabilities = capabilities,
}

require("lspconfig").ts_ls.setup {
    -- filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' },
    -- init_options = {
    --     plugins = {
    --         {
    --             name = '@vue/typescript-plugin',
    --             location = vim.fn.stdpath 'data' .. '/mason/packages/vue-language-server/node_modules/@vue/language-server',
    --             languages = { 'vue' },
    --         },
    --     },
    -- },
}

vim.diagnostic.config({
    virtual_text = true,     -- show tips
    update_in_insert = true, -- show tips realtimely
})
