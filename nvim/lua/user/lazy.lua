local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
-- or                              , branch = "0.1.x",
      dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
        "rebelot/kanagawa.nvim",
        config = function()
            require('kanagawa').setup({
                commentStyle = {italic = false},
                keywordStyle = {italic = false},
                background = {
                    dark = "dragon",
                }
            })
            vim.cmd("colorscheme kanagawa")
        end,
    },
    {
	    "nvim-treesitter/nvim-treesitter",
	    build = ":TSUpdate",
    },
    {
	    'ThePrimeagen/harpoon',
    },
    {
        "tpope/vim-surround",
    },
    {
        "lervag/vimtex",
    },
    {
        "vim-illuminate",
    },
    {
        "tpope/vim-dadbod",
    },
})
