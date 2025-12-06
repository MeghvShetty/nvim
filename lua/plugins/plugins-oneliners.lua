return{
    { -- This helps with ssh tunneling and copying to clipboard
	'ojroques/vim-oscyank',
    },
    { --git plugin
	'tpope/vim-fugitive',
    },
    { --show CSS Colors
	'brenoprata10/nvim-highlight-colors',
	config = function()
	    require('nvim-highlight-colors').setup({})
	end
    },
    {
  "jglasovic/venv-lsp.nvim",
  config = function()
    require("venv-lsp").setup()
  end,
    },
    

}
