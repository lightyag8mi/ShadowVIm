return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    -- Dashboard configuration
    dashboard = {
      enabled = true,
      preset = {
        header = {
          [[
███████╗██╗  ██╗ █████╗ ██████╗  ██████╗ ██╗    ██╗██╗   ██╗██╗███╗   ███╗
██╔════╝██║  ██║██╔══██╗██╔══██╗██╔═══██╗██║    ██║██║   ██║██║████╗ ████║
███████╗███████║███████║██║  ██║██║   ██║██║ █╗ ██║██║   ██║██║██╔████╔██║
╚════██║██╔══██║██╔══██║██║  ██║██║   ██║██║███╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
███████║██║  ██║██║  ██║██████╔╝╚██████╔╝╚███╔███╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝  ╚══╝╚══╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
                Craft your own digital realm
          ]],
          },
          keys = {
            { desc = "  Find File",      key = "ff", action = ":Telescope find_files" },
            { desc = "  Recent Files",   key = "fo", action = ":Telescope oldfiles" },
            { desc = "󰈭  Find Word",      key = "fw", action = ":Telescope live_grep" },
            { desc = "  Mappings",       key = "ch", action = ":Telescope keymaps" },
            { desc = "󰒲  Lazy",           key = "la", action = ":Lazy" },
            { desc = "󰈹  File Browser",   key = "fb", action = "<leader>e" },
            { desc = "󰕕  Quit",           key = "qq", action = ":qa" },
            { desc = "─────────────────────────────────────────────────────────────────────────", hl = "SnacksFooter", no_gap = true, rep = true },
          },
      },
      sections = {
        { section = "header" },
        { section = "keys", gap = 1 },
        { section = "startup" },
      },
    },
    
    -- Basic features
    zen = { enabled = true },
    terminal = { enabled = true },
    bigfile = { enabled = true },
    explorer = { enabled = true }, -- Enable explorer
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = true }, -- Enable notifier
    quickfile = { enabled = true },
    scope = { enabled = true },
    git = { enabled = true },
    gitbrowse = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    
    -- Fix potential nvim_exec2 issues
    win = { enabled = true },
  },
  
  -- Add keymaps for Snacks
  keys = {
    { "<leader>e", function() require("snacks").explorer() end, desc = "Explorer" },
    { "<leader>z", function() require("snacks").zen() end, desc = "Zen Mode" },
    { "<leader>t", function() require("snacks").terminal() end, desc = "Terminal" },
    { "<leader>d", function() require("snacks").dashboard() end, desc = "Dashboard" },
  },
}