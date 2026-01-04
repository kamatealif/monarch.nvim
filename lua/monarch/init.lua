local M = {}

local colors = {
    bg            = "#0b090a",
    bg_alt        = "#161a1d",
    blood_red     = "#660708",
    crimson       = "#a4161a",
    vivid_red     = "#ba181b",
    bright_red    = "#e5383b",
    silver        = "#b1a7a6",
    light_silver  = "#d3d3d3",
    off_white     = "#f5f3f4",
    white         = "#ffffff",
}

function M.setup()
    vim.cmd("hi clear")
    if vim.fn.exists("syntax_on") then vim.cmd("syntax reset") end
    vim.o.background = "dark"
    vim.g.colors_name = "monarch"

    local hl = function(group, opts)
        vim.api.nvim_set_hl(0, group, opts)
    end

    -- Editor Basics
    hl("Normal",       { fg = colors.light_silver, bg = colors.bg })
    hl("NormalFloat",  { fg = colors.light_silver, bg = colors.bg_alt })
    hl("CursorLine",   { bg = colors.bg_alt })
    hl("LineNr",       { fg = colors.blood_red })
    hl("CursorLineNr", { fg = colors.bright_red, bold = true })
    hl("Visual",       { bg = colors.blood_red, fg = colors.white })
    hl("Search",       { bg = colors.crimson, fg = colors.white })
    hl("Pmenu",        { bg = colors.bg_alt, fg = colors.light_silver })
    hl("PmenuSel",     { bg = colors.bright_red, fg = colors.bg })
    hl("VertSplit",    { fg = colors.bg_alt, bg = "NONE" })

    -- Syntax
    hl("Comment",      { fg = colors.blood_red, italic = true })
    hl("Constant",     { fg = colors.off_white })
    hl("String",       { fg = colors.silver })
    hl("Identifier",   { fg = colors.light_silver })
    hl("Function",     { fg = colors.bright_red, bold = true })
    hl("Statement",    { fg = colors.vivid_red, bold = true })
    hl("Keyword",      { fg = colors.vivid_red, bold = true })
    hl("Type",         { fg = colors.crimson })
    hl("Operator",     { fg = colors.bright_red })
    hl("Number",       { fg = colors.off_white })

    -- Treesitter (Make it look modern)
    hl("@variable",           { fg = colors.light_silver })
    hl("@function",           { fg = colors.bright_red, bold = true })
    hl("@keyword",            { fg = colors.vivid_red })
    hl("@property",           { fg = colors.crimson })
    hl("@constructor",        { fg = colors.bright_red })
    hl("@punctuation.bracket",{ fg = colors.silver })
    hl("@tag",                { fg = colors.vivid_red })

    -- LSP Diagnostics
    hl("DiagnosticError", { fg = colors.bright_red })
    hl("DiagnosticWarn",  { fg = colors.vivid_red })
    hl("DiagnosticInfo",  { fg = colors.silver })
    hl("DiagnosticHint",  { fg = colors.crimson })
end

return M