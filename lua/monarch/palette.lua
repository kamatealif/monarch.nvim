local M = {}

M.colors = {
    -- Core Atmosphere
    bg       = "#0F0508", -- Void Black
    fg       = "#F0E0E6", -- Moonlit White (Primary Text)
    shadow   = "#1A0F11", -- Reddish-Black
    aura     = "#5E1C24", -- Deep Crimson (Selection)
    
    -- The "Mana" (Sword Glow)
    mana     = "#FF1F4C", -- Vibrant Red (Keywords & Functions)
    
    -- Grayed Colors (Shadow Cherry)
    faded    = "#8A7A80", -- Grayed-out White (Variables/Parameters)
    comment  = "#3E161B", -- Deep Cherry Gray (Comments)
    
    -- Accents (Reduced usage)
    critical = "#FF0000", -- Blood Red (Errors/Constants)
    none     = "NONE",
}

return M