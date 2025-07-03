vim.cmd [[packadd packer.nvim]]

require("packer").startup(function(use)
  -- Packer本体
  use "wbthomason/packer.nvim"

  -- アイコン
  use "nvim-tree/nvim-web-devicons"
  
  -- テーマ
  use { "catppuccin/nvim", as = "catppuccin" }

  -- LSP & 補完
  use "neovim/nvim-lspconfig"
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "L3MON4D3/LuaSnip"

  -- ファジー検索・ナビゲーション
  use "nvim-lua/plenary.nvim"
  use "nvim-telescope/telescope.nvim"
  use "nvim-tree/nvim-tree.lua"
  use "kevinhwang91/nvim-hlslens"

  -- tab
  use "romgrk/barbar.nvim"
  
  -- インデント
  use "shellRaining/hlchunk.nvim"

  -- コメント
  use "numToStr/Comment.nvim"

  -- ステータスライン
  use "nvim-lualine/lualine.nvim"

  -- Git
  use "lewis6991/gitsigns.nvim"
  use "kdheepak/lazygit.nvim"
  use "sindrets/diffview.nvim"
  use "tpope/vim-fugitive"

  -- キーマップ可視化
  use "folke/which-key.nvim"

  -- トグル最大化
  use 'szw/vim-maximizer'

  -- 構文解析プラグイン
  use {
  "nvim-treesitter/nvim-treesitter",
  run = ":tsupdate"
  }
  use {
    "nvim-treesitter/nvim-treesitter-textobjects",
    after = "nvim-treesitter"
  }
end)
