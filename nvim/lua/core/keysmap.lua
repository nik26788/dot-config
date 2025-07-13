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

-- 快速使用命令
keymap.set("n", ";", ":")

-- 取消高亮
keymap.set("n", "<leader><CR>", ":nohl<CR>")

-- 插件
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- bufferline
keymap.set("n", "<S-j>", ":bnext<CR>") 
keymap.set("n", "<S-k>", ":bprevious<CR>")
