local M = {}

function M.setup(cp)
    return {
        -- UI Components
        Normal       = { fg = cp.fg, bg = cp.bg },
        NormalFloat  = { fg = cp.fg, bg = cp.bg },
        FloatBorder  = { fg = cp.mana },
        CursorLine   = { bg = cp.shadow },
        CursorLineNr = { fg = cp.mana, bold = true },
        LineNr       = { fg = cp.aura },
        Visual       = { bg = cp.aura },
        Pmenu        = { fg = cp.fg, bg = cp.shadow },
        PmenuSel     = { fg = cp.bg, bg = cp.mana, bold = true },
        Search       = { fg = cp.bg, bg = cp.yellow },
        IncSearch    = { fg = cp.bg, bg = cp.mana },
        VertSplit    = { fg = cp.shadow },

        -- Syntax Highlighting
        Comment    = { fg = cp.comment, italic = true },
        Keyword    = { fg = cp.system, bold = true },
        Function   = { fg = cp.mana },
        String     = { fg = cp.green },
        Number     = { fg = cp.system },
        Operator   = { fg = cp.mana },
        Type       = { fg = cp.cyan },
        Constant   = { fg = cp.critical },

        -- Tree-sitter Support
        ["@function"] = { fg = cp.mana },
        ["@keyword"]  = { fg = cp.system, bold = true },
        ["@variable"] = { fg = cp.fg },
        ["@property"] = { fg = cp.cyan },
        ["@comment"]  = { fg = cp.comment, italic = true },

        -- Plugin Integration
        NvimTreeFolderName   = { fg = cp.mana },
        TelescopeBorder      = { fg = cp.mana },
        TelescopePromptTitle = { fg = cp.system, bold = true },
        GitSignsAdd          = { fg = cp.green },
        GitSignsChange       = { fg = cp.cyan },
        GitSignsDelete       = { fg = cp.critical },
    }
end

return M