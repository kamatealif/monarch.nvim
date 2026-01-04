local M = {}

function M.setup()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.g.colors_name = "monarch"

    local cp = require("monarch.palette").colors
    local hl = require("monarch.highlights").setup(cp)

    for group, settings in pairs(hl) do
        vim.api.nvim_set_hl(0, group, settings)
    end

    -- Persistent Transparency Sync
    local function enforce_void()
        local groups = { "Normal", "NormalNC", "NormalFloat", "SignColumn" }
        for _, g in ipairs(groups) do
            vim.api.nvim_set_hl(0, g, { fg = cp.fg, bg = "none" })
        end
    end

    vim.api.nvim_create_autocmd({ "UIEnter", "ColorScheme" }, {
        callback = function() vim.schedule(enforce_void) end,
    })
end

return M