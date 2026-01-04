local p = require("monarch.palette")

local M = {}

function M.get()
    return {
        -- Base Editor UI
        Normal       = { fg = p.light_silver, bg = p.bg },
        NormalFloat  = { fg = p.light_silver, bg = p.bg_alt },
        LineNr       = { fg = p.white },
        CursorLineNr = { fg = p.bright_red, bold = true },
        CursorLine   = { bg = p.bg_alt },
        Visual       = { bg = p.blood_red, fg = p.white },
        Search       = { bg = p.crimson, fg = p.white },
        VertSplit    = { fg = p.bg_alt, bg = p.none },
        WinSeparator = { fg = p.blood_red },
        Title        = { fg = p.bright_red, bold = true },

        -- Syntax Highlighting
        Comment      = { fg = p.blood_red, italic = true },
        Constant     = { fg = p.off_white },
        String       = { fg = p.silver },
        Identifier   = { fg = p.light_silver },
        Function     = { fg = p.bright_red, bold = true },
        Statement    = { fg = p.vivid_red, bold = true },
        Keyword      = { fg = p.vivid_red, bold = true },
        PreProc      = { fg = p.crimson },
        Type         = { fg = p.crimson },
        Special      = { fg = p.bright_red },
        Operator     = { fg = p.bright_red },
        Delimiter    = { fg = p.silver },

        -- Treesitter (Modern Highlighting)
        ["@variable"]           = { fg = p.light_silver },
        ["@function.builtin"]   = { fg = p.bright_red },
        ["@punctuation.bracket"] = { fg = p.silver },
        ["@tag"]                = { fg = p.vivid_red },
        ["@property"]           = { fg = p.crimson },

        -- LSP & Diagnostics (Color Corrections)
        DiagnosticError = { fg = p.bright_red },
        DiagnosticWarn  = { fg = p.vivid_red },
        DiagnosticInfo  = { fg = p.silver },
        DiagnosticHint  = { fg = p.crimson },
        LspReferenceText  = { bg = p.bg_alt },
        LspReferenceRead  = { bg = p.bg_alt },
        LspReferenceWrite = { bg = p.bg_alt },

        -- Git (Gitsigns/Diff)
        DiffAdd    = { fg = p.bright_red, bg = p.none },
        DiffChange = { fg = p.silver, bg = p.none },
        DiffDelete = { fg = p.blood_red, bg = p.none },
        SignColumn = { bg = p.none },

        -- Telescope (Modern Floating UI)
        TelescopeBorder         = { fg = p.blood_red },
        TelescopePromptBorder   = { fg = p.bright_red },
        TelescopePromptTitle    = { fg = p.bright_red },
        TelescopeSelection      = { bg = p.bg_alt, fg = p.white },
        TelescopeSelectionCaret = { fg = p.bright_red },
    }
end

return M