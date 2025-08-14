return {
  -- Theme
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", "motchiato", "frappe", "latte" --flavour
      })
      vim.cmd.colorscheme("catppuccin")
    end,
  },

  {
    'nvim-lualine/lualine.nvim',
    lazy = true,
    event = 'BufReadPre',
    config = function()
      local colors = require('catppuccin.palettes').get_palette('mocha')
      require('lualine').setup({
        options = {
          theme = 'catppuccin',
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
          disabled_filetypes = {},
          globalstatus = true,
        },
        sections = {
          -- Left
          lualine_a = {
            { 'mode', icon = '', color = { fg = colors.base, bg = colors.blue, gui = 'bold' } },
          },
          lualine_b = {
            {
              'filename',
              path = 0, -- 0 = just filename, 1 = relative path
              symbols = {
                modified = ' ', -- dot for modified
                readonly = ' ', -- lock icon
                unnamed = '[No Name]',
              },
            },
            { 'branch', icon = '' },
          },
          -- Middle
          lualine_c = {},
          -- Right
          lualine_x = {
            { 'progress', icon = '' }, -- file progress bar

            {
              'diagnostics',
              sources = { 'nvim_diagnostic' },
              symbols = { error = ' ', warn = ' ', info = ' ', hint = '󰌵 ' },
              section_separators = { left = '', right = '' },
              color = { bg = colors.surface0, fg = colors.text },
              padding = 1,
            },
            {
              function()
                local clients = vim.lsp.get_clients({ bufnr = 0 })
                return next(clients) and clients[1].name or 'No LSP'
              end,
              icon = ' LSP:',
              separator = { left = '', right = '' },
              color = { bg = colors.surface0, fg = colors.text },
              padding = 1,
            },
            {
              function() return 'Shadowvim' end,
              color = { bg = colors.pink, fg = colors.base },
              separator = { left = '', right = '' },
              padding = 1,
            },
          },
          lualine_y = {},
          lualine_z = {},
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = { 'filename' },
          lualine_c = {},
          lualine_x = { 'location' },
          lualine_y = {},
          lualine_z = {}
        }
      })
    end
  },
  { 'nvim-tree/nvim-web-devicons', lazy = true },
  {
    'akinsho/bufferline.nvim',
    lazy = true,
    event = 'BufReadPre',
    version = '*',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('bufferline').setup({
        options = {
          separator_style = 'slant',
          offsets = {
            {
              filetype = 'snacks_explorer',
              text = 'File Explorer',
              text_align = 'center',
              separator = true,
              highlight = 'Directory'
            }
          },
          custom_filter = function(buf_number, buf_numbers)
            local filetype = vim.bo[buf_number].filetype
            local buftype = vim.bo[buf_number].buftype

            if buftype == 'nofile' or
                buftype == 'terminal' or
                filetype == 'snacks_explorer' or
                filetype == 'neo-tree' or
                filetype == 'NvimTree' or
                filetype == 'help' then
              return false
            end
            return true
          end,
        },
      })
    end,
  },
}
