local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

vim.g.mapleader = ' '

map('n', '<leader>w', ':set nowrap<CR>', opts)

-- Terminal
map('n', '<C-t>', ':terminal<CR>', opts)
map('t', '<C-i>', [[<C-\><C-n>]], opts)

-- FZF
map('n', '<C-l>', ':Lines<CR>', opts)
map('n', '<C-m>', ':Marks<CR>', opts)
map('n', '<C-f>', ':Files<CR>', opts)
map('n', '<C-b>', ':Buffers<CR>', opts)

-- LSP
map('n', 'gd', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
map('n', 'gR', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
map('n', 'gD', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)

-- Telescope
map('n', '<leader>f', '<cmd>Telescope find_files<CR>', opts)
map('n', 'F', '<cmd>Telescope live_grep<CR>', opts)

-- nvim-tree
map('n', '<leader>t', ':NvimTreeToggle<CR>', opts)
map('n', 'gf', ':NvimTreeFindFile<CR>', opts)

-- Windows
map('n', '<leader><Left>', '<C-w><C-w>', opts)  -- Switch between windows

-- Selected text moving
map('v', '>', '>gv', opts)
map('v', '<', '<gv', opts)
map('v', '<S-Up>', ':m \'<-2<CR>gv=gv', opts)
map('v', '<S-Down>', ':m \'>+1<CR>gv=gv', opts)

-- Tabline
-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-Left>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
map('n', '<A-Right>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A-S-Left>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
map('n', '<A-S-Right>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Close current tab
map('n', '<leader>q', '<Cmd>BufferClose<CR>', opts)
