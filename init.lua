--setup fzf
vim.o.rtp=vim.o.rtp .. ",/usr/bin/fzf"
vim.keymap.set('n', '<C-p>', ':Files<CR>')
vim.keymap.set('n', '<C-f>', ':Rg<CR>')
--display and switch buffers with C-l
vim.keymap.set('n', '<C-l>', ':buffers<CR>:buffer<Space>')
--display and delete buffers with F6
vim.keymap.set('n', '<F6>', ':buffers<CR>:bd<Space>')

--set Y to vim legacy
vim.keymap.set('n', 'Y', 'Y')

-- Navigation
vim.keymap.set('n', '<C-]>', '<Plug>(coc-definition)')
vim.keymap.set('n', 'gr', '<Plug>(coc-references)')
vim.cmd [[colorscheme dracula]]
    
	

-- file searching with ack
-- vim.keymap.set('n', '<C-f>', ':Ack! ')

--plugings - run :PlugInstall to install plugings
local Plug  = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
Plug('neoclide/coc.nvim', {branch = 'release'})
Plug('elixir-lsp/coc-elixir', {['do'] = vim.fn['yarn install && yarn prepack']})
Plug('elixir-editors/vim-elixir')
Plug('mileszs/ack.vim')
Plug('junegunn/fzf', {['do'] = vim.fn['fzf#install(}']})
Plug('junegunn/fzf.vim')
Plug('tpope/vim-fugitive')
Plug('preservim/nerdtree')
Plug('dracula/vim')
vim.call('plug#end')
