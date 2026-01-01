local M = {}

function M.setup(cp)
    return {
        -- Base UI (NES "Boxed" look)
        Normal       = { fg = cp.fg, bg = "none" },
        NormalFloat  = { fg = cp.fg, bg = cp.shadow },
        FloatBorder  = { fg = cp.mana, bold = true }, -- Thick "Sword Glow" Borders
        WinSeparator = { fg = cp.mana, bold = true }, -- Visible window splits
        
        CursorLine   = { bg = cp.shadow },
        CursorLineNr = { fg = cp.mana, bold = true },
        LineNr       = { fg = cp.aura },
        Visual       = { bg = cp.aura, bold = true },

        -- Retro High-Contrast Syntax
        -- Note: Retro themes use BOLD for almost all structural keywords
        Keyword    = { fg = cp.system, bold = true },
        Function   = { fg = cp.mana, bold = true },
        Statement  = { fg = cp.system, bold = true },
        Conditional= { fg = cp.system, bold = true },
        Repeat     = { fg = cp.system, bold = true },
        
        -- High-Visibility Data Types
        String     = { fg = cp.rose },
        Number     = { fg = cp.cherry, bold = true },
        Boolean    = { fg = cp.blood, bold = true },
        Type       = { fg = cp.gold, bold = true },
        Constant   = { fg = cp.blood, bold = true },
        
        Comment    = { fg = cp.comment, italic = true },
        Include    = { fg = cp.fg, bold = true }, -- White Imports per your preference

        -- Modern Diagnostics in Retro Style
        DiagnosticError = { fg = cp.blood, bold = true, undercurl = true },
        DiagnosticWarn  = { fg = cp.cherry, bold = true },
        DiagnosticInfo  = { fg = cp.gold },
        DiagnosticHint  = { fg = cp.comment },
        
        -- Telescope & Plugin Boxes
        TelescopeBorder = { fg = cp.mana, bold = true },
        TelescopePromptBorder = { fg = cp.system, bold = true },
    }
end

return M