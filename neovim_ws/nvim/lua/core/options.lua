vim.g.mapleader = ' '
vim.o.number = true
vim.o.relativenumber = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.opt.softtabstop = 2
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.termguicolors = true
vim.o.clipboard = 'unnamedplus'
vim.o.completeopt = 'menuone,noselect'

vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false

vim.o.splitright = true
vim.o.splitbelow = true
vim.o.equalalways = false

vim.o.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50"

-- 自動コメント補完を完全に無効化
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.opt_local.formatoptions:remove({ "c", "r", "o" })
  end,
})
