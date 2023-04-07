local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	-- My plugins here
	-- use 'foo1/bar1.nvim'
	-- use 'foo2/bar2.nvim'

	use { 'nvim-lualine/lualine.nvim',
		as = 'lualine',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use { 'nvim-treesitter/nvim-treesitter', 
		as = 'treesitter',
		run = ':TSUpdate' 
	}
	
	use { 'shaunsingh/nord.nvim', 
		as = 'nord'
	}

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)
