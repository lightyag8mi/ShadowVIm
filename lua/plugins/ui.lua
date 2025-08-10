return {
  -- Statusline configuration
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    enabled = true,
    event = 'VeryLazy',
    config = function()
      local function copilot_status()
        if vim.fn['copilot#IsConnected']() == 1 then
          return 'Copilot' -- U+f113, 'ghost' icon
        end
        return ''
      end
      require('lualine').setup({
        options = {
          icons_enabled = true,
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
        },
        sections = {
          lualine_c = { 'filename' },

          lualine_x = {
            'copilot_status', 
            'encoding',
            'fileformat',
            'filetype',
          },
          lualine_y = { 
            { 'diagnostics', symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' } } 
          },
          lualine_z = {
            {
              function()
                return ' ' .. os.date('%R')
              end,
            },
          },
        },
      })
    end,
  },
  { 'nvim-tree/nvim-web-devicons', lazy = true },

  {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require("bufferline").setup({
      options = {
        separator_style = "slant",
        offsets = {
          {
            filetype = "snacks_explorer",
            text = "File Explorer",
            text_align = "center",
            separator = true,
            highlight = "Directory"
          },
          { 
            custom_filter = function(buf_number, buf_numbers)
          local filetype = vim.bo[buf_number].filetype
          local buftype = vim.bo[buf_number].buftype
          

          if buftype == "nofile" or 
             buftype == "terminal" or
             filetype == "snacks_explorer" or 
             filetype == "neo-tree" or 
             filetype == "NvimTree" or
             filetype == "help" then
            return false
          end
            return true
          end,
          },
        },
      },
    })
  end,
}
}
