print("Welcome to Neovim Master Megh!!")

require("config.options")
require("config.keybinds")
require("config.lazy")

vim.opt.clipboard = "unnamedplus" -- yy/p copies to system clipboard automatically
