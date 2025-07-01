local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

require("telescope").setup({
  defaults = {
    mappings = {
      i = {
        ["<M-v>"] = actions.select_vertical,   -- Alt+v（Mac: Option+v）
        ["<M-s>"] = actions.select_horizontal, -- Alt+s（splitのs）
        ["<M-t>"] = actions.select_tab,        -- Alt+t（タブ）
        ["jj"] = function(bufnr) actions.close(bufnr) end,  -- ←ここが追加部分
      }
    }
  }
})

-- プレビューウィンドウに行番号を付ける
vim.api.nvim_create_autocmd("User", {
  pattern = "TelescopePreviewerLoaded",
  callback = function()
    vim.wo.number = true
  end,
})
