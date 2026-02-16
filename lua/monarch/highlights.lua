local p = require("monarch.palette")

local M = {}

function M.get()
    local panel = p.panel or p.none or "NONE"
    local fg = p.fg or p.light_silver
    local subtle = p.subtle or p.silver
    local border = p.border or p.bright_red
    local selection = p.selection or p.bg_alt
    local cursor = p.cursor or p.bright_red
    local hot_red = p.hot_red or p.bright_red
    local mid_red = p.mid_red or p.crimson
    local deep_red = p.deep_red or p.blood_red
    local light_red = p.light_red or p.vivid_red
    local pale_red = p.pale_red or p.off_white

    return {
        -- Core editor
        Normal = { fg = fg, bg = panel },
        NormalNC = { fg = fg, bg = panel },
        NormalFloat = { fg = fg, bg = panel },
        SignColumn = { fg = subtle, bg = panel },
        FoldColumn = { fg = subtle, bg = panel },
        LineNr = { fg = subtle, bg = panel },
        CursorLineNr = { fg = hot_red, bold = true },
        CursorLine = { bg = selection },
        CursorColumn = { bg = selection },
        ColorColumn = { bg = selection },
        Cursor = { fg = panel, bg = cursor },
        CursorIM = { fg = panel, bg = cursor },
        EndOfBuffer = { fg = subtle, bg = panel },

        -- Floats / menus
        FloatBorder = { fg = border, bg = panel },
        Pmenu = { fg = fg, bg = selection },
        PmenuSel = { fg = panel, bg = hot_red, bold = true },
        PmenuSbar = { bg = subtle },
        PmenuThumb = { bg = mid_red },

        -- Statusline / tabs
        StatusLine = { fg = fg, bg = selection },
        StatusLineNC = { fg = subtle, bg = panel },
        TabLine = { fg = subtle, bg = panel },
        TabLineFill = { bg = panel },
        TabLineSel = { fg = panel, bg = mid_red, bold = true },

        -- Separators
        WinSeparator = { fg = border, bg = panel },
        VertSplit = { fg = border, bg = panel },

        -- Selections / folds
        Visual = { bg = selection, fg = fg },
        VisualNOS = { bg = selection },
        Folded = { fg = subtle, bg = panel, italic = true },

        -- Syntax
        Comment = { fg = subtle, italic = true },
        Keyword = { fg = hot_red, bold = false },
        Function = { fg = hot_red, bold = false },
        Operator = { fg = hot_red },
        Delimiter = { fg = hot_red },

        Constant = { fg = fg },
        String = { fg = fg },
        Character = { fg = fg },
        Number = { fg = fg },
        Boolean = { fg = fg },
        Float = { fg = fg },
        Identifier = { fg = fg },
        Statement = { fg = fg },
        Conditional = { fg = fg },
        Repeat = { fg = fg },
        Label = { fg = fg },
        Exception = { fg = fg },
        PreProc = { fg = fg },
        Include = { fg = fg },
        Macro = { fg = fg },
        Type = { fg = fg },
        StorageClass = { fg = fg },
        Structure = { fg = fg },
        Typedef = { fg = fg },
        Special = { fg = fg },
        SpecialChar = { fg = fg },
        Tag = { fg = fg },
        Debug = { fg = fg },
        Title = { fg = fg, bold = true },
        Directory = { fg = fg },

        -- Search
        Search = { fg = panel, bg = mid_red },
        IncSearch = { fg = panel, bg = hot_red, bold = true },
        CurSearch = { fg = panel, bg = hot_red, bold = true },
        Substitute = { fg = panel, bg = deep_red, bold = true },
        MatchParen = { fg = panel, bg = p.blush_red or hot_red, bold = true },
        HlSearchNear = { fg = panel, bg = deep_red },
        HlSearchLens = { fg = panel, bg = mid_red },
        HlSearchLensNear = { fg = panel, bg = mid_red },

        -- Diagnostics
        DiagnosticError = { fg = hot_red, bg = panel },
        DiagnosticWarn = { fg = mid_red, bg = panel },
        DiagnosticInfo = { fg = pale_red, bg = panel },
        DiagnosticHint = { fg = light_red, bg = panel },
        DiagnosticUnderlineError = { undercurl = true, sp = hot_red },
        DiagnosticUnderlineWarn = { undercurl = true, sp = mid_red },
        DiagnosticUnderlineInfo = { undercurl = true, sp = pale_red },
        DiagnosticUnderlineHint = { undercurl = true, sp = light_red },
        LspReferenceText = { bg = selection },
        LspReferenceRead = { bg = selection },
        LspReferenceWrite = { bg = selection },

        -- Treesitter
        ["@text"] = { link = "Normal" },
        ["@comment"] = { link = "Comment" },
        ["@constant"] = { link = "Constant" },
        ["@constant.builtin"] = { link = "Constant" },
        ["@string"] = { link = "String" },
        ["@character"] = { link = "Character" },
        ["@number"] = { link = "Number" },
        ["@boolean"] = { link = "Boolean" },
        ["@float"] = { link = "Float" },
        ["@function"] = { link = "Function" },
        ["@function.builtin"] = { link = "Function" },
        ["@method"] = { link = "Function" },
        ["@keyword"] = { link = "Keyword" },
        ["@keyword.function"] = { link = "Keyword" },
        ["@keyword.operator"] = { link = "Operator" },
        ["@type.builtin"] = { link = "Type" },
        ["@variable"] = { link = "Identifier" },
        ["@variable.builtin"] = { link = "Identifier" },
        ["@parameter"] = { link = "Identifier" },
        ["@tag.attribute"] = { link = "Identifier" },
        ["@constructor"] = { link = "Identifier" },
        ["@namespace"] = { link = "Identifier" },
        ["@text.uri"] = { link = "Identifier" },
        ["@text.todo"] = { fg = panel, bg = subtle, bold = true },
        ["@markup.todo"] = { fg = panel, bg = subtle, bold = true },

        -- Diff / git
        DiffAdd = { fg = hot_red, bg = panel },
        DiffChange = { fg = subtle, bg = panel },
        DiffDelete = { fg = deep_red, bg = panel },

        -- Plugin UI
        AlphaNormal = { fg = fg, bg = panel },
        TelescopeNormal = { fg = fg, bg = panel },
        TelescopeBorder = { fg = border, bg = panel },
        TelescopePromptBorder = { fg = hot_red, bg = panel },
        TelescopePromptTitle = { fg = hot_red, bold = true },
        TelescopeSelection = { bg = selection, fg = fg },
        TelescopeSelectionCaret = { fg = hot_red },
    }
end

return M
