require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    "ibhagwan/fzf-lua",
    requires = {
      "nvim-tree/nvim-web-devicons"
    }
}
end)

vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.keymap.set("n", "<c-F>", 
  "<cmd>lua require('fzf-lua').git_files()<CR>", { silent = true })
