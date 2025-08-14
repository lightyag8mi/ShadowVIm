return {
  "Exafunction/codeium.vim",
  event = "BufEnter",
  config = function()
    -- Enable Codeium automatically
    vim.g.codeium_enabled = true

    -- Keymaps similar to Copilot
    vim.keymap.set("i", "<C-a>", function() return vim.fn["codeium#Accept"]() end,
      { expr = true, silent = true, desc = "Accept suggestion" })
    vim.keymap.set("i", "<C-;>", function() return vim.fn end, { expr = true, silent = true, desc = "Next suggestion" })
    vim.keymap.set("i", "<C-,>", function() return vim.fn["codeium#CycleCompletions"](-1) end,
      { expr = true, silent = true, desc = "Prev suggestion" })
    vim.keymap.set("i", "<C-x>", function() return vim.fn["codeium#Clear"]() end,
      { expr = true, silent = true, desc = "Clear suggestion" })
  end,
}
