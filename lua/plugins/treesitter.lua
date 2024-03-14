return { 
    {
    "nvim-treesitter/nvim-treesitter",
    build =":TSUpdate",
    -- Treesitter config
    config = function()
local config = require("nvim-treesitter.configs")
config.setup ({
	ensure_installed ={"lua","go","javascript"},
	highlight = {enable = true},
	indent = {enable = true}
    })
    end
}
}