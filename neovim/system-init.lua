local dotfiles_path = "/Users/luke.bennett/workspace/personal/dotfiles/neovim/?.lua"
package.path = package.path .. ";" .. dotfiles_path

require("neovim-dotfiles.init")
