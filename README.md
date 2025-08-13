#  ShadowVim

> **Craft your own digital realm** — Minimal and blazing fast, feature-rich, and integrated AI right out of the box.

<img width="1600" height="900" alt="Screenshot 2025-08-10 194931" src="https://github.com/user-attachments/assets/0f3ff80d-7827-44a8-9642-06908b2e4e5e" />

---

## ⚡ Why ShadowVim?

ShadowVim isn't just another Neovim distro — it's built for developers who want maximum productivity without the bloat:

- **🚀 Blazing Fast** → 30–80ms startup with full UI animations
- **🎯 Minimal Core** → Only ~24 carefully curated plugins, no redundancy
- **🤖 AI-First** → GitHub Copilot pre-configured and ready to use
- **📦 Complete** → Everything you need for modern development: LSP, Git, debugging, terminal
- **🎨 Beautiful** → Catppuccin theme with smooth animations and polished UI

**Perfect for**: Developers switching from VSCode, those tired of slow Neovim configs, or anyone wanting a modern editing experience without the setup hassle.

---

## 🖥 Features at a Glance

| Category            | Feature                                                 |
| ------------------- | ------------------------------------------------------- |
| **Performance**     | 30–80ms startup • Lazy loading • Optimized plugins     |
| **AI Assistance**   | GitHub Copilot • Smart completions • Code suggestions  |
| **Language Support** | Mason auto-install LSPs • Treesitter syntax • Diagnostics |
| **UI/UX**           | Catppuccin Mocha • Lualine statusline • Bufferline tabs |
| **Navigation**      | Telescope fuzzy finder • Snacks explorer • Which-key   |
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
- **[Node.js 16+](https://nodejs.org/en/)** – Required for LSPs and GitHub Copilot
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
| `<Space>` | Show which-key menu |
| `<Space>ff` | Find files (Telescope) |
| `<Space>fg` | Live grep (Telescope) |
| `<Space>fb` | Find buffers (Telescope) |
| `<Space>fh` | Help tags (Telescope) |

### **File Management**
| Key | Action |
|-----|--------|
| `<Space>e` | Toggle Snacks file explorer |
| `<Space>q` | Close current buffer |
| `<Tab>n` | Next buffer |

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
| `<Space>\`` | Open floating terminal (Snacks) |
| `gc` | Comment/uncomment (Mini.comment) |
| `;` | Enter command mode |

### **GitHub Copilot**
| Key | Action |
|-----|--------|
| `<Tab>a` (Insert) | Accept line |
| `<Tab>r` (Insert) | Reject suggestion |


*💡 Tip: Press `<Space>` or open mappings from dashboard and wait to see all available keybindings with which-key!*

---

## 🛠 Language Support

ShadowVim uses Mason to auto-install language servers:

### **Pre-configured LSPs**
- **lua_ls** → Lua
- **tsserver** → TypeScript/JavaScript  
- **pyright** → Python
- **cssls** → CSS
- **html** → HTML
- **bashls** → Bash
- **jsonls** → JSON

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

Or add to `lua/plugins/lsp/mason.lua`:
```lua
ensure_installed = {
  'lua_ls',
  'your_new_lsp', -- Add here
}
```

---

## 🎨 Customization

### **Changing Theme**

ShadowVim uses Catppuccin Mocha by default. Edit `lua/plugins/theme.lua`:

```lua
require('catppuccin').setup({
  flavour = 'latte', -- latte, frappe, macchiato, mocha
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

Modify `lua/plugins/lsp/init.lua` for custom LSP settings or add server-specific configs in the Mason setup handlers.

---

## 🗂 Plugin Architecture

ShadowVim wouldn't exist without these core plugins:

**Core Framework**
* [**Lazy.nvim**](https://github.com/folke/lazy.nvim) — Plugin manager with lazy loading
* [**Snacks.nvim**](https://github.com/folke/snacks.nvim) — Dashboard, explorer, terminal, zen mode
* [**Mini.nvim**](https://github.com/echasnovski/mini.nvim) — Pairs, commenting, surround, notifications
  
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
* [**Copilot.vim**](https://github.com/github/copilot.vim) — AI assistance
* [**LuaSnip**](https://github.com/L3MON4D3/LuaSnip) — Snippet engine

---

## 🚨 Troubleshooting

### **Common Issues**

**Copilot not working?**
- Run `:Copilot setup` and authenticate with GitHub
- Ensure Node.js 16+ is installed
- Check `:Copilot status`

**LSP not starting?**
- Run `:Mason` to check installed servers
- Check `:LspInfo` for server status
- Ensure required dependencies are installed

**Icons not showing?**
- Install a Nerd Font and configure your terminal
- Check `:checkhealth` for font issues

**Slow startup?**
- Check `:Lazy profile` for plugin load times
- Some plugins load on specific events to optimize startup

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
│       ├── compiletion.lua # nvim-cmp configuration
│       ├── copilot.lua     # GitHub Copilot setup
│       ├── formatter.lua   # Conform.nvim formatting
│       ├── lazy.lua        # Which-key configuration
│       ├── mini.lua        # Mini.nvim utilities
│       ├── snacks.lua      # Snacks.nvim dashboard/explorer
│       ├── telescope.lua   # Fuzzy finder
│       ├── theme.lua       # Catppuccin theme
│       ├── treesitter.lua  # Syntax highlighting
│       ├── ui.lua          # Statusline and bufferline
│       └── lsp/
│           ├── init.lua    # LSP configuration
│           └── mason.lua   # LSP server management
```

---

## 🔄 Versioning

* **1.0.0** → First public release with core features
* **1.0.x** → Bug fixes and minor improvements  
* **1.x.0** → New features and plugin updates
* **x.0.0** → Major overhauls and breaking changes

**Current Version**: 1.0.0

---

## 📸 Screenshots

### **Dashboard**
<img width="1600" height="900" alt="ShadowVim Dashboard" src="https://github.com/user-attachments/assets/438fcdbf-df7e-4a62-92ae-48d9b4b37946" />

### **Coding Experience**
<img width="1600" height="900" alt="ShadowVim Coding" src="https://github.com/user-attachments/assets/115dab08-01d2-4db5-8c65-2f707a88f488" />

### **Plugin Management**
<img width="1600" height="900" alt="ShadowVim Plugins" src="https://github.com/user-attachments/assets/3aee79f7-53c7-40b3-a01f-33bf9f91e5be" />

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
