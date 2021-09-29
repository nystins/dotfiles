vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
  use {
    'wbthomason/packer.nvim',
    event = "VimEnter"
  }
  -- theme
  use {'sainnhe/everforest'}

  -- -- surround text in [,{,(
  -- use {
  --   'blackCauldron7/surround.nvim',
  --   config = function()
  --     require"surround".setup{}
  --   end,
  -- }

  use{'tpope/vim-surround'}

  -- lsp
  use {
    'neovim/nvim-lspconfig',
    config = function()
      require 'config.lspconfig'
    end,
  }

  -- helper for LSP
  use {
    'kabouzeid/nvim-lspinstall',
  }

  -- able to comment through "gc" cmd
  use {
    'terrortylor/nvim-comment',
    config = function()
      require 'config.comment'
    end,
  }

  -- view live changes to markdown file
  use {
    'iamcco/markdown-preview.nvim',
    ft = 'markdown',
    run = 'cd app && yarn install'
  }

  -- treesitter: syntax highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require 'config.treesitter'
    end,
  }

  -- telescope: plenary, fzf, media_files
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-media-files.nvim'},
      {'nvim-lua/popup.nvim'},
      {'nvim-telescope/telescope-fzf-native.nvim',
        run = 'make',
      },
    },
    config = function()
      require'config.telescope'
    end,
  }


  -- nvimtree
  use {
    'kyazdani42/nvim-tree.lua',
    cmd = 'NvimTreeToggle',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require 'config.nvimtree'
    end
  }

  -- pair open and close'',"",(),[],{}
  use {
    'windwp/nvim-autopairs',
    after = 'nvim-cmp',
    config = function()
      require 'config.autopairs'
    end,
  }

  -- snippets
  use {
    'hrsh7th/nvim-cmp',
    config = function()
      require 'config.cmp'
    end,
  }

  use {
    'L3MON4D3/LuaSnip',
    config = function()
      require 'config.luasnip'
    end
  }

  use {
    'onsails/lspkind-nvim',
    config = function()
      require 'config.lspkind'
    end
  }

  use {
    'saadparwaiz1/cmp_luasnip',
    'hrsh7th/cmp-nvim-lua',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'rafamadriz/friendly-snippets',
   }

end)
