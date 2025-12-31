local M = {}

function M.setup(cp)
    return {
        -- Base UI
        Normal       = { fg = cp.fg, bg = cp.bg },
        CursorLine   = { bg = cp.shadow },
        Visual       = { bg = cp.aura },
        
        -- Diagnostic Fix (Pure Red Monarch Look)
        DiagnosticError = { fg = cp.error },
        DiagnosticWarn  = { fg = cp.warning },
        DiagnosticInfo  = { fg = cp.info },
        DiagnosticHint  = { fg = cp.hint },
        
        -- Diagnostic Underlines (Sharp & Lethal)
        DiagnosticUnderlineError = { sp = cp.error, underline = true },
        DiagnosticUnderlineWarn  = { sp = cp.warning, underline = true },

        -- Lualine/Statusline Integration
        StatusLine   = { fg = cp.fg, bg = cp.shadow },
        StatusLineNC = { fg = cp.comment, bg = cp.bg },

        -- Syntax Highlighting
        Comment    = { fg = cp.comment, italic = true },
        Keyword    = { fg = cp.system, bold = true },
        Function   = { fg = cp.mana },
        String     = { fg = cp.info },
        ["@variable"] = { fg = cp.fg },
    }
end

return M