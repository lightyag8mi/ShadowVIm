#  ShadowVim

> **Craft your own digital realm** — Minimal and blazing fast, feature-rich, and integrated AI right out of the box.

<img width="1600" height="900" alt="Screenshot 2025-08-13 151321" src="https://github.com/user-attachments/assets/027cb1ea-bfc4-44fe-9296-e61f4c5c6668" />



---

## ⚡ Why ShadowVim?

ShadowVim isn't just another Neovim distro — it's built for developers who want maximum productivity without the bloat:

- **Blazing Fast** → 30–80ms startup with full UI animations
- **Minimal Core** → Only ~24 carefully curated plugins, no redundancy
- **AI-First** → Codeium AI pre-configured and ready to use
- **Complete** → Everything you need for modern development: LSP, Git, debugging, terminal
- **Beautiful** → Catppuccin theme with smooth animations and polished UI

**Perfect for**: Developers switching from VSCode, those tired of slow Neovim configs, or anyone wanting a modern editing experience without the setup hassle.

---

## 🖥 Features at a Glance

| Category            | Feature                                                 |
| ------------------- | ------------------------------------------------------- |
| **Performance**     | 30–80ms startup • Lazy loading • Optimized plugins     |
| **AI Assistance**   | Codeium AI • Smart completions • Code suggestions      |
| **Language Support** | Mason auto-install LSPs • Treesitter syntax • Diagnostics |
| **UI/UX**           | Catppuccin Mocha • Lualine statusline • Bufferline tabs |
| **Navigation**      | Telescope fuzzy finder • Mini.files explorer • Which-key |
| **Terminal**        | Snacks floating terminal • Integrated experience       |
| **Productivity**    | Auto-completion • Snippets • Mini.nvim utilities       |
| **Code Quality**    | Conform.nvim formatting • LSP diagnostics • Auto-pairs |

---

## 🚀 Quick Install

### **Windows**
```powershell
# Backup existing config (optional)
if (Test-Path $env:LOCALAPPDATA\nvim) {
    Rename-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.backup
}

# Install ShadowVim
git clone https://github.com/lightyag8mi/shadowvim.git $env:LOCALAPPDATA\nvim
```

### **Linux & macOS**

```bash
# Backup existing config (optional)
[ -d ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.backup

# Install ShadowVim
git clone https://github.com/lightyag8mi/shadowvim.git ~/.config/nvim
```

### **First Launch**

```bash
nvim
```

On first startup, ShadowVim will:
1. 📦 Auto-install all plugins via Lazy.nvim
2. 🔧 Download language servers via Mason
3. 🎨 Set up the Catppuccin Mocha theme
4. ✅ Ready to code!

---

## 📦 Dependencies

