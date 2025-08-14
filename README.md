#  ShadowVim

> **Craft your own digital realm** — Minimal and blazing fast, feature-rich, and integrated AI right out of the box.

<img width="1600" height="900" alt="Screenshot 2025-08-13 151321" src="https://github.com/user-attachments/assets/027cb1ea-bfc4-44fe-9296-e61f4c5c6668" />

---

## ⚡ Why ShadowVim?

ShadowVim isn't just another Neovim distro — it's built for developers who want maximum productivity with cutting-edge 2025 features:

- **Lightning Performance** → startup with intelligent lazy loading
- **Modular Architecture** → ShadowBox system for advanced customization
- **AI-First Design** → Codeium AI pre-configured with smart completions
- **Modern QoL Suite** → Powered by Snacks.nvim for dashboard, terminal, zen mode
- **Polished Experience** → Catppuccin theme with smooth animations and modern UI
- **Zero Configuration** → Works perfectly out of the box, customize when you want

**Perfect for**: Developers wanting a modern, fast, and intelligent editing experience without the complexity of building from scratch.

---

## 🚀 What's New in v1.2.0

### **🏗️ ShadowBox Architecture**
Advanced modular system that allows deep customization:

- **Plug-and-Play** → Drop custom configs in `lua/shadowbox/` to override defaults
- **Clean Separation** → Core system stays intact while you customize freely
- **Future-Proof** → Easy updates without losing your personal touches

---

## 🖥 Complete Feature Matrix

| Category | Feature | Description |
|----------|---------|-------------|
| **Performance** | Blazing startup | Optimized plugin loading with Lazy.nvim |
| | Smart lazy loading | Plugins load only when needed |
| | Minimal footprint | Only essential plugins, no bloat |
| **AI Integration** | Codeium AI | Free, privacy-friendly completions |
| | Smart suggestions | Context-aware code completion |
| | Multi-language support | Works across all major languages |
| **Modern QoL** | Snacks Dashboard | Beautiful startup with quick actions |
| | Floating Terminal | Integrated terminal experience |
| | Zen Mode | Distraction-free coding |
| | Status Column | Enhanced gutter with git/diagnostics |
| | Smooth Scrolling | Natural scroll animations |
| **UI/UX** | Catppuccin Mocha | Modern, eye-friendly theme |
| | Lualine Status | Information-rich statusline |
| | Bufferline Tabs | Clean buffer management |
| | Which-key Helper | Discoverable keybindings |
| **Development** | Mason LSP Manager | Auto-install language servers |
| | Treesitter Highlighting | Superior syntax highlighting |
| | Conform Formatting | Auto-format on save |
| | nvim-cmp Completion | Intelligent auto-completion |
| **File Management** | Mini.files Explorer | Fast, integrated file browser |
| | Telescope Finder | Fuzzy finding for everything |
| | Smart Navigation | Quick buffer/file switching |
| **Code Intelligence** | LSP Integration | Full language server support |
| | Diagnostic Display | Clear error/warning presentation |
| | Smart Completion | Context-aware suggestions |
| | Code Actions | Refactoring and quick fixes |

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

### **First Launch Experience**
```bash
nvim
```

ShadowVim's intelligent first-run setup:
1. 📦 **Auto-install** all plugins via Lazy.nvim with progress display
2. 🔧 **Download** language servers via Mason automatically  
3. 🎨 **Initialize** Catppuccin Mocha theme with animations
4. 🤖 **Setup** Codeium AI (authentication prompt on first use)
5. ✅ **Ready!** Complete development environment in seconds

---

## 📦 Dependencies

