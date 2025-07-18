vim.g.mapleader = " "

local keymap = vim.keymap

-- ---------- 输入模式 ----------
keymap.set("i", "jj", "<ESC>")

-- ---------- 视觉模式 ----------
-- 单行或者多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ----------
-- 窗口
keymap.set("n", "sl", "<C-w>v")
keymap.set("n", "sb", "<C-w>s")
-- 鼠标移动
keymap.set("n", "H", "^")
keymap.set("n", "L", "$")
-- keymap.set("n", "<C-j>", "5j")
-- keymap.set("n", "<C-k>", "5k", { desc = "Go to upper", remap = true })
-- keymap.set("n", "<C-h>", "7h", { remap = true })
-- keymap.set("n", "<C-l>", "7l", { remap = true })
-- 保存退出
keymap.set("n", "Q", ":q<CR>")
keymap.set("n", "W", ":w<CR>")
keymap.set("n", "<leader>q", ":qa<CR>")
keymap.set({ "n", "i" }, "<C-z>", "<Cmd>undo<CR>")
keymap.set("n", "R", ":w<CR>:source $MYVIMRC<CR>")

-- 粘贴复制
keymap.set("n", "mm", "\"_dd")

-- 快速使用命令
keymap.set("n", ";", ":")

-- 取消高亮
keymap.set("n", "<leader><CR>", ":nohl<CR>")

-- 插件
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- bufferline
keymap.set("n", "fj", ":bnext<CR>")
keymap.set("n", "fk", ":bprevious<CR>")

-- hop
keymap.set("n", "<leader>s", ":HopWord<CR>")

-- lspsaga
keymap.set("n", "<leader>lR", ":Lspsaga finder<CR>")
keymap.set("n", "<leader>lr", ":Lspsaga rename<CR>")
keymap.set("n", "<leader>ld", ":Lspsaga goto_definition<CR>")
keymap.set("n", "<leader>lh", ":Lspsaga hover_doc<CR>")
keymap.set("n", "<leader>lc", ":Lspsaga code_action<CR>")
keymap.set("n", "<leader>ln", ":Lspsaga diagnostic_jump_next<CR>")
keymap.set("n", "<leader>lp", ":Lspsaga diagnostic_jump_prev<CR>")

-- gitsigns
keymap.set("n", "gs", ":Gitsigns preview_hunk_inline<CR>")
keymap.set("n", "gr", ":Gitsigns reset_hunk<CR>")

-- misc
keymap.set("n", "s", "<nop>")
