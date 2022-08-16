-- necessary variables
api = vim.api
opt = vim.opt

-- Basic config
opt.tabstop     = 4
opt.shiftwidth  = 4
opt.softtabstop = 4
opt.expandtab   = true

opt.nu = true
opt.relativenumber = true

-- Bindings
function map(sequence, cmd)
    api.nvim_set_keymap('n',
    '<Space>' .. sequence,
    cmd,
    { noremap = true })
end

map('o', ':FZF<CR>')
map('s', '<C-^>')
map('rr', ':RustRun<CR>')
map('rf', ':RustFmt<CR>')

-- opt.termguicolors = true
pcall(vim.cmd, 'colorscheme nord')
vim.g.lightline = { colorscheme = 'nord' }

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Colorscheme and status
    use 'arcticicestudio/nord-vim'
    use 'itchyny/lightline.vim'

    -- Search
    use 'junegunn/fzf'

    -- Language support
    use 'sirtaj/vim-openscad'
end)

