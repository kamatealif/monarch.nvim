local M = {}

function M.setup(cp) -- cp = Color Palette
    return {
        -- Base Editor UI
        Normal       = { fg = cp.fg, bg = cp.bg },
        CursorLine   = { bg = cp.shadow },
        CursorLineNr = { fg = cp.mana, bold = true },
        LineNr       = { fg = cp.aura },
        Visual       = { bg = cp.aura },
        Pmenu        = { fg = cp.fg, bg = cp.shadow },
        VertSplit    = { fg = cp.shadow },

        -- Syntax (Solo Leveling System look)
        Comment    = { fg = "#44475a", italic = true },
        Keyword    = { fg = cp.system, bold = true },
        Function   = { fg = cp.mana },
        String     = { fg = cp.green },
        Number     = { fg = cp.system },
        Operator   = { fg = cp.mana },
        Type       = { fg = cp.cyan },
        Constant   = { fg = cp.critical },

        -- Tree-Sitter (Modern Highlighting)
        ["@function"] = { fg = cp.mana },
        ["@keyword"]  = { fg = cp.system, bold = true },
        ["@variable"] = { fg = cp.fg },
        ["@property"] = { fg = cp.cyan },

        -- Plugins (NvimTree, Telescope, etc.)
        NvimTreeFolderName = { fg = cp.mana },
        TelescopeBorder     = { fg = cp.mana },
        TelescopePromptTitle = { fg = cp.system, bold = true },
    }
end

return M