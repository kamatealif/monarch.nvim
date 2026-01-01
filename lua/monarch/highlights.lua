local M = {}

function M.setup(cp)
    return {
        -- Editor UI
        Normal       = { fg = cp.fg, bg = "none" },
        CursorLine   = { bg = cp.shadow },
        CursorLineNr = { fg = cp.mana, bold = true },
        LineNr       = { fg = cp.aura },
        Visual       = { bg = cp.aura },
        FloatBorder  = { fg = cp.mana, bold = true },
        WinSeparator = { fg = cp.shadow },
        Pmenu        = { fg = cp.fg, bg = cp.shadow },
        PmenuSel     = { fg = cp.bg, bg = cp.mana, bold = true },

        -- Basic Syntax
        Comment      = { fg = cp.comment, italic = true },
        Constant     = { fg = cp.critical, bold = true },
        String       = { fg = cp.green },
        Number       = { fg = cp.system },
        Boolean      = { fg = cp.critical, bold = true },
        Function     = { fg = cp.mana, bold = true },
        Statement    = { fg = cp.system, bold = true },
        Keyword      = { fg = cp.system, bold = true },
        Operator     = { fg = cp.mana },
        Type         = { fg = cp.cyan, italic = true },
        Include      = { fg = cp.fg, bold = true }, -- Moonlit White Imports

        -- Tree-sitter
        ["@function"]           = { fg = cp.mana, bold = true },
        ["@function.builtin"]   = { fg = cp.mana, bold = true },
        ["@keyword"]            = { fg = cp.system, bold = true },
        ["@keyword.return"]     = { fg = cp.system, bold = true },
        ["@include"]            = { fg = cp.fg, bold = true },
        ["@variable"]           = { fg = cp.fg },
        ["@variable.builtin"]   = { fg = cp.critical, italic = true },
        ["@property"]           = { fg = cp.cyan },
        ["@punctuation.bracket"] = { fg = cp.mana },

        -- Diagnostics
        DiagnosticError = { fg = cp.critical, bold = true },
        DiagnosticWarn  = { fg = cp.yellow },
        DiagnosticInfo  = { fg = cp.cyan },
        DiagnosticHint  = { fg = cp.comment },
        DiagnosticUnderlineError = { undercurl = true, sp = cp.critical },

        -- Telescope
        TelescopeNormal         = { fg = cp.fg, bg = "none" },
        TelescopeBorder         = { fg = cp.mana, bold = true },
        TelescopePromptBorder   = { fg = cp.system, bold = true },
        TelescopeSelection      = { fg = cp.fg, bg = cp.aura },
        TelescopeMatching       = { fg = cp.mana, bold = true },

        -- NvimTree
        NvimTreeNormal          = { fg = cp.fg, bg = "none" },
        NvimTreeFolderName      = { fg = cp.mana },
        NvimTreeOpenedFolderName = { fg = cp.mana, bold = true },
        NvimTreeGitDirty        = { fg = cp.yellow },
    }
end

return M