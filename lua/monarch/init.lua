local M = {}

function M.load()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end
    vim.o.termguicolors = true
    vim.g.colors_name = "monarch"

    local cp = require("monarch.palette").colors
    local groups = require("monarch.highlights").setup(cp)

    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end
end

return M