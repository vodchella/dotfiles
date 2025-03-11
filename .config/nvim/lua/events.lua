local api = vim.api

api.nvim_create_autocmd(
   { 'InsertLeave' },
   { pattern = '*', command = 'set nocursorcolumn' }
)
api.nvim_create_autocmd(
    { "InsertEnter" },
    { pattern = '*', command = 'set cursorcolumn' }
)
