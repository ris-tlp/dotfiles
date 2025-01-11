return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = true },
      servers = {
        pyright = {
          settings = {
            pyright = {
              -- delegate isort to ruff
              disableOrganizeImports = true,
            },
            python = {
              -- deletgate linting to ruff, disable type checks
              analysis = {
                typeCheckingMode = "off",
                ignore = { "*" },
              },
            },
          },
        },
      },
    },
  },
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim", "mfussenegger/nvim-dap-python" },
    opts = {
      auto_refresh = true,
    },
    event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
    keys = {
      -- Keymap to open VenvSelector to pick a venv.
      { "<leader>vs", "<cmd>VenvSelect<cr>" },
      -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
      { "<leader>vc", "<cmd>VenvSelectCached<cr>" },
    },
  },

  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>v", desc = "+venv", mode = { "x", "n" }, icon = { icon = "🍊" } },
      },
    },
  },
}
