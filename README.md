# 🗡️ Monarch.nvim

**Monarch.nvim** is an atmospheric, high-contrast Neovim theme inspired by the "Shadow Monarch" aesthetic. It replaces traditional syntax colors with a lethal palette of **Sword Glow Red**, **Moonlit White**, and **Deep Red-Black**.

Designed for those who want their editor to feel like a high-level dungeon system, it provides a sharp, focused environment for both coding and system "ricing".

---

## ✨ Key Features

- **The "Void" Background**: Uses a deep red-black shadow (`#0F0508`) that grounds your workspace and reduces eye strain.
- **Sword Glow Accents**: Critical functions, operators, and UI borders pulse with a vibrant **Sword Glow Red** (`#FF1F4C`).
- **System Atmosphere**: Keywords and logic flow use **Vivid Red** and **Hair Red** to mimic a status window interface.
- **Moonlit Legibility**: Core text is rendered in **Moonlit White** (`#F0E0E6`) for perfect clarity against dark backgrounds.
- **Modern Support**: Full integration with **Tree-sitter**, **LSP diagnostics**, and popular plugins like **Telescope** and **NvimTree**.

---

## 🎨 Palette Summary

| Element        | Hex Code  | Purpose                |
| :------------- | :-------- | :--------------------- |
| **Void**       | `#0F0508` | Main Background        |
| **Moonlit**    | `#F0E0E6` | Primary Text           |
| **Sword Glow** | `#FF1F4C` | Functions & UI Accents |
| **Hair Red**   | `#D9263E` | Selection & Highlights |
| **Cherry**     | `#3E161B` | Muted Comments         |

---

## 🚀 Installation

Using **lazy.nvim**:

```lua
return {
    {
        "kamatealif/monarch.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            -- Initialize variables and load the theme
            require("monarch").setup()
            vim.cmd.colorscheme("monarch")
        end,
    },
}
```
