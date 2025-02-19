-- lua/custom/plugins/noice.lua
return {
    'folke/noice.nvim',
    event = "VeryLazy", -- Load later to avoid startup delay
    opts = {},         -- Add any specific Noice options here if needed
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify", -- Optional, for notifications
    },
    config = function()  -- Configuration function for noice.nvim
      require("noice").setup({
        lsp = {
          override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true,
          },
        },
        presets = {
          bottom_search = true,
          command_palette = true,
          long_message_to_split = true,
          inc_rename = false,
          lsp_doc_border = false, -- or true if you want borders
        },
      })
    end,
  }