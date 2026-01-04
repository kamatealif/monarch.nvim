local M = {}

function M.setup()
    -- These are your Red Monarch hex codes
    local colors = {
        bg         = "#0b090a",
        bg_alt     = "#161a1d",
        bright_red = "#e5383b",
        vivid_red  = "#ba181b",
        crimson    = "#a4161a",
        blood_red  = "#660708",
        silver     = "#b1a7a6",
        off_white  = "#f5f3f4",
    }

    -- Apply Monarch colors to the internal terminal palette
    vim.g.terminal_color_0  = colors.bg
    vim.g.terminal_color_1  = colors.vivid_red
    vim.g.terminal_color_2  = colors.bright_red
    vim.g.terminal_color_3  = colors.crimson
    vim.g.terminal_color_4  = colors.blood_red
    vim.g.terminal_color_5  = colors.bright_red
    vim.g.terminal_color_6  = colors.silver
    vim.g.terminal_color_7  = colors.off_white
    vim.g.terminal_color_8  = colors.bg_alt
    vim.g.terminal_color_9  = colors.bright_red

    -- ToggleTerm Configuration
    require("toggleterm").setup({
        size = 20,
        open_mapping = [[<c-\>]],
        hide_numbers = true,
        shade_terminals = false,
        start_in_insert = true,
        insert_mappings = true,
        terminal_mappings = true,
        persist_mode = true,
        -- Directory Logic: Open in current working directory
        direction = "float", -- Float looks more modern
        close_on_exit = true,
        shell = vim.o.shell,
        float_opts = {
            border = "curved", -- Rounded Monarch look
            winblend = 3,
            highlights = {
                border = "Normal",
                background = "Normal",
            },
        },
    })

    -- Autocmd to ensure we are always in the right directory
    vim.api.nvim_create_autocmd("BufEnter", {
        callback = function()
            local path = vim.fn.expand("%:p:h")
            if vim.fn.isdirectory(path) == 1 then
                vim.api.nvim_set_current_dir(path)
            end
        end,
    })
end

return M