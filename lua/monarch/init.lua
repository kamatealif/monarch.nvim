local M = {}

M.config = {
    disable = {
        background = false,      -- Set to true for terminal transparency
        terminal_colors = false, 
        italic_comments = false,
    },
    plugins = { treesitter = true, lsp = true, telescope = true },
}

function M.setup(user_config)
    if user_config then M.config = vim.tbl_deep_extend("force", M.config, user_config) end
end

function M.load()
    vim.cmd("hi clear")
    vim.g.colors_name = "monarch"
    require("monarch.theme").apply(M.config)
end

return M