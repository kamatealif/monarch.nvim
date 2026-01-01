local M = {}

M.colors = {
    -- Base colors
    bg = "#0F0508", -- Void Black
    fg = "#F0E0E6", -- Moonlit White

    -- UI colors
    bg_alt = "#1A0F11", -- Reddish-Black
    bg_highlight = "#1A0F11",
    bg_visual = "#5E1C24", -- Deep Crimson
    border = "#FF1F4C",   -- Sword Glow Red

    -- Syntax colors
    comment = "#3E161B", -- Deep Cherry
    func = "#FF1F4C",    -- Sword Glow Red
    keyword = "#BE2E3F", -- Vivid Red
    type = "#DE3448",    -- Bright Rose
    string = "#FF3D61",  -- Rose Red
    number = "#BE2E3F",  -- Vivid Red
    constant = "#FF0000", -- Blood Red
    variable = "#F0E0E6", -- Moonlit White
    operator = "#FF1F4C", -- Sword Glow Red
    punctuation = "#3E161B",

    -- Diagnostics
    error = "#FF0000",
    warning = "#D9263E",
    info = "#DE3448",
    hint = "#3E161B",

    none = "NONE",
}

return M