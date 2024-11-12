-- Cài đặt Packer
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
  -- Packer quản lý chính nó
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'navarasu/onedark.nvim'

  -- File explorer
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  }

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  }

  -- Autocompletion
  use {
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
  }

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons' }
  }

  -- Auto pairs
  use 'windwp/nvim-autopairs'
	
   -- Thêm gitsigns
    use {
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup()
        end
    }
	
	 -- Thêm trouble.nvim và dependencies
    use {
        "folke/trouble.nvim",
        requires = "nvim-tree/nvim-web-devicons",
    }

    -- Thêm lsp-colors để hiển thị màu tốt hơn
    use 'folke/lsp-colors.nvim'

	    -- Rainbow brackets
    use 'HiPhish/rainbow-delimiters.nvim'
	
	-- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
	
	 -- Animation indent scope
    use { 'echasnovski/mini.indentscope', branch = 'stable' }
	
	-- Clipboard manager
    use {
        "gbprod/yanky.nvim",
        config = function()
            require("yanky").setup({})
        end
    }

  if packer_bootstrap then
    require('packer').sync()
  end
end)

