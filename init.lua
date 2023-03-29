local o = vim.o
local g = vim.g

o.number = true
o.relativenumber = true
o.tabstop = 4
o.shiftwidth = 4

g.mapleader = ' '
g.leader = ' '
require('lazy-p')
require('p-lsp')

vim.cmd("colo rose-pine")

