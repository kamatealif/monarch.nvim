local M = {}

M.colors = {
    -- Core System
    bg       = "#0F0508", -- Void Black
    fg       = "#F0E0E6", -- Moonlit White
    shadow   = "#1A0F11", -- Reddish-Black
    
    -- The Red Spectrum
    mana     = "#FF1F4C", -- Sword Glow Red (Functions)
    system   = "#BE2E3F", -- Vivid Crimson (Keywords)
    blood    = "#FF0000", -- Blood Red (Constants)
    
    -- Grayed/Faded Elements
    faded    = "#8A7A80", -- Shadow Gray (Variables/Strings)
    comment  = "#3E161B", -- Deep Cherry Gray (Comments/Faded)
    
    aura     = "#5E1C24", -- Selection Background
    white    = "#FFFFFF", -- Pure White Glow
    none     = "NONE",
}

return M