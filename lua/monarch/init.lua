local M = {}

function M.setup()
    if vim.g.colors_name then vim.cmd("hi clear") end
    vim.o.termguicolors = true
    vim.g.colors_name = "monarch"

    local cp = require("monarch.palette").colors
    local highlights = require("monarch.highlights").setup(cp)

    -- Apply all highlights
    for group, settings in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, settings)
    end

    -- Red Monarch Terminal Sync
    vim.g.terminal_color_0  = cp.bg
    vim.g.terminal_color_1  = cp.mana
    vim.g.terminal_color_2  = cp.faded
    vim.g.terminal_color_3  = cp.system
    vim.g.terminal_color_4  = cp.mana
    vim.g.terminal_color_5  = cp.aura
    vim.g.terminal_color_6  = cp.blood
    vim.g.terminal_color_7  = cp.fg
    vim.g.terminal_color_15 = cp.white

    -- Btop-style transparency enforcement
    local function enforce_bg()
        local groups = { "Normal", "NormalNC", "NormalFloat", "SignColumn", "StatusLine" }
        for _, g in ipairs(groups) do
            vim.api.nvim_set_hl(0, g, { fg = cp.fg, bg = "none" })
        end
    end

    vim.api.nvim_create_autocmd({ "UIEnter", "ColorScheme" }, {
        callback = function() vim.schedule(enforce_bg) end,
    })
end

function M.load() M.setup() end

return M