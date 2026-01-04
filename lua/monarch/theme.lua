-- Red Monarch: Modular Theme Engine
-- Refactored for high-fidelity tiered hierarchy and plugin support

local M = {}

-- The Final Monarch Palette
M.colors = {
	-- Base Atmosphere
	bg = "#0F0508", -- Void Black
	fg = "#F0E0E6", -- Moonlit White (Primary Structure)

	-- UI Colors
	bg_alt = "#1A0F11",
	bg_highlight = "#1A0F11",
	bg_visual = "#5E1C24", -- Pulse Aura
	border = "#1A0F11",

	-- Logic Hierarchy (The Red Rule)
	mana = "#FF1F4C",      -- Sword Glow Red (Functions/Active Logic)
	system = "#BE2E3F",    -- Vivid Crimson (Keywords/Structure)
	blood = "#FF0000",     -- Blood Red (Constants/Booleans)
	
	-- Shadow Content (The Gray Rule)
	faded = "#8A7A80",     -- Shadow Gray (Variables/Strings)
	comment = "#3E161B",   -- Deep Cherry Gray (Comments)
	
	-- Syntax and Data
	func = "#FF1F4C",
	keyword = "#BE2E3F",
	type = "#F0E0E6",      -- Structural White
	string = "#8A7A80",
	number = "#8A7A80",
	operator = "#FF1F4C",
	punctuation = "#3E161B",

	-- Terminal ANSI Palette
	terminal_black = "#0F0508",
	terminal_red = "#FF1F4C",
	terminal_green = "#FF3D61",
	terminal_yellow = "#D9263E",
	terminal_blue = "#BE2E3F",
	terminal_magenta = "#5E1C24",
	terminal_cyan = "#DE3448",
	terminal_white = "#F0E0E6",
	
	none = "NONE",
}

-- Helper function to set highlights
local function hl(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.apply(config)
	local colors = vim.tbl_deep_extend("force", M.colors, config.colors or {})

	-- Enforce "The Void" (Transparency)
	if config.disable.background then
		colors.bg = "NONE"
	end

	-- Editor UI Highlights
	hl("Normal", { fg = colors.fg, bg = colors.bg })
	hl("NormalFloat", { fg = colors.fg, bg = colors.bg })
	hl("FloatBorder", { fg = colors.mana, bg = colors.bg, bold = true })
	hl("CursorLineNr", { fg = colors.mana, bold = true })
	hl("LineNr", { fg = colors.comment })
	hl("Visual", { bg = colors.bg_visual, fg = "#FFFFFF", bold = true })
	hl("Pmenu", { fg = colors.fg, bg = colors.bg_alt })
	hl("PmenuSel", { fg = colors.bg, bg = colors.mana, bold = true })

	-- Syntax Highlighting Hierarchy
	hl("Comment", { fg = colors.comment, italic = not config.disable.italic_comments })
	hl("Function", { fg = colors.func, bold = true })
	hl("Keyword", { fg = colors.keyword, bold = true })
	hl("Statement", { fg = colors.keyword, bold = true })
	hl("Include", { fg = colors.fg, bold = true }) -- Moonlit White Imports
	hl("Constant", { fg = colors.blood, bold = true })
	hl("String", { fg = colors.string })
	hl("Identifier", { fg = colors.faded }) -- Variables recede into gray
	hl("Operator", { fg = colors.operator })
	hl("Type", { fg = colors.type, bold = true })

	-- Plugin Integration
	if config.plugins.treesitter then
		-- Apply tiered logic for Treesitter
		hl("@function", { link = "Function" })
		hl("@keyword", { link = "Keyword" })
		hl("@variable", { fg = colors.faded })
		hl("@include", { link = "Include" })
	end

	if config.plugins.telescope then
		hl("TelescopeBorder", { fg = colors.mana, bold = true })
		hl("TelescopePromptBorder", { fg = colors.system, bold = true })
	end

	-- Terminal Sync
	if not config.disable.terminal_colors then
		vim.g.terminal_color_0 = colors.terminal_black
		vim.g.terminal_color_1 = colors.terminal_red
		vim.g.terminal_color_4 = colors.terminal_blue
		vim.g.terminal_color_7 = colors.terminal_white
	end

	-- User Overrides
	for group, opts in pairs(config.highlights or {}) do
		hl(group, opts)
	end
end

return M