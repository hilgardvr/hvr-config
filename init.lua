--setup fzf
vim.o.rtp=vim.o.rtp .. ",/usr/bin/fzf"
vim.keymap.set('n', '<C-p>', ':FZF<CR>')
--display and switch buffers with C-l
vim.keymap.set('n', '<C-l>', ':buffers<CR>:buffer<Space>')
--display and delete buffers with F6
vim.keymap.set('n', '<F6>', ':buffers<CR>:bd<Space>')

