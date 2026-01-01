local M = {}

function M.setup(cp)
    return {
        -- Base UI
        Normal       = { fg = cp.fg, bg = "none" },
        CursorLineNr = { fg = cp.mana, bold = true },
        LineNr       = { fg = cp.comment },
        Visual       = { bg = cp.aura },

        -- THE RULE: Red for Keywords and Functions
        Keyword    = { fg = cp.mana, bold = true },
        Function   = { fg = cp.mana, bold = true },
        Statement  = { fg = cp.mana, bold = true },
        Operator   = { fg = cp.mana },
        
        -- THE RULE: White for Imports and Constants
        Include    = { fg = cp.fg, bold = true },
        Constant   = { fg = cp.fg, bold = true },
        Boolean    = { fg = cp.fg, bold = true },
        
        -- THE RULE: Grayed-out for Variables, Strings, and Parameters
        ["@variable"] = { fg = cp.faded },
        ["@parameter"] = { fg = cp.faded, italic = true },
        String        = { fg = cp.faded },
        Number        = { fg = cp.faded },
        Comment       = { fg = cp.comment, italic = true },

        -- Tree-Sitter Specifics
        ["@function"]     = { fg = cp.mana, bold = true },
        ["@keyword"]      = { fg = cp.mana, bold = true },
        ["@include"]      = { fg = cp.fg, bold = true },
        ["@punctuation"]  = { fg = cp.faded },
    }
end

return M