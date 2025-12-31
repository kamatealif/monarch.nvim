local M = {}

function M.setup() -- Renamed to setup to fix the 'nil' error
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end
    vim.o.termguicolors = true
    vim.g.colors_name = "monarch"

    local cp = require("monarch.palette").colors
    local groups = require("monarch.highlights").setup(cp)

    -- IMPORTANT: Set the background to nil to allow your wallpaper to show through
    vim.api.nvim_set_hl(0, "Normal", { fg = cp.fg, bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { fg = cp.fg, bg = "none" })

    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M