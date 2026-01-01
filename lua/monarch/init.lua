local M = {}

function M.setup()
    if vim.g.colors_name then vim.cmd("hi clear") end
    vim.o.termguicolors = true
    vim.g.colors_name = "monarch"

    local cp = require("monarch.palette").colors
    local highlights = require("monarch.highlights").setup(cp)

    -- Applying the Retro Monarch groups
    for group, settings in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, settings)
    end

    -- Btop-style transparency enforcement
    local function enforce_bg()
        local groups = { "Normal", "NormalNC", "SignColumn", "StatusLine" }
        for _, g in ipairs(groups) do
            vim.api.nvim_set_hl(0, g, { fg = cp.fg, bg = "none" })
        end
    end

    vim.api.nvim_create_autocmd({ "UIEnter", "ColorScheme" }, {
        callback = function() vim.schedule(enforce_bg) end,
    })
end

return M