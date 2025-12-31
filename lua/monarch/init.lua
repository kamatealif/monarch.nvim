local M = {}

function M.setup()
    -- Reset existing highlights to provide a clean slate for Red Monarch
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    vim.g.colors_name = "monarch"

    -- Ensure we are pulling the specific Red Monarch palette variables
    local cp = require("monarch.palette").colors
    
    -- Fast-track the background to match your terminal "Void"
    vim.api.nvim_set_hl(0, "Normal", { fg = cp.fg, bg = cp.bg })
    vim.api.nvim_set_hl(0, "NormalFloat", { fg = cp.fg, bg = cp.bg })

    -- Load the remaining highlight groups
    local highlights = require("monarch.highlights")
    local groups = highlights.setup(cp)

    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M