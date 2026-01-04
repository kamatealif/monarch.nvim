local M = {}

function M.setup()
    -- These are your Red Monarch hex codes (consistent with terminal.lua)
    local colors = {
        bg         = "#0b090a",
        bg_alt     = "#161a1d",
        bright_red = "#e5383b",
        vivid_red  = "#ba181b",
        crimson    = "#a4161a",
        blood_red  = "#660708",
        silver     = "#b1a7a6",
        off_white  = "#f5f3f4",
        white      = "#ffffff",
    }

    require("bufferline").setup({
        options = {
            mode = "buffers",
            separator_style = "slant", -- Modern slanted look
            always_show_bufferline = true,
            show_buffer_close_icons = false,
            show_close_icon = false,
            color_icons = true,
        },
        highlights = {
            -- The empty space behind the tabs
            fill = {
                bg = colors.bg,
            },
            -- Inactive tabs
            background = {
                fg = colors.blood_red,
                bg = colors.bg,
            },
            -- Active/Selected tab
            buffer_selected = {
                fg = colors.bright_red,
                bg = colors.bg_alt,
                bold = true,
                italic = false,
            },
            -- Separators between inactive tabs
            separator = {
                fg = colors.bg,
                bg = colors.bg,
            },
            -- Separator next to the active tab
            separator_selected = {
                fg = colors.bg,
                bg = colors.bg_alt,
            },
            -- "Modified" indicator for unsaved files
            modified = {
                fg = colors.silver,
                bg = colors.bg,
            },
            modified_selected = {
                fg = colors.white,
                bg = colors.bg_alt,
            },
            -- Visible but not focused tabs (if using multiple windows)
            buffer_visible = {
                fg = colors.crimson,
                bg = colors.bg,
            },
            -- Tab numbers (if enabled)
            numbers = {
                fg = colors.blood_red,
                bg = colors.bg,
            },
            numbers_selected = {
                fg = colors.bright_red,
                bg = colors.bg_alt,
                bold = true,
            },
        },
    })
end

return M