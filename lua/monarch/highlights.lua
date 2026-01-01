local M = {}

function M.setup(cp)
  return {
    -- Base Editor UI
    Normal           = { fg = cp.fg, bg = "none" },

    -- PULSE AURA: High-contrast selection for peak visibility
    Visual           = { bg = cp.aura, fg = cp.aura_fg, bold = true },

    CursorLineNr     = { fg = cp.mana, bold = true },
    LineNr           = { fg = cp.comment },

    -- LOGIC DIFFERENTIATION
    Function         = { fg = cp.mana, bold = true },   -- Brighter Sword Glow
    Keyword          = { fg = cp.system, bold = true }, -- Deeper System Crimson
    Statement        = { fg = cp.system, bold = true },
    Operator         = { fg = cp.mana },                -- Active Operators glow

    -- STRUCTURE & DATA
    Include          = { fg = cp.fg, bold = true }, -- White structure
    Constant         = { fg = cp.blood, bold = true },

    -- THE SHADOWS: User-defined values
    ["@variable"]    = { fg = cp.faded },  -- Variables recede
    ["@parameter"]   = { fg = cp.faded, italic = true },
    String           = { fg = cp.faded },  -- Subdued content
    Comment          = { fg = cp.comment, italic = true },

    -- Tree-Sitter Logic Coverage
    ["@function"]    = { fg = cp.mana, bold = true },
    ["@keyword"]     = { fg = cp.system, bold = true },
    ["@include"]     = { fg = cp.fg, bold = true },
    ["@variable"]    = { fg = cp.faded },
    ["@punctuation"] = { fg = cp.comment },      -- Braces blend into shadows
  }
end

return M
