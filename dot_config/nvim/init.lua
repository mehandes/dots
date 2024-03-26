require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'lervag/vimtex'
  use {
    "ibhagwan/fzf-lua",
    requires = {
      "nvim-tree/nvim-web-devicons"
    }
}
end)

require("catppuccin").setup({
    flavour = "macchiato",
    transparent_background = true,
})

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.cmd.colorscheme "catppuccin"

vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_view_general_viewer = 'zathura'

vim.keymap.set("n", "<c-F>", 
  "<cmd>lua require('fzf-lua').git_files()<CR>", { silent = true })
