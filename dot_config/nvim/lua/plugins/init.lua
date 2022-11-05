require("plugins.init_packer")

require("packer").startup(function(use)
  -- Package manager
  use { "wbthomason/packer.nvim" }

  ----------------------------------------------------------------------------
  -- Edit
  ----------------------------------------------------------------------------
  -- Automatically close parentheses, brackets
  use {
    "windwp/nvim-autopairs",
    opt = true,
    event = "InsertEnter",
    config = function()
      require "plugins.config.nvim-autopairs"
    end,
  }
  -- Comments
  use {
    'numToStr/Comment.nvim',
    setup = require("mappings").plugins["Comment"].setup(),
    config = function()
      require('Comment').setup()
    end
  }
  -- Enhance "f", "t"
  use {
    "hrsh7th/vim-eft",
    setup = require("mappings").plugins["vim-eft"].setup(),
    config = function()
      require "plugins.config.vim-eft"
    end,
  }
  -- Autocompletion
  use {
    "hrsh7th/nvim-cmp",
    config = function()
      require "plugins.config.nvim-cmp"
    end,
    requires = {
      -- Completion sources
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      -- Snippet engine
      {
        "L3MON4D3/LuaSnip",
        config = function()
          require "plugins.config.luasnip"
        end,
      },
      -- Snippet sources
      "rafamadriz/friendly-snippets",
      -- LSP kind symbols
      {
        "onsails/lspkind-nvim",
        config = function()
          require "plugins.config.lspkind-nvim"
        end,
      },
    },
  }

  ----------------------------------------------------------------------------
  -- Interface 
  ----------------------------------------------------------------------------
  --  File explorer
  use {
    "kyazdani42/nvim-tree.lua",
    -- opt = true,
    -- cmd = { "NvimTreeToggle", "NvimTreeFindFileToggle" },
    setup = require("mappings").plugins["nvim-tree"].setup(),
    config = function()
      require "plugins.config.nvim-tree"
    end,
  }
  -- Startup screen
  use {
    "goolord/alpha-nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require "plugins.config.alpha"
    end,
  }
  -- Bufferline with animations
  use {
    "romgrk/barbar.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    setup = require("mappings").plugins["barbar"].setup(),
    config = function()
      require "plugins.config.barbar"
    end,
  }
  -- Line status
  use {
    "hoob3rt/lualine.nvim",
    config = function()
      require "plugins.config.lualine"
    end,
  }
  -- Which-key
  use {
    "folke/which-key.nvim",
    config = function()
      require "plugins.config.which-key"
    end,
  }
  -- Telescope
  use {
    "nvim-telescope/telescope.nvim",
    requires = "nvim-lua/plenary.nvim",
    setup = require("mappings").plugins["telescope"].setup(),
    config = function()
      require "plugins.config.telescope"
    end,
  }
  -- Git integration
  use {
    "tpope/vim-fugitive",
    config = function()
      require "plugins.config.vim-fugitive"
    end,
  }

  ----------------------------------------------------------------------------
  -- LSP integration
  ----------------------------------------------------------------------------
  use {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  }
  use {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup()
    end,
  }
  use {
    "neovim/nvim-lspconfig",
    setup = require("mappings").plugins["lspconfig"].setup(),
    config = function()
      require "plugins.config.lspconfig"
    end,
  }
  -- Use NeoVim as a LSP server (Used for formatting)
  use {
    "jose-elias-alvarez/null-ls.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require "plugins.config.null-ls"
    end,
  }
  -- Diagnostic with LSP
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    setup = require("mappings").plugins["trouble"].setup(),
    config = function()
      require "plugins.config.trouble"
    end,
  }
  -- Outline for symbols using LSP
  use {
    "simrat39/symbols-outline.nvim",
    setup = require("mappings").plugins["symbols-outline"].setup(),
    config = function()
      require "plugins.config.symbols-outline"
    end,
  }

  ----------------------------------------------------------------------------
  -- Visualizing 
  ----------------------------------------------------------------------------
  -- TreeSitter
  use {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require "plugins.config.nvim-treesitter"
    end,
  }
  -- Visualize indents
  use {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require "plugins.config.indent-blankline"
    end,
  }
  -- Visualize git status
  use {
    "lewis6991/gitsigns.nvim",
    config = function()
      require "plugins.config.gitsigns"
    end,
  }
  -- Color visualizer
  use {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require "plugins.config.nvim-colorizer"
    end,
  }
  --
  ----------------------------------------------------------------------------
  -- Colorschemes 
  ----------------------------------------------------------------------------
  use "folke/tokyonight.nvim"
end)
