vim.g.mapleader = " "

-- file
vim.keymap.set("n", "<Leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<Leader>fg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<Leader>fb", "<Cmd>Telescope buffers<CR>")
vim.keymap.set("n", "<Leader>fh", "<Cmd>Telescope help_tags<CR>")
vim.keymap.set("n", "<Leader>e",  ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>tf", ":NvimTreeFindFile<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>gg", ":LazyGit<CR>")
vim.keymap.set("n", "<Leader>f", function()
  require("nvim-tree.api").tree.find_file({ open = true })
end, { desc = "ツリーで現在のファイルを探す" })
vim.keymap.set("n", "<Leader>/", function()
  require("telescope.builtin").current_buffer_fuzzy_find()
end, { desc = "現在のバッファ内をファジー検索" })

-- lsp
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "gr", vim.lsp.buf.references, { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)

-- edit
vim.keymap.set("n", "<Leader>w", ":w<CR>")
vim.keymap.set("n", "<Leader>q", ":q<CR>")
vim.keymap.set("n", "<Leader>q!", ":q!<CR>")
vim.keymap.set("n", "<Leader>x", ":wq<CR>")
vim.keymap.set('i', 'jj', '<Esc>', { noremap = true })
vim.keymap.set("n", "<Leader>fm", function() vim.lsp.buf.format({ async = true }) end)
vim.keymap.set("n", "<Leader>sr", [[:%s/\<<C-r><C-w>\>//gI<Left><Left><Left>]], { desc = "カーソル下の単語を全置換" })
vim.keymap.set("n", "<Leader>sc", [[:%s///gc<Left><Left><Left><Left>]], { desc = "確認付き置換" })
vim.keymap.set("v", "<Leader>sr", [[:s///g<Left><Left><Left>]], { desc = "選択範囲を置換" })
-- ノーマルモードとインサートモード両対応で Ctrl-a / Ctrl-e にする（VSCode風）
vim.keymap.set("n", "<C-a>", "^")
vim.keymap.set("n", "<C-e>", "$")
vim.keymap.set("i", "<C-a>", "<Esc>^i")
vim.keymap.set("i", "<C-e>", "<Esc>$a")
-- トグル最大化
vim.keymap.set("n", "<Leader>m", ":MaximizerToggle<CR>", { desc = "ウィンドウ最大化切替" })

-- window
-- ファイルブラウザや Telescope で選んだファイルを右側に開く
vim.keymap.set("n", "<Leader>sv", ":vsplit<CR>", { desc = "垂直分割" })
vim.keymap.set("n", "<Leader>sh", ":split<CR>",  { desc = "水平分割" })

-- commentout
vim.keymap.set("v", "<Leader>ci", function()
  local start_line = vim.fn.line("'<")
  local end_line = vim.fn.line("'>")

  vim.fn.append(start_line - 1, "#if 0")
  vim.fn.append(end_line + 1, "#endif")
end, { desc = "#if0 コメントアウト" })

-- git
vim.keymap.set("n", "<Leader>gg", ":LazyGit<CR>")
vim.keymap.set('n', '<leader>hr', require('gitsigns').reset_hunk, { desc = 'Reset Hunk' })
vim.keymap.set('n', '<leader>hs', require('gitsigns').stage_hunk, { desc = 'Stage Hunk' })
vim.keymap.set('n', ']c', require('gitsigns').next_hunk, { desc = 'Next Hunk' })
vim.keymap.set('n', '[c', require('gitsigns').prev_hunk, { desc = 'Prev Hunk' })
vim.keymap.set("n", "<Leader>gp", function() require("gitsigns").preview_hunk() end)
vim.keymap.set("n", "<Leader>dv", ":DiffviewOpen<CR>", { silent = true })
vim.keymap.set("n", "<Leader>dh", ":DiffviewFileHistory<CR>", { silent = true })
vim.keymap.set("n", "<Leader>dc", ":DiffviewClose<CR>", { silent = true })
-- init.lua / plugins.lua などで

-- move
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Move to previous/next
vim.keymap.set('n', '<S-h>', '<Cmd>BufferPrevious<CR>', { silent = true })
vim.keymap.set('n', '<S-l>', '<Cmd>BufferNext<CR>', { silent = true })
-- 現在のタブを閉じる
vim.keymap.set("n", "<Leader>tc", ":tabclose<CR>", { desc = "タブを閉じる" })
-- 他のタブを全部閉じる（現在のタブだけ残す）
vim.keymap.set("n", "<Leader>to", ":tabonly<CR>", { desc = "現在のタブ以外を閉じる" })
-- Go to buffer N (1〜9)
for i = 1, 9 do
  vim.keymap.set('n', ('<A-%d>'):format(i), ('<Cmd>BufferGoto %d<CR>'):format(i), { silent = true })
end
-- Close buffer
vim.keymap.set('n', '<A-c>', '<Cmd>BufferClose<CR>', { silent = true })
-- Magic buffer-picking mode (タブを文字で選ぶ)
vim.keymap.set('n', '<A-p>', '<Cmd>BufferPick<CR>', { silent = true })

-- snipet
local ls = require("luasnip")

-- terminal
-- 上に開くターミナル
vim.keymap.set("n", "<Leader>tu", "<Cmd>topleft split<CR><Cmd>resize 5<CR><Cmd>terminal<CR><Cmd>startinsert<CR>", { desc = "上にターミナル" })
-- 下に開くターミナル
vim.keymap.set("n", "<Leader>td", "<Cmd>botright split<CR><Cmd>resize 5<CR><Cmd>terminal<CR><Cmd>startinsert<CR>", { desc = "下にターミナル" })
-- 右に開くターミナル（垂直分割）
vim.keymap.set("n", "<Leader>tr", "<Cmd>vsplit<CR><Cmd>terminal<CR><Cmd>startinsert<CR>", { desc = "右にターミナル" })
-- 左に開くターミナル（垂直分割）
vim.keymap.set("n", "<Leader>tl", "<Cmd>leftabove vsplit<CR><Cmd>terminal<CR><Cmd>startinsert<CR>", { desc = "左にターミナル" })
-- Terminal から戻る（Insertモード→Normalモード）
vim.keymap.set("t", "jj", "<C-\\><C-n>", { desc = "Terminalを抜ける" })

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
