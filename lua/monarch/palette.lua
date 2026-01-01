local M = {}

M.colors = {
  -- Core System
  bg      = "#0F0508",    -- Void Black
  fg      = "#F0E0E6",    -- Moonlit White

  -- Hierarchy of Reds
  mana    = "#FF1F4C",    -- Sword Glow Red (Lethal Functions)
  system  = "#BE2E3F",    -- Vivid Crimson (Structural Keywords)
  blood   = "#FF0000",    -- Blood Red (Constants/Booleans)

  -- Content & Shadow
  faded   = "#8A7A80",    -- Shadow Gray (Variables/Strings)
  comment = "#3E161B",    -- Deep Cherry Gray (Comments)
  aura    = "#5E1C24",    -- Pulse Aura (Selection Background)
  aura_fg = "#FFFFFF",    -- Pure White Glow (Selection Foreground)

  none    = "NONE",
}

return M
