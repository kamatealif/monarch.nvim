local M = {}

function M.setup(cp) -- cp = Color Palette from monarch.palette
    return {
        -- Base Editor UI
        Normal       = { fg = cp.fg, bg = cp.bg },       -- Moonlit White on Void Black
        CursorLine   = { bg = cp.shadow },               -- Subtle Reddish-Black
        CursorLineNr = { fg = cp.mana, bold = true },    -- Sword Glow Red
        LineNr       = { fg = cp.aura },                 -- Deep Crimson
        Visual       = { bg = cp.aura },                 -- Deep Crimson Selection
        Pmenu        = { fg = cp.fg, bg = cp.shadow },   -- Moonlit White on Reddish-Black
        VertSplit    = { fg = cp.shadow },               -- Minimalist Divider

        -- Syntax (Red Monarch Atmosphere)
        -- Replaced old grey/purple with Deep Cherry for comments
        Comment    = { fg = "#3E161B", italic = true },  -- Deep Cherry
        Keyword    = { fg = cp.system, bold = true },    -- Vivid Red
        Function   = { fg = cp.mana },                   -- Sword Glow Red
        String     = { fg = cp.green },                  -- Rose Red
        Number     = { fg = cp.system },                 -- Vivid Red
        Operator   = { fg = cp.mana },                   -- Sword Glow Red
        Type       = { fg = cp.cyan },                   -- Bright Rose
        Constant   = { fg = cp.critical },               -- Blood Red

        -- Tree-Sitter (Modern Highlighting)
        ["@function"] = { fg = cp.mana },                -- Sword Glow Red
        ["@keyword"]  = { fg = cp.system, bold = true }, -- Vivid Red
        ["@variable"] = { fg = cp.fg },                  -- Moonlit White
        ["@property"] = { fg = cp.cyan },                -- Bright Rose

        -- Plugins (Consistency across UI)
        NvimTreeFolderName   = { fg = cp.mana },         -- Sword Glow Red
        TelescopeBorder      = { fg = cp.mana },         -- Sword Glow Red
        TelescopePromptTitle = { fg = cp.system, bold = true }, -- Vivid Red
    }
end

return M