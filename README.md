
#  ShadowVim

> **Craft your own digital realm** — Minimal and blazing fast, feature-rich, and integrated AI right out of the box.

<img width="1600" height="900" alt="Screenshot 2025-08-10 194931" src="https://github.com/user-attachments/assets/0f3ff80d-7827-44a8-9642-06908b2e4e5e" />


---

## ⚡ Why ShadowVim?
ShadowVim is not “just another Neovim distro” — it’s built to be:
- **Minimal** → Lightweight core (~23 plugins total)
- **Fast** → Startup in **30–80ms** with full UI animations
- **Feature-Rich** → LSP, AI (Copilot), Git tools, file explorer, dashboard, terminal, Zen mode, and more

---

## 🖥 Features at a Glance

| Category            | Feature                                                 |
| ------------------- | ------------------------------------------------------- |
| **Speed**           | 30–80ms startup (full plugins + animations)             |
| **UI**              | Catppuccin theme, animated statusline, smooth dashboard |
| **AI**              | GitHub Copilot pre-integrated                           |
| **Code**            | LSP, Autocomplete, Snippets                             |
| **Navigation**      | Snacks.nvim Explorer (fast alternative to Nvim-Tree)    |
| **Productivity**    | Zen Mode, Floating Terminal, Telescope search           |
| **Version Control** | Built-in Git browser (Snacks)                           |


---

## 🗂 Plugin Credits

ShadowVim wouldn’t exist without:

* [**Snacks.nvim**](https://github.com/folke/snacks.nvim) — UI, dashboard, explorer, terminal, git browser
* [**Mini.nvim**](https://github.com/echasnovski/mini.nvim) — Core utilities, essentials
* [**Lazy.nvim**](https://github.com/folke/lazy.nvim) — Plugin management
* [**Catppuccin**](https://github.com/catppuccin/nvim) — Theme
* [**Copilot.vim**](https://github.com/github/copilot.vim) — AI assistance
* And more in the [`plugins/`](./lua/plugins/) folder.


---

## 🔄 Versioning

* **1.0.0** → First public release
* **1.0.x** → Small updates / bug fixes
* **1.x.0** → Moderate feature updates
* **x.0.0** → Major overhauls

---

## 📸 Screenshots

### **Dashboard**

<img width="1600" height="900" alt="Screenshot 2025-08-10 194931" src="https://github.com/user-attachments/assets/438fcdbf-df7e-4a62-92ae-48d9b4b37946" />


### **Coding Experience**

<img width="1600" height="900" alt="Screenshot 2025-08-10 195110" src="https://github.com/user-attachments/assets/115dab08-01d2-4db5-8c65-2f707a88f488" />

### **Plugin List**

<img width="1600" height="900" alt="Screenshot 2025-08-10 195137" src="https://github.com/user-attachments/assets/3aee79f7-53c7-40b3-a01f-33bf9f91e5be" />


## Start using today!

## 📦 Dependencies

Before installing ShadowVim, make sure you have the following installed:

### **Required**
- **[Neovim 0.9+](https://neovim.io/)** – ShadowVim is built for the latest Neovim releases.  
- **[Git](https://git-scm.com/)** – Needed for plugin management.  
- **[Node.js](https://nodejs.org/en/)** – Required for language servers, GitHub Copilot, and other JS-based plugins.  
- **[Nerd Font](https://www.nerdfonts.com/font-downloads)** – For proper icons and UI rendering (recommend *FiraCode Nerd Font* or *JetBrainsMono Nerd Font*).  

### **Optional (but recommended)**

- **[Python 3](https://www.python.org/)** – Required if you want Python-based plugins/LSPs.  
- **[C Compiler (GCC/Clang/MinGW)]** – Required for compiling certain language servers (like Treesitter).


---
## 🚀 Quick Install

### **Windows**
```powershell
git clone https://github.com/lightyag8mi/shadowvim.git $env:LOCALAPPDATA\nvim
```

### **Linux & macOS**

```bash
git clone https://github.com/lightyag8mi/shadowvim.git ~/.config/nvim
```

Open Neovim:

```bash
nvim
```
