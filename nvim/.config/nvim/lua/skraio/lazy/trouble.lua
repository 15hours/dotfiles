local keys = {
    {
        "<leader>ta",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
    },
    {
        "<leader>tc",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
    },
    {
        "]t",
        function()
            require("trouble").next({skip_groups=true, jump=true})
        end,
        desc = "Next Trouble Item",
    },
    {
        "[t",
        function()
            require("trouble").prev({skip_groups=true, jump=true})
        end,
        desc = "Previous Trouble Item",
    },
    {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
    },
    {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
    },
    {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
    },
    {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
    },
}

return {
    "folke/trouble.nvim",
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = "Trouble",
    keys = keys
}
