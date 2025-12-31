local M = {}

function M.setup()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end
    vim.o.termguicolors = true
    vim.g.colors_name = "monarch"

    local cp = require("monarch.palette").colors
    local highlights = require("monarch.highlights")
    local groups = highlights.setup(cp)

    -- Function to force 'none' background for transparency
    local function enforce_monarch_bg()
        local transparent_groups = { 
            "Normal", "NormalNC", "NormalFloat", 
            "StatusLine", "SignColumn", "FoldColumn", "EndOfBuffer" 
        }
        for _, group in ipairs(transparent_groups) do
            vim.api.nvim_set_hl(0, group, { fg = cp.fg, bg = "none" })
        end
    end

    -- Apply all highlight groups
    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end

    -- Persistent transparency enforcement
    vim.api.nvim_create_autocmd({ "UIEnter", "VimEnter", "ColorScheme" }, {
        callback = function() vim.schedule(enforce_monarch_bg) end,
    })
end

return M