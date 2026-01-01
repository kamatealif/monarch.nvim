local M = {}

function M.setup(cp)
    return {
        -- Base Editor UI
        Normal       = { fg = cp.fg, bg = "none" },
        NormalFloat  = { fg = cp.fg, bg = "none" },
        FloatBorder  = { fg = cp.mana, bold = true },
        CursorLine   = { bg = cp.shadow },
        CursorLineNr = { fg = cp.mana, bold = true },
        LineNr       = { fg = cp.comment },
        
        -- PULSE AURA: High-contrast selection
        Visual       = { bg = cp.aura, fg = cp.white, bold = true },

        -- LOGIC: Tiered Red Hierarchy
        Function     = { fg = cp.mana, bold = true },   -- Sword Glow Red
        Keyword      = { fg = cp.system, bold = true }, -- Vivid Crimson
        Statement    = { fg = cp.system, bold = true },
        Operator     = { fg = cp.mana },                -- Active Operators
        
        -- STRUCTURE: Moonlit White
        Include      = { fg = cp.fg, bold = true },     -- White Imports
        Constant     = { fg = cp.blood, bold = true },  -- Blood Red Constants
        
        -- THE SHADOWS: User-defined content
        ["@variable"] = { fg = cp.faded },               -- Variables recede
        ["@parameter"] = { fg = cp.faded, italic = true },
        String        = { fg = cp.faded },               -- Subdued content
        Comment       = { fg = cp.comment, italic = true },

        -- Tree-Sitter & Plugin Coverage
        ["@function"]     = { fg = cp.mana, bold = true },
        ["@keyword"]      = { fg = cp.system, bold = true },
        ["@include"]      = { fg = cp.fg, bold = true },
        ["@punctuation"]  = { fg = cp.comment }, -- Brackets blend into shadows
        TelescopeBorder   = { fg = cp.mana, bold = true },
        NvimTreeFolderName = { fg = cp.mana },
    }
end

return M