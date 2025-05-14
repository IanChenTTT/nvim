local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Save/quit
map("n", "<leader>w", ":w!<CR>", opts)
map("n", "<leader>q", ":wq<CR>", opts)
map("n", "<leader>Q", ":q!<CR>", opts)

-- Tabs
map("n", "<leader>t<leader>", ":tabnew<CR>", opts)
map("n", "<leader>to", ":tabonly<CR>", opts)
map("n", "<leader>tc", ":tabclose<CR>", opts)
map("n", "<leader>tm", ":tabmove ", opts)
map("n", "<leader>tn", ":tabnext<CR>", opts)
map('n', '<leader>tt', function()
  vim.cmd('tabnew | terminal')
end, { noremap = true, silent = true })

-- Terminal with make
map("n", "<leader>m", ":vert :term make<CR><C-W><C-W>", opts)
map("n", "<leader>mr", ":vert :term make run<CR><C-W><C-W>", opts)
map("n", "<leader>mb", ":vert :term make build<CR><C-W><C-W>", opts)
map("n", "<leader>ma", ":vert :term make all<CR><C-W><C-W>", opts)
map("n", "<leader>mc", ":vert :term make clean<CR><C-W><C-W>", opts)
map("n", "<leader>mt", ":vert :term make test<CR><C-W><C-W>", opts)
map("n", "<leader>mtr", ":vert :term make trunAll<CR><C-W><C-W>", opts)

-- Window navigation
map("n", "<C-j>", "<C-W>j", opts)
map("n", "<C-k>", "<C-W>k", opts)
map("n", "<C-h>", "<C-W>h", opts)
map("n", "<C-l>", "<C-W>l", opts)

-- Buffers
map("n", "<leader>b", ":buffers<CR>:buffer ", opts)
vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<CR>', opts)
map("n", "<leader>e", ":e<CR>:e", opts)

-- Replace
map("n", "<leader>rw", ":%s/Hello/HI/gc<CR>", opts)
map("n", "<leader>rwc", ":%s/old/new/c<CR>", opts)

-- Insert mode escape
map("i", "jk", "<ESC>", opts)

-- Go to terminal normal mode with Esc
vim.cmd([[
  tnoremap <Esc> <C-\><C-n>
]])

vim.api.nvim_create_user_command('MyMap', function()
  vim.cmd('e /home/ian/.config/nvim/lua/mappings.lua')
end, {})
-- Copy current file's full path to clipboard in terminal mode
map('n', '<leader>cp', function()
  vim.fn.setreg('+', vim.fn.expand('%:p'))
  print('File path copied to clipboard: ' .. vim.fn.expand('%:p'))
end, { noremap = true, silent = true })

-- 
-- Go to definition
map('n', '<leader>gd', vim.lsp.buf.definition, opts)

-- Show hover documentation
map('n', '<leader>gh', vim.lsp.buf.hover, opts)

-- Go to implementation
map('n', '<leader>gi', vim.lsp.buf.implementation, opts)

-- Show references
map('n', '<leader>gr', vim.lsp.buf.references, opts)

-- Rename symbol
map('n', '<leader>rn', vim.lsp.buf.rename, opts)

-- Code action
map('n', '<leader>ca', vim.lsp.buf.code_action, opts)

-- Format code
map('n', '<leader>fs', function() vim.lsp.buf.format() end, opts)

-- Show diagnostic messages
map('n', '<leader>z"', vim.diagnostic.open_float, opts)

-- Navigate to the next diagnostic
map('n', '<leader>n', vim.diagnostic.goto_next, opts)

-- Navigate to the previous diagnostic
map('n', '<leader>p', vim.diagnostic.goto_prev, opts)

map('n', '<leader>v', '<C-v>', { noremap = true })



