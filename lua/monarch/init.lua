local M = {}

-- Changed from M.load() to M.setup() to match your plugin config
function M.setup() 
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end
    vim.o.termguicolors = true
    vim.g.colors_name = "monarch"

    local cp = require("monarch.palette").colors
    local groups = require("monarch.highlights").setup(cp)

    -- Set Normal background first to ensure the "Void" applies immediately
    vim.api.nvim_set_hl(0, "Normal", { fg = cp.fg, bg = cp.bg })

    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M