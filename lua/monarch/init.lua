local M = {}

function M.setup()
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end
    if vim.fn.exists("syntax_on") then
        vim.cmd("syntax reset")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "monarch"

    local cp = require("monarch.palette").colors
    local highlights = require("monarch.highlights").setup(cp)

    -- 1. Apply Standard Highlight Groups
    for group, settings in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, settings)
    end

    -- 2. Define Red Monarch Terminal Colors
    -- This matches the NES-style high-coverage mapping
    vim.g.terminal_color_0  = cp.bg       -- Black
    vim.g.terminal_color_1  = cp.critical -- Red
    vim.g.terminal_color_2  = cp.green    -- Green (Rose Red)
    vim.g.terminal_color_3  = cp.yellow   -- Yellow (Hair Red)
    vim.g.terminal_color_4  = cp.mana     -- Blue (Sword Glow)
    vim.g.terminal_color_5  = cp.system   -- Magenta (Vivid Red)
    vim.g.terminal_color_6  = cp.cyan     -- Cyan (Bright Rose)
    vim.g.terminal_color_7  = cp.fg       -- White (Moonlit White)
    
    -- Bright variants
    vim.g.terminal_color_8  = cp.shadow
    vim.g.terminal_color_9  = cp.critical
    vim.g.terminal_color_10 = cp.green
    vim.g.terminal_color_11 = cp.yellow
    vim.g.terminal_color_12 = cp.mana
    vim.g.terminal_color_13 = cp.system
    vim.g.terminal_color_14 = cp.cyan
    vim.g.terminal_color_15 = "#FFFFFF"   -- Pure White Glow

    -- 3. Persistent Transparency Enforcement
    local function enforce_bg()
        local groups = { "Normal", "NormalNC", "NormalFloat", "SignColumn", "StatusLine" }
        for _, g in ipairs(groups) do
            vim.api.nvim_set_hl(0, g, { fg = cp.fg, bg = "none" })
        end
    end

    vim.api.nvim_create_autocmd({ "UIEnter", "VimEnter", "ColorScheme" }, {
        callback = function() vim.schedule(enforce_bg) end,
    })
end

return M