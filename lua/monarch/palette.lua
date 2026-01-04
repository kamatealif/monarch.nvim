local M = {}

M.colors = {
    -- Core System Atmosphere
    bg       = "#0F0508", -- Void Black
    fg       = "#F0E0E6", -- Moonlit White (Primary structure)
    shadow   = "#1A0F11", -- Reddish-Black
    aura     = "#5E1C24", -- Deep Crimson (Selection Pulse)
    
    -- The Hierarchy of Reds (Logic)
    mana     = "#FF1F4C", -- Sword Glow Red (Functions: Lethal/Active)
    system   = "#BE2E3F", -- Vivid Crimson (Keywords: Heavy/Structural)
    blood    = "#FF0000", -- Blood Red (Constants/Booleans)
    
    -- Secondary Shadow Colors (Content)
    faded    = "#8A7A80", -- Shadow Gray (Variables/Strings)
    comment  = "#3E161B", -- Deep Cherry Gray (Comments)
    
    white    = "#FFFFFF", -- Pure White Glow
    none     = "NONE",
}

return M