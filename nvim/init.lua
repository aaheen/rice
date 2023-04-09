vim.cmd [[packadd packer.nvim]]

require('plugins')

vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerCompile
    augroup end
]])

-- QoL settings
vim.cmd [[set number]]
vim.cmd [[set tabstop=4]]
vim.cmd [[set softtabstop=0 noexpandtab]]

-- Themes
--vim.cmd [[hi Normal ctermbg=none guibg=none]]
vim.cmd [[hi NonText ctermbg=none]]
--vim.cmd [[hi LineNr ctermbg=none guibg=none]]im.cmd [[set shiftwidth=4]]
