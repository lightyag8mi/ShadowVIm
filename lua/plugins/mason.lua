return {
  {
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
        ensure_installed = { "lua_ls", "pyright", "tsserver" },
        automatic_installation = true,
      })

      mason_lspconfig.setup_handlers({
        function(server_name)
          lspconfig[server_name].setup({})
        end,
      })
    end,
  },
}
