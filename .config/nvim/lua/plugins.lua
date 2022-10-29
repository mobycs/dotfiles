vim.cmd [[packadd packer.nvim]]

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require('packer').startup(function(use)
	use {
		'saecki/crates.nvim',
		tag = 'v0.3.0',
		requires = { 'nvim-lua/plenary.nvim' },
		config = function()
			require('crates').setup()
		end,
	}
end)
