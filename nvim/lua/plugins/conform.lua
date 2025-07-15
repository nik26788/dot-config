require('conform').setup({
    -- Define your formatters
    formatters_by_ft = {
        lua = { "stylua" },
        python = { "isort", "black" },
        javascript = { "prettierd", "prettier" },
        typescript = { "prettierd", "prettier" },
        javascriptreact = { "prettierd", "prettier" },
        typescriptreact = { "prettierd", "prettier" },
        vue = { "prettierd", "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
    },

    -- Format on save options
    format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
        -- stop_after_first = true,  -- Uncomment if you want to stop after first successful formatter
    },

    -- Custom formatters can still be defined if needed
    -- formatters = {
    --   my_custom_formatter = {
    --     command = "my-formatter",
    --     args = { "--stdin", "$FILENAME" },
    --     stdin = true,
    --   }
    -- },
})

-- Optional: Keymap to format manually
vim.keymap.set({ 'n', 'v' }, '<leader>f', function()
    require('conform').format({ async = false, lsp_fallback = true, })
end, { desc = '[C]ode [F]ormat' })
