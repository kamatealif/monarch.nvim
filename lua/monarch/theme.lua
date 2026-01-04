-- lua/monarch/theme.lua
local M = {}

function M.apply(config)
    -- Ensure this path is correct
    local cp = require("monarch.palette").colors 
    local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

    -- Base UI & Faded Comments
    local bg = config.disable.background and "NONE" or cp.bg
    hl("Normal", { fg = cp.fg, bg = bg })
    hl("Comment", { fg = cp.comment, italic = true }) -- Faded grayed comments
    
    -- Red Monarch Logic
    hl("Function", { fg = cp.mana, bold = true })
    hl("Keyword", { fg = cp.system, bold = true })
    hl("@variable", { fg = cp.faded }) -- Faded variables

    -- Add your other highlight groups here...
end

return M