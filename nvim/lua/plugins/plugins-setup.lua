vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use) 
    -- step 1
    use "wbthomason/packer.nvim"
    -- step 2 theme
    use "folke/tokyonight.nvim"
    -- step 3 status line
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    -- step 4 document tree, like nerdtree
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {
        'nvim-tree/nvim-web-devicons', -- optional
      },
    }
    -- step 5 using hjkl to move cursor between pannels
    use "christoomey/vim-tmux-navigator"

    -- step 6 syntax highlight
    use "nvim-treesitter/nvim-treesitter"
    use "p00f/nvim-ts-rainbow"

    -- step 7 lsp
    use {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig"
    }
    use {
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
      "hrsh7th/cmp-path",
    }
end)
