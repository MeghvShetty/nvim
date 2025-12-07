return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            highligh = {
                enable = true,
            },
            indent = { enable = true },
            autotage = { enable = true },
            matchup = { enable = true },
            ensure_installed = {
                "lua",
                "python",
            },
            auto_install = true,
        })
    end,
}
