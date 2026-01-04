local M = {}

--- @param config table: The configuration table passed from init.lua
function M.apply(config)
    local cp = require("monarch.palette").colors
    
    -- Helper function to set highlight groups
    local function hl(group, opts)
        vim.api.nvim_set_hl(0, group, opts)
    end

    -- Determine background based on "The Void" transparency setting
    local bg_color = config.disable.background and "NONE" or cp.bg

    -- 1. Core Editor UI
    hl("Normal",       { fg = cp.fg, bg = bg_color })
    hl("NormalFloat",  { fg = cp.fg, bg = bg_color })
    hl("FloatBorder",  { fg = cp.mana, bg = bg_color, bold = true })
    hl("CursorLineNr", { fg = cp.mana, bold = true })
    hl("LineNr",       { fg = cp.comment })
    hl("WinSeparator", { fg = cp.shadow, bold = true })

    -- 2. Selections (Pulse Aura)
    -- Ensure these commas exist at the end of each line to avoid the '{' error
    hl("Visual",    { bg = cp.aura, fg = cp.white, bold = true })
    hl("VisualNOS", { bg = cp.aura })

    -- 3. Logic Hierarchy (The Red Rule)
    hl("Function",   { fg = cp.mana, bold = true })   -- Sword Glow Red
    hl("Keyword",    { fg = cp.system, bold = true }) -- Vivid Crimson
    hl("Statement",  { fg = cp.system, bold = true })
    hl("Operator",   { fg = cp.mana })
    
    -- 4. Structure (Moonlit White)
    hl("Include",  { fg = cp.fg, bold = true }) -- Imports
    hl("Type",     { fg = cp.fg, bold = true })
    hl("Constant", { fg = cp.blood, bold = true })
    
    -- 5. Shadow Content (The Faded Rule)
    hl("Comment",      { fg = cp.comment, italic = not config.disable.italic_comments }) -- Grayed out
    hl("Identifier",   { fg = cp.faded }) -- Variables
    hl("@variable",    { fg = cp.faded })
    hl("@parameter",   { fg = cp.faded, italic = true })
    hl("String",       { fg = cp.faded })
    hl("Number",       { fg = cp.faded })
    hl("@punctuation", { fg = cp.comment }) -- Brackets blend into shadows

    -- 6. Plugin Specifics (Treesitter/LSP)
    if config.plugins.treesitter then
        hl("@function", { link = "Function" })
        hl("@keyword",  { link = "Keyword" })
        hl("@include",  { link = "Include" })
    end

    if config.plugins.telescope then
        hl("TelescopeBorder",       { fg = cp.mana, bold = true })
        hl("TelescopePromptBorder", { fg = cp.system, bold = true })
    end
end

return M