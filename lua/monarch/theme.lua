local M = {}

function M.apply(config)
    local cp = require("monarch.palette").colors
    local function hl(group, opts) vim.api.nvim_set_hl(0, group, opts) end

    -- Enforce Transparency
    local bg = config.disable.background and "NONE" or cp.bg

    -- UI Highlights
    hl("Normal", { fg = cp.fg, bg = bg })
    hl("NormalFloat", { fg = cp.fg, bg = bg })
    hl("Visual", { bg = cp.aura, fg = cp.white, bold = true }) -- Pulse Aura
    hl("CursorLineNr", { fg = cp.mana, bold = true })
    hl("LineNr", { fg = cp.comment })

    -- SYNTAX HIERARCHY
    hl("Function", { fg = cp.mana, bold = true })   -- Red Logic
    hl("Keyword", { fg = cp.system, bold = true })  -- Red Structure
    hl("Comment", { fg = cp.comment, italic = true }) -- Faded Gray
    
    hl("Include", { fg = cp.fg, bold = true })      -- White Imports
    hl("Type", { fg = cp.fg, bold = true })
    
    hl("Identifier", { fg = cp.faded })             -- Grayed Variables
    hl("String", { fg = cp.faded })                 -- Grayed Strings
    hl("Constant", { fg = cp.blood, bold = true })

    -- Treesitter Integration
    if config.plugins.treesitter then
        hl("@function", { link = "Function" })
        hl("@keyword", { link = "Keyword" })
        hl("@variable", { fg = cp.faded })
        hl("@parameter", { fg = cp.faded, italic = true })
    end
end

return M