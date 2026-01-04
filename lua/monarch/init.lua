local M = {}

--Monarch Palette
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


    ---------------------------------------------------------
    -- UI & Editor Basics
    ---------------------------------------------------------
    hl("Normal",       { fg = colors.light_silver, bg = colors.bg })
    hl("NormalFloat",  { fg = colors.light_silver, bg = colors.bg_alt })
    hl("CursorLine",   { bg = colors.bg_alt })
    
    -- Line Numbers (Customized to White as requested)
    hl("LineNr",       { fg = colors.white }) 
    hl("CursorLineNr", { fg = colors.bright_red, bold = true })
    
    hl("Visual",       { bg = colors.blood_red, fg = colors.white })
    hl("Search",       { bg = colors.crimson, fg = colors.white })
    hl("Pmenu",        { bg = colors.bg_alt, fg = colors.light_silver })
    hl("PmenuSel",     { bg = colors.bright_red, fg = colors.bg })
    hl("VertSplit",    { fg = colors.bg_alt })

    ---------------------------------------------------------
    -- Syntax Highlighting
    ---------------------------------------------------------
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

    ---------------------------------------------------------
    -- Treesitter (Modern Syntax)
    ---------------------------------------------------------
    hl("@variable",           { fg = colors.light_silver })
    hl("@function",           { fg = colors.bright_red, bold = true })
    hl("@keyword",            { fg = colors.vivid_red })
    hl("@property",           { fg = colors.crimson })
    hl("@punctuation.bracket",{ fg = colors.silver })

    ---------------------------------------------------------
    -- Status Bar (Lualine) Theme Integration
    ---------------------------------------------------------
    M.lualine_theme = {
        normal = {
            a = { bg = colors.bright_red, fg = colors.bg, gui = "bold" }, -- "NORMAL" Mode
            b = { bg = colors.bg_alt, fg = colors.bright_red },
            c = { bg = colors.bg, fg = colors.light_silver },
        },
        insert = {
            a = { bg = colors.white, fg = colors.bg, gui = "bold" },      -- "INSERT" Mode
        },
        visual = {
            a = { bg = colors.vivid_red, fg = colors.white, gui = "bold" },-- "VISUAL" Mode
        },
        replace = {
            a = { bg = colors.crimson, fg = colors.white, gui = "bold" },
        },
        inactive = {
            a = { bg = colors.bg, fg = colors.blood_red },
            b = { bg = colors.bg, fg = colors.blood_red },
            c = { bg = colors.bg, fg = colors.blood_red },
        },
    }
        -- Load Terminal Styling
    require("monarch.terminal").setup()

    -- load buffer styuling 
    require("monarch.buffer").setup()
end

return M