return {
  "neovim/nvim-lspconfig",
  event = "BufReadPre",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()

    local lspconfig = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")

    mason_lspconfig.setup({
      ensure_installed = { "lua_ls", "pyright" },
      automatic_installation = true,
    })

    -- 🔹 Diagnostics configuration
    vim.diagnostic.config({
      virtual_text = {
        prefix = "●", -- Icon before text
        source = "always", -- Always show source (like "LuaLS")
      },
      signs = true,
      underline = true,
      update_in_insert = false,
      severity_sort = true,
      float = {
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
      },
    })

    -- 🔹 Keymap to show diagnostics in a float
    vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Show diagnostics" })
  end,
}
