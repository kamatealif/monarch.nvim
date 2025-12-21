# Monarch.nvim 🗡️

A high-contrast, "Shadow Monarch" inspired theme for Neovim.

### Installation

Using **lazy.nvim**:

```lua
return {
    {
        "kamatealif/monarch.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("monarch").setup()
            vim.cmd.colorscheme("monarch")
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "monarch",
        },
    },
}
```
