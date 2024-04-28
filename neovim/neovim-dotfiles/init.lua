require("neovim-dotfiles.lazy")
require("neovim-dotfiles.keymaps")

vim.cmd.colorscheme("catppuccin")

vim.g.netrw_bufsettings = "noma nomod nu nowrap ro nobl"

vim.g.copilot_no_tab_map = true
