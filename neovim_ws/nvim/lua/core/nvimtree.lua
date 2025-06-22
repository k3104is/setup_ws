require("nvim-tree").setup({
  view = {
    width = 35,
    side = "left",
    number = false,
    relativenumber = false,
  },
  renderer = {
    highlight_git = true,
    highlight_opened_files = "icon",
    indent_markers = {
      enable = true,
    },
  },
  filters = {
    dotfiles = false,
    custom = { ".git", "node_modules", ".cache" },
  },
  git = {
    enable = true,
    ignore = false,
  },
})

-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     require("nvim-tree.api").tree.open()
--   end
-- })