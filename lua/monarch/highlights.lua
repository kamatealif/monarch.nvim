local M = {}

function M.setup(cp)
    return {
        -- Base Editor UI
        Normal       = { fg = cp.fg, bg = "none" },
        NormalFloat  = { fg = cp.fg, bg = "none" },
        FloatBorder  = { fg = cp.mana, bold = true },
        CursorLineNr = { fg = cp.mana, bold = true },
        LineNr       = { fg = cp.comment },
        
        -- Pulse Aura Selection
        Visual       = { bg = cp.aura, fg = cp.white, bold = true },

        -- Logic Hierarchy (The Red Rule)
        Function     = { fg = cp.mana, bold = true },   -- Sword Glow Red
        Keyword      = { fg = cp.system, bold = true }, -- Vivid Crimson
        Operator     = { fg = cp.mana },
        
        -- Shadow Content (The Gray Rule)
        ["@variable"]  = { fg = cp.faded },
        ["@parameter"] = { fg = cp.faded, italic = true },
        String         = { fg = cp.faded },
        Comment        = { fg = cp.comment, italic = true },

        -- Structure
        Include  = { fg = cp.fg, bold = true }, -- Moonlit White Imports
        Constant = { fg = cp.blood, bold = true },
    }
end

return M