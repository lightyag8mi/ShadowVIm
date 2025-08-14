return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = {
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
        formats = {
          startup = function()
            local stats = require("lazy").stats()
            return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. math.floor(stats.startuptime) .. "ms"
          end,
        },
      },
    zen = { enabled = true },
    terminal = { enabled = true },
    bigfile = { enabled = true },
    explorer = { enabled = false },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = { enabled = false },
    quickfile = { enabled = true },
    scope = { enabled = true },
    git = { enabled = true },
    gitbrowse = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
}
