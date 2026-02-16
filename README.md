# Monarch.nvim

**Monarch.nvim** is a red-driven Neovim colorscheme with a muted, focused hierarchy.

It uses:

- transparent panel backgrounds (`"NONE"`) for the main editor surface
- shaded selection blocks (`#32292C`) instead of loud highlights
- red accents for only high-priority syntax (`Keyword`, `Function`, `Operator`, `Delimiter`)
- neutral grayscale for most other syntax groups

## Key Features

- Red Monarch syntax hierarchy: red where intent matters, grayscale everywhere else.
- Shaded UI layers: subtle line numbers, folds, menus, statusline, and tabs.
- Search and diagnostics tuned to muted reds for visual consistency.
- Treesitter and classic Vim highlight groups are both mapped.
- Plugin groups included for Telescope and Alpha.
- Startup/event background enforcement for transparent panel consistency.
- ANSI terminal colors exported from the same palette.

## Palette Summary

| Token       | Hex       | Usage                                          |
| :---------- | :-------- | :--------------------------------------------- |
| `panel`     | `NONE`    | Main editor/floating backgrounds               |
| `fg`        | `#EDEDED` | Primary foreground text                        |
| `subtle`    | `#7A6F73` | Comments, line numbers, low-priority UI        |
| `selection` | `#32292C` | Visual selection and cursorline surfaces       |
| `hot_red`   | `#BF1111` | Keywords, functions, operators, active accents |
| `mid_red`   | `#8A1A1A` | Search and secondary red accents               |
| `border`    | `#BF1111` | Float/window borders                           |

## Installation

Using `lazy.nvim`:

```lua
return {
  {
    "kamatealif/monarch.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme monarch")
    end,
  },
}
```