### **Required**
- **[Neovim 0.9+](https://neovim.io/)** – Latest stable version recommended
- **[Git](https://git-scm.com/)** – For plugin management and version control
- **[Node.js 16+](https://nodejs.org/en/)** – Required for LSPs and Codeium
- **[Nerd Font](https://www.nerdfonts.com/font-downloads)** – For icons (*JetBrainsMono Nerd Font* recommended)

### **Optional (but recommended)**

- **[ripgrep](https://github.com/BurntSushi/ripgrep)** – Faster file searching with Telescope
- **[fd](https://github.com/sharkdp/fd)** – Better file finding
- **[Python 3.8+](https://www.python.org/)** – For Python LSP support
- **[Formatters](https://github.com/stevearc/conform.nvim)** – stylua, black, isort, gofmt for code formatting

---

## ⌨️ Key Bindings

ShadowVim uses `<Space>` as the leader key. Here are the essential bindings:

### **Core Navigation**
| Key | Action |
|-----|--------|
| `<Space>d` | Open Dashboard |
| `<Space>` | Show which-key menu |
| `<Space>ff` | Find files (Telescope) |
| `<Space>fg` | Live grep (Telescope) |
| `<Space>fb` | Find buffers (Telescope) |
| `<Space>fh` | Help tags (Telescope) |

### **File Management**
| Key | Action |
|-----|--------|
| `<Space>e` | Open Mini.files explorer |
| `<Space>q` | Close current buffer |
| `<Space>Q` | Force close current buffer |
| `<Ctrl>p` | Previous buffer |
| `<Ctrl>n` | Next buffer |

### **Window Management**
| Key | Action |
|-----|--------|
| `<Ctrl>h/j/k/l` | Navigate between windows |
| `<Ctrl>Up/Down` | Resize window vertically |
| `<Ctrl>Left/Right` | Resize window horizontally |

### **Code & LSP**
| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Find references |
| `gi` | Go to implementation |
| `K` | Hover documentation |
| `<Space>ca` | Code actions |
| `<Space>rn` | Rename symbol |
| `<Space>d` | Show diagnostics |
| `[d` / `]d` | Navigate diagnostics |

### **Productivity**
| Key | Action |
|-----|--------|
| `<Space>z` | Toggle Zen mode (Snacks) |
| `<Space>d` | Open Dashboard (Snacks) |
| `<Space>t` | Open floating terminal (Snacks) |
| `gc` | Comment/uncomment (Mini.comment) |
| `;` | Enter command mode |

### **Codeium AI**
| Key | Action |
|-----|--------|
| `<Ctrl>a` (Insert) | Accept suggestion |
| `<Ctrl>;` (Insert) | Next suggestion |
| `<Ctrl>,` (Insert) | Previous suggestion |
| `<Ctrl>x` (Insert) | Clear suggestion |

### **Insert Mode Navigation**
| Key | Action |
|-----|--------|
| `<Ctrl>b` | Move to beginning of line |
| `<Ctrl>e` | Move to end of line |
| `<Ctrl>l` | Move left |
| `<Ctrl>r` | Move right |
| `<Ctrl>d` | Move down |
| `<Ctrl>u` | Move up |

*💡 Tip: Press `<Space>` or mappings in dashbaord and wait to see all available keybindings with which-key!*

---

## 🛠 Language Support

ShadowVim uses Mason to auto-install language servers:

### **Pre-configured LSPs**
- **lua_ls** → Lua
- **pyright** → Python
- **tsserver** → TypeScript/JavaScript  

### **Syntax Highlighting (Treesitter)**
Supports: lua, vim, python, javascript, typescript, html, css, go

### **Code Formatting (Conform.nvim)**
- **Lua**: stylua
- **Python**: isort, black  
- **Go**: gofmt

### **Adding New Languages**

Use Mason to install additional LSPs:
```
:Mason
```

Or add to `lua/plugins/mason.lua`:
```lua
ensure_installed = { "lua_ls", "pyright", "tsserver", "your_new_lsp" },
```

---

## 🎨 Customization

### **Changing Theme**

ShadowVim uses Catppuccin Mocha by default. Edit `lua/plugins/ui.lua`:

```lua
require("catppuccin").setup({
  flavour = "latte", -- mocha, macchiato, frappe, latte
})
```

### **Adding Plugins**

Create a new file in `lua/plugins/` (e.g., `custom.lua`):

```lua
return {
  {
    "your-plugin/plugin-name",
    event = "VeryLazy", -- or appropriate event
    config = function()
      -- plugin setup
    end,
  },
}
```

### **Modifying Keybindings**

Edit `lua/core/keymaps.lua`:

```lua
local keymap = vim.keymap

-- Add your custom keybindings
keymap.set('n', '<leader>x', ':YourCommand<CR>', { desc = 'Your Description' })
```

### **LSP Configuration**

Modify `lua/plugins/mason.lua` for custom LSP settings or add server-specific configs in the Mason setup handlers.

---

## 🗂 Plugin Architecture

ShadowVim's lean plugin selection focuses on performance and functionality:

**Core Framework**
* [**Lazy.nvim**](https://github.com/folke/lazy.nvim) — Plugin manager with lazy loading
* [**Snacks.nvim**](https://github.com/folke/snacks.nvim) — Dashboard, terminal, zen mode, statuscolumn
* [**Mini.nvim**](https://github.com/echasnovski/mini.nvim) — Files, pairs, commenting, surround, notifications
  
**UI & Navigation**  
* [**Telescope**](https://github.com/nvim-telescope/telescope.nvim) — Fuzzy finder
* [**Catppuccin**](https://github.com/catppuccin/nvim) — Theme
* [**Lualine**](https://github.com/nvim-lualine/lualine.nvim) — Statusline
* [**Bufferline**](https://github.com/akinsho/bufferline.nvim) — Buffer tabs
* [**Which-key**](https://github.com/folke/which-key.nvim) — Keybinding helper
  
**Development**
* [**Mason**](https://github.com/williamboman/mason.nvim) — LSP installer
* [**nvim-lspconfig**](https://github.com/neovim/nvim-lspconfig) — LSP configuration
* [**nvim-cmp**](https://github.com/hrsh7th/nvim-cmp) — Auto-completion
* [**Treesitter**](https://github.com/nvim-treesitter/nvim-treesitter) — Syntax highlighting
* [**Conform.nvim**](https://github.com/stevearc/conform.nvim) — Code formatting

**AI & Productivity**
* [**Codeium.vim**](https://github.com/Exafunction/codeium.vim) — AI assistance
* [**LuaSnip**](https://github.com/L3MON4D3/LuaSnip) — Snippet engine
* [**Noice.nvim**](https://github.com/folke/noice.nvim) — Command line improvements

---

## 🚨 Troubleshooting

### **Common Issues**

**Codeium not working?**
- Run `:Codeium Auth` and authenticate with GitHub/Google
- Ensure Node.js 16+ is installed
- Check `:Codeium Chat` for status

**Mini.files explorer not familiar?**

- Press `<Space>e` or `-` to open the file explorer
- Use `h/j/k/l` or arrow keys to navigate
- Press `Enter` to open files/folders
- Press `l` or `→` to expand directories
- Press `h` or `←` to collapse directories
- Press `g.` to toggle hidden files
- Press `g~` to go to home directory
- Press `gh` to go to parent directory
- Use `yy` to copy file path
- Press `q` to close the explorer
- **Pro tip**: You can create, delete, rename files directly in the explorer - just edit the buffer and save by hitting "="!

**LSP not starting?**
- Run `:Mason` to check installed servers
- Check `:LspInfo` for server status
- Ensure required dependencies are installed

**Icons not showing?**
- Install a Nerd Font and configure your terminal
- Check `:checkhealth` for font issues

**Slow startup?**
- Check `:Lazy profile` for plugin load times
- ShadowVim loads only essential plugins on startup for <40ms performance

**Formatting not working?**
- Install required formatters (stylua, black, etc.)
- Check `:ConformInfo` for formatter status

### **Health Checks**

Run these commands to diagnose issues:
- `:checkhealth` — Overall Neovim health
- `:Lazy` — Plugin status and updates
- `:Mason` — LSP server management  
- `:LspInfo` — Active LSP servers
- `:ConformInfo` — Formatter information

---

## 📁 Project Structure

```
~/.config/nvim/
├── init.lua                 # Entry point, loads core and plugins
├── lua/
│   ├── core/
│   │   ├── keymaps.lua     # Global keybindings
│   │   └── options.lua     # Neovim settings
│   └── plugins/
│       ├── cmdline.lua     # Noice.nvim command line
│       ├── codeium.lua     # Codeium AI setup
│       ├── compiletion.lua # nvim-cmp configuration
│       ├── formatter.lua   # Conform.nvim formatting
│       ├── lazy.lua        # Which-key configuration
│       ├── mason.lua       # LSP server management
│       ├── mini.lua        # Mini.nvim utilities
│       ├── snacks.lua      # Snacks.nvim components
│       ├── telescope.lua   # Fuzzy finder
│       ├── treesitter.lua  # Syntax highlighting
│       └── ui.lua          # Theme, statusline, bufferline
└── LICENSE                  # MIT License
```

---

## 🔄 Versioning & Performance

### Current Verion- v1.1.0
- Keymap Overlaps Fixed → No more accidental binding conflicts
- Mason LSP Error Resolved → Automatic LSP installation works flawlessly
- Snacks Explorer → Mini.files → Leaner, faster, and more integrated file browsing
- Lualine Polish → Cleaner design with better padding and section separators
- Dashboard Cleanup → Simpler, faster-loading start screen
- Copilot → Codeium → Free, privacy-friendly AI completions for everyone
- Performance Boost → Startup time optimized down to ~40ms

---

## 📸 Screenshots

### **Dashboard**
<img width="1600" height="900" alt="Screenshot 2025-08-13 151321" src="https://github.com/user-attachments/assets/2d070111-8f2f-4340-a2fe-6fe82dccaf06" />


### **Coding Experience**
<img width="1600" height="900" alt="Screenshot 2025-08-13 152927" src="https://github.com/user-attachments/assets/61bf5f97-142a-4d0a-9c3d-2c3b2e5617f9" />


### **File Explorer**
<img width="1600" height="900" alt="Screenshot 2025-08-13 152937" src="https://github.com/user-attachments/assets/8284b43e-c289-4ef1-9e90-6c039f7caf38" />



---

## 🤝 Contributing

ShadowVim welcomes contributions! Whether it's:
- 🐛 Bug fixes
- ✨ New features  
- 📚 Documentation improvements
- 🎨 UI/UX enhancements

**Before contributing:**
1. Check existing [issues](https://github.com/lightyag8mi/shadowvim/issues)
2. Fork the repository
3. Create a feature branch
4. Test your changes thoroughly
5. Submit a pull request

---

## ⭐ Show Your Support

If ShadowVim boosts your productivity:
- ⭐ **Star** the repository
- 🐛 **Report** bugs you encounter
- 📢 **Share** with fellow developers
- 🤝 **Contribute** improvements

---

**Happy coding with ShadowVim!** 🚀
