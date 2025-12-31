local M = {}

function M.setup(cp)
    return {
        -- Editor UI (Transparency & Sharp Edges)
        Normal       = { fg = cp.fg, bg = "none" }, -- Transparent background
        CursorLine   = { bg = cp.shadow },
        Visual       = { bg = cp.aura },
        LineNr       = { fg = cp.aura },
        CursorLineNr = { fg = cp.mana, bold = true }, -- Glowing Mana Line Number

        -- Diagnostic "Lethality" (Errors/Warnings)
        DiagnosticError = { fg = cp.error, bold = true },
        DiagnosticWarn  = { fg = cp.warning },
        DiagnosticInfo  = { fg = cp.info },
        DiagnosticHint  = { fg = cp.hint },
        
        -- Virtual Text (the text at the top of your screenshot)
        DiagnosticVirtualTextError = { fg = cp.error, bg = "none", italic = true },
        DiagnosticVirtualTextWarn  = { fg = cp.warning, bg = "none", italic = true },

        -- Syntax (Solo Leveling System look)
        Comment    = { fg = cp.comment, italic = true },
        Keyword    = { fg = cp.system, bold = true },
        Function   = { fg = cp.mana, bold = true }, -- Functions must glow
        ["@variable"] = { fg = cp.fg },
    }
end

return M