### **Required**
- **[Neovim 0.9+](https://neovim.io/)** – Latest stable (0.10+ recommended)
- **[Git](https://git-scm.com/)** – For plugin management and version control
- **[Node.js 16+](https://nodejs.org/)** – Required for LSPs and Codeium AI
- **[Nerd Font](https://www.nerdfonts.com/font-downloads)** – For icons (*JetBrainsMono* or *FiraCode* recommended)

### **Optional Enhancements**
- **[ripgrep](https://github.com/BurntSushi/ripgrep)** – Blazing fast text search with Telescope
- **[fd](https://github.com/sharkdp/fd)** – Better file finding performance
- **[Python 3.8+](https://python.org/)** – For Python development support
- **[lazygit](https://github.com/jesseduffield/lazygit)** – Git integration (auto-detected)

### **Auto-installed Formatters**
- **stylua** → Lua code formatting
- **black, isort** → Python formatting and imports
- **prettier** → JavaScript/TypeScript/JSON formatting
- **gofmt** → Go code formatting

---

## ⌨️ Essential Keybindings

ShadowVim uses `<Space>` as the leader key with intuitive, muscle-memory-friendly bindings:

### **🍿 Snacks.nvim Features**
| Key | Action | Description |
|-----|--------|-------------|
| `<Space>d` | Dashboard | Beautiful startup screen with quick actions |
| `<Space>z` | Zen Mode | Distraction-free coding environment |
| `<Space>t` | Terminal | Smart floating terminal |

### **📁 File & Navigation**
| Key | Action | Description |
|-----|--------|-------------|
| `<Space>e` | File Explorer | Mini.files integrated browser |
| `<Space>ff` | Find Files | Telescope fuzzy file finder |
| `<Space>fg` | Live Grep | Search across entire project |
| `<Space>fb` | Find Buffers | Quick buffer switching |
| `<Space>fh` | Help Tags | Search Neovim documentation |

### **🔧 Buffer Management**
| Key | Action | Description |
|-----|--------|-------------|
| `<Space>q` | Close Buffer | Safe buffer closing |
| `<Space>Q` | Force Close | Force close unsaved buffer |
| `<Ctrl>p` | Previous Buffer | Navigate to previous buffer |
| `<Ctrl>n` | Next Buffer | Navigate to next buffer |

### **🪟 Window Control**
| Key | Action | Description |
|-----|--------|-------------|
| `<Ctrl>h/j/k/l` | Navigate Windows | Vim-style window navigation |
| `<Ctrl>↑/↓` | Resize Vertical | Adjust window height |
| `<Ctrl>←/→` | Resize Horizontal | Adjust window width |

### **🤖 AI & Code Intelligence**
| Key | Action | Description |
|-----|--------|-------------|
| `<Ctrl>a` | Accept AI | Accept Codeium suggestion |
| `<Ctrl>;` | Next Suggestion | Cycle to next AI suggestion |
| `<Ctrl>,` | Previous Suggestion | Cycle to previous suggestion |
| `<Ctrl>x` | Clear AI | Dismiss current suggestion |

### **🔍 LSP & Development**
| Key | Action | Description |
|-----|--------|-------------|
| `gd` | Go to Definition | Jump to symbol definition |
| `gD` | Go to Declaration | Jump to symbol declaration |
| `gr` | Find References | Show all symbol references |
| `gi` | Go to Implementation | Jump to implementation |
| `K` | Hover Info | Show documentation popup |
| `<Space>ca` | Code Actions | Available refactoring actions |
| `<Space>rn` | Rename Symbol | Intelligent symbol renaming |
| `gl` | Show Diagnostics | Display error/warning details |
| `[d` / `]d` | Navigate Diagnostics | Jump between issues |

### **💬 Productivity**
| Key | Action | Description |
|-----|--------|-------------|
| `gc` | Comment Toggle | Smart commenting (Mini.comment) |
| `;` | Command Mode | Quick command entry |
| `sa` | Add Surround | Add surrounding characters |
| `sd` | Delete Surround | Remove surrounding characters |
| `sr` | Replace Surround | Change surrounding characters |

### **✏️ Insert Mode Navigation**
| Key | Action | Description |
|-----|--------|-------------|
| `<Ctrl>b` | Beginning of Line | Jump to line start |
| `<Ctrl>e` | End of Line | Jump to line end |
| `<Ctrl>l/r` | Move Left/Right | Character navigation |
| `<Ctrl>u/d` | Move Up/Down | Line navigation |

*💡 **Pro Tip**: Press `<Space>` and wait to see all available keybindings with which-key!*

---

## 🛠 Language Support & LSP

### **Pre-configured Language Servers**
ShadowVim includes intelligent language support out of the box:

| Language | LSP Server | Features |
|----------|------------|----------|
| **Lua** | lua_ls | Neovim API completion, diagnostics |
| **Python** | pyright | Type checking, imports, refactoring |
| **TypeScript/JS** | tsserver | IntelliSense, debugging, formatting |

### **Syntax Highlighting (Treesitter)**
Advanced syntax highlighting for: `lua`, `vim`, `python`, `javascript`, `typescript`, `html`, `css`, `go`, `json`, `yaml`, `markdown`

### **Auto-formatting (Conform.nvim)**
Format-on-save configured for:
- **Lua**: stylua (consistent formatting)
- **Python**: isort + black (import sorting + code formatting)  
- **Go**: gofmt (official Go formatting)
- **JS/TS**: prettier (web standard formatting)

### **Adding New Languages**

**Method 1: Mason UI**
```vim
:Mason
```
Browse and install language servers interactively.

**Method 2: Configuration**
Edit `lua/plugins/lsp-config.lua`:
```lua
mason_lspconfig.setup({
  ensure_installed = { 
    "lua_ls", "pyright", "tsserver", 
    "rust_analyzer", "gopls", "clangd"  -- Add your servers here
  },
})
```

**Method 3: ShadowBox Override**
Create `lua/shadowbox/plugins/custom-lsp.lua`:
```lua
return {
  "neovim/nvim-lspconfig",
  opts = function(_, opts)
    opts.servers = vim.tbl_extend("force", opts.servers or {}, {
      your_lsp = {
        -- Custom LSP configuration
      }
    })
  end
}
```

---

## 🎨 Customization Guide

### **🏗️ ShadowBox Architecture**

ShadowVim features the innovative ShadowBox system for clean customization:

```
~/.config/nvim/
├── init.lua                    # Entry point (don't modify)
├── lua/
│   ├── core/                   # Default configuration
│   ├── plugins/                # Default plugins
│   └── shadowbox/                 # Your customizations go here!
│       ├── shadowlily.lua              # Your main config file
│       ├── core/
│       │   ├── options.lua             # Override vim options
│       │   └── keymaps.lua             # Custom keybindings
│       └── plugins/                    # Override or add plugins
```

### **Getting Started with ShadowBox**

#### **1. Write your own keymaps or options**
- **Customize Shadowbox/options.lua and Shadowbox/keymps.lua**
#### **🔧 Adding Custom Plugins**
- **Override Existing Plugin** or **Add newplugins.lua inside shadowbox/plugins**



---

## 🗂 Modern Plugin Architecture

ShadowVim leverages the latest 2025 Neovim ecosystem for optimal performance:

### **🍿 Snacks.nvim Suite** *(QoL Revolution)*
- **[snacks.dashboard](https://github.com/folke/snacks.nvim)** → Beautiful startup experience
- **[snacks.terminal](https://github.com/folke/snacks.nvim)** → Integrated floating terminal
- **[snacks.zen](https://github.com/folke/snacks.nvim)** → Distraction-free coding mode
- **[snacks.statuscolumn](https://github.com/folke/snacks.nvim)** → Enhanced gutter with git signs
- **[snacks.scroll](https://github.com/folke/snacks.nvim)** → Smooth scroll animations
- **[snacks.words](https://github.com/folke/snacks.nvim)** → Smart word highlighting

### **🏗️ Core Framework**
- **[Lazy.nvim](https://github.com/folke/lazy.nvim)** → Modern plugin manager with lazy loading
- **[Mini.nvim](https://github.com/echasnovski/mini.nvim)** → Comprehensive utility suite
  - Mini.files → Fast file explorer
  - Mini.pairs → Smart bracket completion  
  - Mini.comment → Intelligent commenting
  - Mini.surround → Text object manipulation
  - Mini.notify → Clean notifications

### **🎨 UI & Experience**
- **[Catppuccin](https://github.com/catppuccin/nvim)** → Modern, accessible theme
- **[Lualine](https://github.com/nvim-lualine/lualine.nvim)** → Information-rich statusline
- **[Bufferline](https://github.com/akinsho/bufferline.nvim)** → Clean buffer tabs
- **[Which-key](https://github.com/folke/which-key.nvim)** → Discoverable keybindings
- **[Telescope](https://github.com/nvim-telescope/telescope.nvim)** → Fuzzy finder for everything

### **🚀 Development Tools**
- **[Mason](https://github.com/williamboman/mason.nvim)** → LSP/tool installer
- **[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)** → LSP client configurations
- **[nvim-cmp](https://github.com/hrsh7th/nvim-cmp)** → Smart auto-completion engine
- **[Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)** → Advanced syntax highlighting
- **[Conform.nvim](https://github.com/stevearc/conform.nvim)** → Modern code formatting

### **🤖 AI Integration**
- **[Codeium.vim](https://github.com/Exafunction/codeium.vim)** → Free AI code completion
- **[LuaSnip](https://github.com/L3MON4D3/LuaSnip)** → Powerful snippet engine

### **📦 Enhanced Experience**
- **[Noice.nvim](https://github.com/folke/noice.nvim)** → Command line improvements

*Only **~24 carefully curated plugins** — no bloat, maximum efficiency*

---

## 🚨 Troubleshooting & FAQ

### **🔧 Common Issues**

**Codeium AI Not Working?**
```vim
:Codeium Auth  " Authenticate with GitHub/Google
:Codeium Chat  " Check AI status
```
- Ensure Node.js 16+ is installed
- Check internet connection for AI features
- Restart Neovim after authentication

**Mini.files Explorer Navigation**
- `<Space>e` or `-` to open file explorer
- `h/j/k/l` or arrow keys to navigate  
- `Enter` to open files/folders
- `l` or `→` to expand directories
- `h` or `←` to collapse/go up
- `g.` to toggle hidden files
- `=` to save changes (create/delete/rename files)
- `q` to close explorer

**LSP Server Issues**
```vim
:Mason          " Check installed servers
:LspInfo        " View active LSP clients  
:checkhealth    " Overall health check
```

**Slow Startup Performance**
```vim
:Lazy profile   " Check plugin load times
```
- ShadowVim targets <40ms startup
- Disable unused language servers in Mason
- Check for conflicting plugins in custom config

**Icons Not Displaying**
- Install a [Nerd Font](https://www.nerdfonts.com/) (JetBrainsMono recommended)
- Configure your terminal to use the Nerd Font
- Restart terminal and Neovim

**Formatting Not Working**
```vim
:ConformInfo    " Check formatter status
:Mason          " Install missing formatters
```
- Install formatters: `stylua`, `black`, `prettier`, etc.
- Check `:checkhealth conform` for issues

### **🔍 Diagnostic Commands**

| Command | Purpose |
|---------|---------|
| `:checkhealth` | Overall Neovim health check |
| `:Lazy` | Plugin manager status |
| `:Mason` | Language server management |
| `:LspInfo` | Active LSP servers |
| `:ConformInfo` | Code formatter status |
| `:Telescope` | Access all Telescope pickers |
| `:Snacks` | Snacks.nvim features |

### **🏗️ ShadowBox Troubleshooting**

**Custom Config Not Loading**
- Check `lua/shadowbox/shadowlily.lua` exists
- Ensure proper `require()` statements
- Check for Lua syntax errors: `:messages`

**Plugin Conflicts**
- Use `:Lazy` to check plugin status
- Override specific plugins in shadowbox
- Check load order and dependencies

**Keybinding Issues**
```vim
:WhichKey       " See all available keybindings
:verbose map <key>  " Check what a key is mapped to
```

---

## 📁 Project Structure

```
~/.config/nvim/
├── init.lua                     # 🚀 Bootstrap and entry point
├── lua/
│   ├── core/                   # 🔧 Default core configuration
│   │   ├── keymaps.lua         #    Global keybindings
│   │   └── options.lua         #    Neovim settings
│   ├── plugins/                # 📦 Default plugin configurations
│   │   ├── snacks.lua          #    Snacks.nvim QoL suite
│   │   ├── ui.lua              #    Theme, statusline, bufferline
│   │   ├── telescope.lua       #    Fuzzy finder
│   │   ├── lsp-config.lua      #    Language servers
│   │   ├── codeium.lua         #    AI completion
│   │   ├── mini.lua            #    Mini.nvim utilities
│   │   ├── treesitter.lua      #    Syntax highlighting
│   │   ├── compiletion.lua     #    nvim-cmp setup
│   │   ├── formatter.lua       #    Code formatting
│   │   ├── lazy.lua            #    Which-key
│   │   └── cmdline.lua         #    Command line enhancements
│   └── shadowbox/              # 🎯 YOUR CUSTOMIZATIONS
│       ├── shadowlily.lua      #    Your main config file
│       ├── core/               #    Override core settings
│       │   ├── options.lua     #    Custom vim options
│       │   └── keymaps.lua     #    Custom keybindings
│       └── plugins/            #    Custom/override plugins
└── LICENSE                      # MIT License
```

### **🎯 ShadowBox System Benefits**
- **🔒 Update-Safe** → Your customizations survive updates just copy paste your config in new update
- **🧹 Clean Separation** → Core stays pristine, customs stay organized  
- **🔄 Easy Rollback** → Rename shadowbox folder to return to defaults
- **📈 Scalable** → Add complexity gradually as you learn
- **🤝 Shareable** → Share your shadowbox configs with others and craft your own forks

---

## 🔄 Version History & Performance

### **Previous Versions:**
- **v1.1.0** → Performance optimizations, Codeium AI, Mini.files integration
- **v1.0.0** → Initial release with beautiful defaults

### **🚀 Current Version: v1.2.0**

- **🛡️ ShadowBox System** → Risk-free experimentation with any configuration
- **🔧 User Configuration Override** → Complete control with automatic safety net
- **📚 Try Any Distro Safely** → LazyVim, AstroNvim, custom builds - all with fallback protection
- **⚡ Enhanced Notifications** → Clear feedback on which configuration is active
- **🎯 Zero-Risk Learning** → Experiment and learn without fear of breaking anything


---

## 📸 Visual Experience

### **🍿 Modern Dashboard**
<img width="1600" height="900" alt="ShadowVim Dashboard" src="https://github.com/user-attachments/assets/2d070111-8f2f-4340-a2fe-6fe82dccaf06" />
*Clean startup experience with quick actions and performance metrics*

### **💻 Development Environment**
<img width="1600" height="900" alt="ShadowVim Coding" src="https://github.com/user-attachments/assets/61bf5f97-142a-4d0a-9c3d-2c3b2e5617f9" />
*Full LSP integration with AI completions and rich diagnostics*

### **📁 File Management**
<img width="1600" height="900" alt="ShadowVim Explorer" src="https://github.com/user-attachments/assets/8284b43e-c289-4ef1-9e90-6c039f7caf38" />
*Mini.files integration for seamless file operations*

---

## 🤝 Contributing & Community

### **🚀 Ways to Contribute**
- 🐛 **Bug Reports** → Help us identify and fix issues
- ✨ **Feature Requests** → Suggest improvements and new capabilities
- 📚 **Documentation** → Improve guides and examples
- 🎨 **UI/UX Ideas** → Design and usability enhancements
- 🔌 **Plugin Integrations** → Suggest modern plugin additions
- 🏗️ **ShadowBox Configs** → Share your custom configurations

### **📋 Contribution Guidelines**
1. **Check Issues** → Browse [existing issues](https://github.com/lightyag8mi/shadowvim/issues) first
2. **Fork & Branch** → Create feature branch from main
3. **Test Thoroughly** → Ensure changes don't break existing functionality
4. **Document Changes** → Update README and relevant docs
5. **Submit PR** → Clear description of changes and rationale

### **🎯 Priority Areas**
- **Performance optimization** → Faster startup and runtime
- **Plugin integrations** → Modern Neovim ecosystem additions
- **ShadowBox examples** → More customization templates
- **Language support** → Additional LSP configurations
- **Mobile/remote** → Better SSH and mobile development support

### **💬 Community**
- **GitHub Discussions** → Share configurations and ask questions
- **Issues Tracker** → Bug reports and feature requests
- **Wiki** → Community-maintained guides and tips

---

## ⭐ Show Your Support

### **🎯 If ShadowVim Enhances Your Workflow**
- ⭐ **Star** the repository to show appreciation
- 🍴 **Fork** and customize for your needs
- 🐛 **Report** bugs to help improve stability
- 📢 **Share** with fellow developers who'd benefit
- 🤝 **Contribute** features or improvements
- 💬 **Discuss** your use cases and customizations

### **🏆 Recognition**
ShadowVim stands on the shoulders of giants. Special thanks to:
- **Folke** for Lazy.nvim, Snacks.nvim, and the modern Neovim ecosystem
- **Echasnovski** for the incredible


