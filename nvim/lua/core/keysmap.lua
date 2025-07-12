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

-- 快速使用命令
keymap.set("n", ";", ":")

-- 取消高亮
keymap.set("n", "<leader><CR>", ":nohl<CR>")
