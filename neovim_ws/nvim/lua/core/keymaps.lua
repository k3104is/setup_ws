vim.g.mapleader = " "

-- file
vim.keymap.set("n", "<Leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<Leader>fg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<Leader>tt", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>tf", ":NvimTreeFindFile<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>gg", ":LazyGit<CR>")

-- lsp
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)

-- edit
vim.keymap.set("n", "<Leader>w", ":w<CR>")
vim.keymap.set("n", "<Leader>q", ":q<CR>")
vim.keymap.set("n", "<Leader>fm", function() vim.lsp.buf.format({ async = true }) end)

-- git
vim.keymap.set("n", "<Leader>gg", ":LazyGit<CR>")
vim.keymap.set("n", "]c", function() require("gitsigns").next_hunk() end)
vim.keymap.set("n", "[c", function() require("gitsigns").prev_hunk() end)
vim.keymap.set("n", "<Leader>gp", function() require("gitsigns").preview_hunk() end)
vim.keymap.set("n", "<Leader>dv", ":DiffviewOpen<CR>", { silent = true })
vim.keymap.set("n", "<Leader>dh", ":DiffviewFileHistory<CR>", { silent = true })
vim.keymap.set("n", "<Leader>dc", ":DiffviewClose<CR>", { silent = true })

-- move
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- snipet
local ls = require("luasnip")

vim.keymap.set({ "i", "s" }, "<Tab>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  else
    return "<Tab>"
  end
end, { expr = true })

vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  end
end, { expr = true })
