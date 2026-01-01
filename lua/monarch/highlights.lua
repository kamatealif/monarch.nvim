local M = {}

function M.setup(cp)
    local hl = function(group, opts) vim.api.nvim_set_hl(0, group, opts) end

    return {
        -- Editor UI (Transparent Monarch style)
        Normal = { fg = cp.fg, bg = "none" },
        NormalFloat = { fg = cp.fg, bg = "none" },
        FloatBorder = { fg = cp.border, bg = "none", bold = true },
        CursorLine = { bg = cp.bg_alt },
        LineNr = { fg = cp.comment },
        CursorLineNr = { fg = cp.func, bold = true },
        Visual = { bg = cp.bg_visual },
        Search = { fg = cp.bg, bg = cp.yellow },
        WinSeparator = { fg = cp.bg_alt, bold = true },

        -- Syntax highlighting (Retro Monarch)
        Comment = { fg = cp.comment, italic = true },
        Constant = { fg = cp.constant, bold = true },
        String = { fg = cp.string },
        Number = { fg = cp.number },
        Boolean = { fg = cp.constant, bold = true },
        Function = { fg = cp.func, bold = true },
        Statement = { fg = cp.keyword, bold = true },
        Keyword = { fg = cp.keyword, bold = true },
        Operator = { fg = cp.operator },
        Type = { fg = cp.type, italic = true },
        Include = { fg = cp.fg, bold = true }, -- White Imports

        -- Treesitter
        ["@function"] = { fg = cp.func, bold = true },
        ["@keyword"] = { fg = cp.keyword, bold = true },
        ["@variable"] = { fg = cp.variable },
        ["@include"] = { fg = cp.fg, bold = true },
        ["@punctuation.bracket"] = { fg = cp.func },

        -- Plugins (Telescope / NvimTree / Git)
        TelescopeBorder = { fg = cp.border, bold = true },
        TelescopePromptTitle = { fg = cp.keyword, bold = true },
        NvimTreeFolderName = { fg = cp.func },
        GitSignsAdd = { fg = cp.string },
        GitSignsChange = { fg = cp.type },
        GitSignsDelete = { fg = cp.constant },
    }
end

return M