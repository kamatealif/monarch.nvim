local M = {}

function M.setup()
    -- Reset existing highlights
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end
    vim.g.colors_name = "monarch"

    local cp = require("monarch.palette").colors
    local groups = require("monarch.highlights").setup(cp)

    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M