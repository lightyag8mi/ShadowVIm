return {
  "github/copilot.vim",
  lazy = false, -- Load immediately
  event = "InsertEnter",
  config = function()
    vim.g.copilot_filetypes = {
      ["*"] = true,
      ["markdown"] = false,
      ["text"] = false,
      ["html"] = false,
      ["xml"] = false,
      ["javascript"] = true,
      ["typescript"] = true,
      ["python"] = true,
    }
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
  end,
}
