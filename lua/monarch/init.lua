-- lua/monarch/init.lua
local M = {}

M.config = {
    disable = {
        background = true, -- Enforce "The Void" transparency
        terminal_colors = false,
        italic_comments = true, -- Faded, italicized comments
    },
    plugins = { treesitter = true, lsp = true, telescope = true },
}

function M.setup(user_config)
    if user_config then
        M.config = vim.tbl_deep_extend("force", M.config, user_config)
    end
end

function M.load()
    vim.o.background = "dark"
    vim.cmd("hi clear")
    vim.g.colors_name = "monarch"
    
    -- CRITICAL FIX: This must match your folder name 'monarch'
    require("monarch.theme").apply(M.config) 
end

return M