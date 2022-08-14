--setup fzf
vim.o.rtp=vim.o.rtp .. ",/usr/bin/fzf"
vim.keymap.set('n', '<C-p>', ':FZF<CR>')
--display and switch buffers with C-l
vim.keymap.set('n', '<C-l>', ':buffers<CR>:buffer<Space>')
--display and delete buffers with F6
vim.keymap.set('n', '<F6>', ':buffers<CR>:bd<Space>')

local Plug  = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug('elixir-lsp/coc-elixir', {['do'] = vim.fn['yarn install && yarn prepack']})
Plug('neoclide/coc.nvim', {branch = 'release'})
Plug('elixir-editors/vim-elixir')

vim.call('plug#end')
