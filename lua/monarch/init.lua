-- Red Monarch: Theme Initialization Module
-- Logic-tiered red hierarchy with Shadow Gray receding

local M = {}

-- 1. Default configuration for the Monarch System
M.config = {
	-- Theme variant
	variant = "dark",

	-- Disable specific features
	disable = {
		background = false,      -- Set to true for "The Void" (Transparency)
		terminal_colors = false, -- Enable Red Monarch ANSI palette
		italic_comments = false, -- Standardized comments style
	},

	-- Override specific colors in palette.lua
	colors = {},

	-- Override specific highlights in theme.lua
	highlights = {},

	-- Plugin integrations (Red Monarch optimized)
	plugins = {
		treesitter = true,       -- Logic-tiered highlights
		lsp = true,              -- Diagnostic red/white highlights
		telescope = true,        -- Mana-bordered UI
		nvimtree = true,         -- Crimson folder structure
		whichkey = true,
		gitsigns = true,
		indent_blankline = true,
		markdown = true,
	},
}

-- 2. Setup function to merge user preferences
function M.setup(user_config)
	if user_config then
		M.config = vim.tbl_deep_extend("force", M.config, user_config)
	end
end

-- 3. Load function to initiate the Monarch HUD
function M.load()
	-- Set background to dark by default
	vim.o.background = "dark"

	-- Clear system highlights before applying Monarch
	vim.cmd("hi clear")
	if vim.fn.exists("syntax_on") then
		vim.cmd("syntax reset")
	end

	-- Identify as "monarch" to Neovim
	vim.g.colors_name = "monarch"

	-- Call the theme engine (equivalent to nes.theme.apply)
	-- Ensure your highlights are in lua/monarch/theme.lua or similar
	require("monarch.theme").apply(M.config)
end

-- Utility to check active Monarch state
function M.get_config()
	return M.config
end

return M