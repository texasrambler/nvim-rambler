return {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag", -- May take this out
    },
    config = function()
        -- import treesitter modules
        local treesitter = require("nvim-treesitter.configs")

        -- configure treesitter
        treesitter.setup({
            highlight = { enable = true, },
            indent = { enable = true },
            autotag = { enable = true },

            --  Ensure language parsers are installed
            ensure_installed = {
                "lua",
                "bash",
                "c",
                "awk",
                "markdown",
                "go",
                "python",
                "java",
                "sql",
                "json",
                "yaml",
                "html",
                "css",
            },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
        })
    end,
}
