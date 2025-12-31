local M = {}

function M.setup(cp)
    return {
        -- Base Editor UI (High Contrast / Transparent)
        Normal       = { fg = cp.fg, bg = "none" },
        NormalNC      = { fg = cp.fg, bg = "none" },
        NormalFloat  = { fg = cp.fg, bg = "none" },
        FloatBorder  = { fg = cp.mana },
        CursorLine   = { bg = cp.shadow },
        CursorLineNr = { fg = cp.mana, bold = true },
        LineNr       = { fg = cp.aura },
        Visual       = { bg = cp.aura },
        Pmenu        = { fg = cp.fg, bg = cp.shadow },
        PmenuSel     = { fg = cp.bg, bg = cp.mana, bold = true },
        Search       = { fg = cp.bg, bg = cp.yellow },
        IncSearch    = { fg = cp.bg, bg = cp.mana, bold = true },

        -- Syntax (The "Solo Leveling" System Look)
        Comment    = { fg = cp.comment, italic = true },
        Keyword    = { fg = cp.system, bold = true },
        Function   = { fg = cp.mana, bold = true },
        String     = { fg = cp.green },
        Number     = { fg = cp.system },
        Operator   = { fg = cp.mana },
        Type       = { fg = cp.cyan, italic = true },
        Constant   = { fg = cp.critical },

        -- Diagnostics (Pure Red Monarch Look)
        DiagnosticError = { fg = cp.critical, bold = true },
        DiagnosticWarn  = { fg = cp.yellow },
        DiagnosticInfo  = { fg = cp.cyan },
        DiagnosticHint  = { fg = cp.comment },
        DiagnosticVirtualTextError = { fg = cp.critical, italic = true },
        DiagnosticVirtualTextWarn  = { fg = cp.yellow, italic = true },

        -- Tree-Sitter & Plugins
        ["@function"] = { fg = cp.mana, bold = true },
        ["@variable"] = { fg = cp.fg },
        ["@keyword"]  = { fg = cp.system, bold = true },
        ["@property"] = { fg = cp.cyan },
        NvimTreeFolderName = { fg = cp.mana },
        TelescopeBorder     = { fg = cp.mana },
    }
end

return M