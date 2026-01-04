-- Red Monarch: Configuration Examples
-- This file demonstrates how to customize the Monarch System

local monarch = require("monarch")

-- Example 1: Basic setup with default Red Monarch settings
monarch.setup()

-- Example 2: High-Performance "Void" Setup
-- This enforces transparency and reduces visual noise
monarch.setup({
	disable = {
		background = true,      -- Enforces "The Void" (Terminal Transparency)
		terminal_colors = false, -- Maintain Red Monarch ANSI sync
		italic_comments = true,  -- Keep comments stealthy and italicized
	},

	-- Customizing the Logic Hierarchy
	colors = {
		-- Adjusting the "Mana" (Function) glow intensity
		mana = "#FF1F4C", 
		-- Adjusting the "System" (Keyword) structural red
		system = "#BE2E3F",
		-- Making the Shadow Gray even darker for distraction-free coding
		faded = "#665C60", 
	},

	-- Customizing UI Highlights
	highlights = {
		-- Make the Pulse Aura selection even more dramatic
		Visual = { bg = "#7D1A25", fg = "#FFFFFF", bold = true },
		-- Customize the floating window borders (LSP/Telescope)
		FloatBorder = { fg = "#FF1F4C", bold = true },
	},

	-- Managing Plugin Integrations
	plugins = {
		treesitter = true,
		lsp = true,
		telescope = true,
		nvimtree = true, -- Enable Crimson folder structure
		gitsigns = true,
		whichkey = true,
		markdown = true,
	},
})

-- Example 3: Minimalist "Shadow" Mode
-- Disables most plugins for a lightweight coding experience
monarch.setup({
	plugins = {
		treesitter = true,
		lsp = true,
		telescope = false,
		nvimtree = false,
		gitsigns = false,
		whichkey = false,
	},
})

-- Final Step: Load the Monarch System
monarch.load()

---
-- USAGE IN YOUR init.lua (LazyVim / Manual)
---

-- Option 1: Simple setup (Lazy.nvim)
-- {
--   'kamatealif/monarch.nvim',
--   lazy = false,
--   priority = 1000,
--   opts = {
--     disable = { background = true },
--   },
--   config = function(_, opts)
--     require('monarch').setup(opts)
--     require('monarch').load()
--   end,
-- }

-- Option 2: Traditional Setup
-- require('monarch').setup({ disable = { background = true } })
-- vim.cmd('colorscheme monarch')