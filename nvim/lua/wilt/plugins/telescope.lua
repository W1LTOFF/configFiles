return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("telescope").setup()

        vim.keymap.set("n", "<leader>pf", "<cmd>Telescope find_files<cr>")
        vim.keymap.set("n", "<leader>ps", function()
            require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
        end)
    end,
}
