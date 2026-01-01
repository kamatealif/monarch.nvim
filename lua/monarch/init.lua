local M = {}

function M.setup()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.termguicolors = true
    vim.g.colors_name = "monarch"

    local cp = require("monarch.palette").colors
    local groups = require("monarch.highlights").setup(cp)

    for group, settings in pairs(groups) do
        vim.api.nvim_set_hl(0, group, settings)
    end

    -- Terminal colors matching NES structure
    vim.g.terminal_color_0 = cp.bg
    vim.g.terminal_color_1 = cp.constant
    vim.g.terminal_color_2 = cp.string
    vim.g.terminal_color_3 = cp.yellow
    vim.g.terminal_color_4 = cp.func
    vim.g.terminal_color_5 = cp.keyword
    vim.g.terminal_color_6 = cp.type
    vim.g.terminal_color_7 = cp.fg

    -- Transparency Enforcement
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