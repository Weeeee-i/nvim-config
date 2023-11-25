local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local map = vim.keymap.set

map( "n", "<A-t>", ":NvimTreeToggle<CR>", opts )
