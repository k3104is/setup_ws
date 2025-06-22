vim.cmd [[packadd packer.nvim]]

require("packer").startup(function(use)
  -- Packer本体
  use "wbthomason/packer.nvim"

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

  -- ステータスライン
  use "nvim-lualine/lualine.nvim"

  -- Git
  use "lewis6991/gitsigns.nvim"
  use "kdheepak/lazygit.nvim"

  -- キーマップ可視化
  use "folke/which-key.nvim"
end)