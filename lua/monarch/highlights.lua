local M = {}

function M.setup(cp)
    return {
        -- Base Editor UI (High Contrast / Transparent)
        Normal       = { fg = cp.fg, bg = "none" },
        NormalNC     = { fg = cp.fg, bg = "none" },
        NormalFloat  = { fg = cp.fg, bg = "none" },
        FloatBorder  = { fg = cp.mana },
        CursorLine   = { bg = cp.shadow },
        CursorLineNr = { fg = cp.mana, bold = true },
        LineNr       = { fg = cp.aura },
        Visual       = { bg = cp.aura },

        -- Syntax (The "Solo Leveling" System Look)
        Comment    = { fg = cp.comment, italic = true },
        Keyword    = { fg = cp.system, bold = true },
        Function   = { fg = cp.mana, bold = true },
        String     = { fg = cp.green },
        Number     = { fg = cp.system },
        Operator   = { fg = cp.mana },
        Type       = { fg = cp.cyan, italic = true },
        Constant   = { fg = cp.critical },
        
        -- UPDATED: Imports set to Moonlit White (cp.fg) for maximum visibility
        Include    = { fg = cp.fg, bold = true },
        PreProc    = { fg = cp.fg, bold = true },

        -- Diagnostics (Pure Red Monarch Look)
        DiagnosticError = { fg = cp.critical, bold = true },
        DiagnosticWarn  = { fg = cp.yellow },
        DiagnosticInfo  = { fg = cp.cyan },
        DiagnosticHint  = { fg = cp.comment },

        -- Tree-Sitter & Plugins
        ["@function"]   = { fg = cp.mana, bold = true },
        ["@include"]    = { fg = cp.fg, bold = true },   -- Tree-sitter import match
        ["@preproc"]    = { fg = cp.fg, bold = true },   -- Tree-sitter preprocessor match
        ["@variable"]   = { fg = cp.fg },
        ["@keyword"]    = { fg = cp.system, bold = true },
        ["@property"]   = { fg = cp.cyan },
    }
end

return M