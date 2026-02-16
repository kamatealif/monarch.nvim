local M = {}

local function apply(highlights)
    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

function M.setup()
    local p = require("monarch.palette")
    local highlights = require("monarch.highlights").get()
    local panel = p.panel or p.none or p.bg
    local fg = p.fg or p.light_silver
    local subtle = p.subtle or p.silver
    local selection = p.selection or p.bg_alt

    vim.o.termguicolors = true
    vim.o.winblend = 0
    vim.o.pumblend = 0

    -- Reset existing highlights
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.background = "dark"
    vim.g.colors_name = "monarch"

    -- Apply all Color Corrections
    apply(highlights)

    -- Keep transparent panel groups consistent after startup/plugin redraws
    local function enforce_panel()
        vim.api.nvim_set_hl(0, "Normal", { fg = fg, bg = panel })
        vim.api.nvim_set_hl(0, "NormalNC", { fg = fg, bg = panel })
        vim.api.nvim_set_hl(0, "NormalFloat", { fg = fg, bg = panel })
        vim.api.nvim_set_hl(0, "StatusLine", { fg = fg, bg = selection })
        vim.api.nvim_set_hl(0, "TabLine", { fg = subtle, bg = panel })
        vim.api.nvim_set_hl(0, "AlphaNormal", { fg = fg, bg = panel })
    end

    local group = vim.api.nvim_create_augroup("MonarchPanelEnforce", { clear = true })
    vim.api.nvim_create_autocmd({ "UIEnter", "VimEnter", "ColorScheme" }, {
        group = group,
        callback = function()
            vim.schedule(enforce_panel)
        end,
    })
    vim.api.nvim_create_autocmd("User", {
        group = group,
        pattern = "AlphaReady",
        callback = function()
            vim.schedule(enforce_panel)
        end,
    })

    -- Correct Terminal Colors (ANSI)
    vim.g.terminal_color_0 = p.bg
    vim.g.terminal_color_1 = p.vivid_red
    vim.g.terminal_color_2 = p.bright_red
    vim.g.terminal_color_3 = p.crimson
    vim.g.terminal_color_4 = p.blood_red
    vim.g.terminal_color_5 = p.bright_red
    vim.g.terminal_color_6 = p.silver
    vim.g.terminal_color_7 = p.off_white
    vim.g.terminal_color_8 = p.bg_alt
    vim.g.terminal_color_9 = p.bright_red

    -- External Plugin Support (Bufferline / ToggleTerm)
    local has_bufferline, bufferline = pcall(require, "bufferline")
    if has_bufferline then
        bufferline.setup({
            options = { separator_style = "slant" },
            highlights = {
                fill = { bg = p.bg },
                background = { fg = p.blood_red, bg = p.bg },
                buffer_selected = { fg = p.bright_red, bg = p.bg_alt, bold = true },
            }
        })
    end

    local has_tt, toggleterm = pcall(require, "toggleterm")
    if has_tt then
        toggleterm.setup({
            direction = "float",
            open_mapping = [[<c-\>]],
            float_opts = { border = "curved" }
        })
    end

    -- Auto-CD Correction: Terminal always opens in current file directory
    vim.api.nvim_create_autocmd("BufEnter", {
        callback = function()
            local path = vim.fn.expand("%:p:h")
            if vim.fn.isdirectory(path) == 1 then
                vim.api.nvim_set_current_dir(path)
            end
        end,
    })
end

return M
