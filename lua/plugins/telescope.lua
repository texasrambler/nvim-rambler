return {
   'nvim-telescope/telescope.nvim', branch = '0.1.x',
-- or                              , tag = '0.1.8',
   dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
        "nvim-tree/nvim-web-devicons",
        "folke/todo-comments.nvim",
   },
   config = function()
      local telescope = require("telescope")
      local actions = require("telescope.actions")

      telescope.setup({
         defaults = {
            path_display = {"smart"},
            mappings = {
               i = {
                  ["<C-k>"] = actions.move_selection_previous,
                  ["<C-j>"] = actions.move_selection_next,
                  ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
               },
            },
         },
      })

      telescope.load_extension("fzf")

      -- set keymaps
      local keymap = vim.keymap
      local builtin = require 'telescope.builtin'

      keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Find in Help' })
      keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'Find in Keymap' })
      keymap.set("n", "<leader>ff", builtin.find_files, {desc = "Find files in pwd"})
      keymap.set("n", "<leader>fr", builtin.oldfiles, {desc = "Find recent files"})
      keymap.set("n", "<leader>fs", builtin.live_grep, {desc = "Find string in pwd"})
      keymap.set("n", "<leader>fc", builtin.grep_string, {desc = "Find string under cursor in pwd"})
      keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", {desc = "Find todos"})
      keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = 'Find Diagnostics' })
      keymap.set('n', '<leader><leader>', builtin.buffers, { desc = 'Find existing buffers' })
   end,
}
