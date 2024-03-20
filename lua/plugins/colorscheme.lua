-- Theme/Colorscheme (uncomment section for whichever theme you prefer or use your own)
-- Kanagawa Theme (Custom Palette)
-- return {
--   -- https://github.com/rebelot/kanagawa.nvim
--   "rebelot/kanagawa.nvim", -- You can replace this with your favorite colorscheme
--   lazy = false,           -- We want the colorscheme to load immediately when starting Neovim
--   priority = 1000,        -- Load the colorscheme before other non-lazy-loaded plugins
--   opts = {
--     -- Replace this with your scheme-specific settings or remove to use the defaults
--     -- transparent = true,
--     background = {
--       -- light = "lotus",
--       dark = "wave", -- "wave, dragon"
--     },
--     colors = {
--       palette = {
--         -- Background colors
--         sumiInk0 = "#161616", -- modified
--         sumiInk1 = "#181818", -- modified
--         sumiInk2 = "#1a1a1a", -- modified
--         sumiInk3 = "#1F1F1F", -- modified
--         sumiInk4 = "#2A2A2A", -- modified
--         sumiInk5 = "#363636", -- modified
--         sumiInk6 = "#545454", -- modified
--
--         -- Popup and Floats
--         waveBlue1 = "#322C47", -- modified
--         waveBlue2 = "#4c4464", -- modified
--
--         -- Diff and Git
--         winterGreen = "#2B3328",
--         winterYellow = "#49443C",
--         winterRed = "#43242B",
--         winterBlue = "#252535",
--         autumnGreen = "#76A56A", -- modified
--         autumnRed = "#C34043",
--         autumnYellow = "#DCA561",
--
--         -- Diag
--         samuraiRed = "#E82424",
--         roninYellow = "#FF9E3B",
--         waveAqua1 = "#7E9CD8", -- modified
--         dragonBlue = "#7FB4CA", -- modified
--
--         -- Foreground and Comments
--         oldWhite = "#C8C093",
--         fujiWhite = "#F9E7C0", -- modified
--         fujiGray = "#727169",
--         oniViolet = "#BFA3E6", -- modified
--         oniViolet2 = "#BCACDB", -- modified
--         crystalBlue = "#8CABFF", -- modified
--         springViolet1 = "#938AA9",
--         springViolet2 = "#9CABCA",
--         springBlue = "#7FC4EF", -- modified
--         waveAqua2 = "#77BBDD", -- modified
--
--         springGreen = "#98BB6C",
--         boatYellow1 = "#938056",
--         boatYellow2 = "#C0A36E",
--         carpYellow = "#FFEE99", -- modified
--
--         sakuraPink = "#D27E99",
--         waveRed = "#E46876",
--         peachRed = "#FF5D62",
--         surimiOrange = "#FFAA44", -- modified
--         katanaGray = "#717C7C",
--       },
--     },
--   },
--   config = function(_, opts)
--     require("kanagawa").setup(opts) -- Replace this with your favorite colorscheme
--     vim.cmd("colorscheme kanagawa") -- Replace this with your favorite colorscheme
--
--     -- Custom diff colors
--     vim.cmd([[
--       autocmd VimEnter * hi DiffAdd guifg=#00FF00 guibg=#005500
--       autocmd VimEnter * hi DiffDelete guifg=#FF0000 guibg=#550000
--       autocmd VimEnter * hi DiffChange guifg=#CCCCCC guibg=#555555
--       autocmd VimEnter * hi DiffText guifg=#00FF00 guibg=#005500
--     ]])
--
--     -- Custom border colors
--     vim.cmd([[
--       autocmd ColorScheme * hi NormalFloat guifg=#F9E7C0 guibg=#1F1F1F
--       autocmd ColorScheme * hi FloatBorder guifg=#F9E7C0 guibg=#1F1F1F
--     ]])
--   end,
-- }

-- Kanagawa Theme (Original)
-- return {
--   "rebelot/kanagawa.nvim", -- You can replace this with your favorite colorscheme
--   lazy = false,           -- We want the colorscheme to load immediately when starting Neovim
--   priority = 1000,        -- Load the colorscheme before other non-lazy-loaded plugins
--   opts = {
--     -- Replace this with your scheme-specific settings or remove to use the defaults
--     -- transparent = true,
--     background = {
--       -- light = "lotus",
--       dark = "wave",
--       -- dark = "dragon",
--     },
--   },
--   config = function(_, opts)
--     require("kanagawa").setup(opts) -- Replace this with your favorite colorscheme
--     vim.cmd("colorscheme kanagawa") -- Replace this with your favorite colorscheme
--   end,
-- }

-- Tokyo Night Theme
-- return {
--   -- https://github.com/folke/tokyonight.nvim
--   'folke/tokyonight.nvim', -- You can replace this with your favorite colorscheme
--   lazy = false, -- We want the colorscheme to load immediately when starting Neovim
--   priority = 1000, -- Load the colorscheme before other non-lazy-loaded plugins
--   opts = {
--     -- Replace this with your scheme-specific settings or remove to use the defaults
--     -- transparent = true,
--     style = "night", -- other variations "storm, night, moon, day"
--   },
--   config = function(_, opts)
--     require('tokyonight').setup(opts) -- Replace this with your favorite colorscheme
--     vim.cmd("colorscheme tokyonight") -- Replace this with your favorite colorscheme
--   end
-- }

-- Catppuccin Theme
-- return {
--   -- https://github.com/catppuccin/nvim
--   "catppuccin/nvim",
--   name = "catppuccin", -- name is needed otherwise plugin shows up as "nvim" due to github URI
--   lazy = false,       -- We want the colorscheme to load immediately when starting Neovim
--   priority = 1000,    -- Load the colorscheme before other non-lazy-loaded plugins
--   opts = {
--     --   -- Replace this with your scheme-specific settings or remove to use the defaults
--     transparent_background = true,
--     flavour = "mocha", -- "latte, frappe, macchiato, mocha"
--   },
--   config = function(_, opts)
--     require("catppuccin").setup(opts) -- Replace this with your favorite colorscheme
--     vim.cmd("colorscheme catppuccin") -- Replace this with your favorite colorscheme
--   end,
-- }

-- Sonokai Theme
-- return {
--   -- https://github.com/sainnhe/sonokai
--   'sainnhe/sonokai',
--   lazy = false, -- We want the colorscheme to load immediately when starting Neovim
--   priority = 1000, -- Load the colorscheme before other non-lazy-loaded plugins
--   config = function(_, opts)
--     vim.g.sonokai_style = "default" -- "default, atlantis, andromeda, shusia, maia, espresso"
--     vim.cmd("colorscheme sonokai") -- Replace this with your favorite colorscheme
--   end
-- }

-- One Nord Theme
-- return {
--   -- https://github.com/rmehri01/onenord.nvim
--   'rmehri01/onenord.nvim',
--   lazy = false, -- We want the colorscheme to load immediately when starting Neovim
--   priority = 1000, -- Load the colorscheme before other non-lazy-loaded plugins
--   config = function(_, opts)
--     vim.cmd("colorscheme onenord") -- Replace this with your favorite colorscheme
--   end
-- }

return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	init = function()
		vim.cmd.colorscheme("tokyonight-night")
	end,
	opts = {
		transparent = true,
		styles = {
			sidebars = "transparent",
			floats = "transparent",
			keywords = { italic = false },
		},
		on_colors = function(colors)
			colors.gitSigns.add = colors.green
			colors.gitSigns.change = colors.blue
			colors.gitSigns.delete = colors.red
			colors.gitSigns.ignored = colors.bg
			colors.status_line = colors.none
			return colors
		end,
		on_highlights = function(hl, c)
			local highlights = {
				NormalSB = { bg = nil },
				NormalFloat = { bg = nil },
				FloatBorder = { fg = c.dark3 },
				FloatTitle = { fg = c.dark3 },
				CursorLineNr = { fg = c.blue },
				Breakpoint = { fg = c.orange },
				WinSeparator = { fg = c.terminal_black },
				WinBar = { bg = nil },
				WinBarNC = { bg = nil },
				LspInlayHint = { fg = c.comment },

				DiagnosticSignError = { fg = c.red },
				DiagnosticSignWarn = { fg = c.yellow },
				DiagnosticSignHint = { fg = c.blue },
				DiagnosticSignInfo = { fg = c.blue },
				DiagnosticError = { fg = c.red },
				DiagnosticWarn = { fg = c.yellow },
				DiagnosticHint = { fg = c.blue },
				DiagnosticInfo = { fg = c.blue },

				BufferLineFill = { bg = c.bg },
				BufferLineCloseButtonSelected = { fg = c.red },
				BufferLineError = { fg = c.red, bg = c.bg, bold = true },
				BufferLineWarning = { fg = c.yellow, bg = c.bg, bold = true },
				BufferLineHint = { fg = c.blue, bg = c.bg, bold = true },
				BufferLineInfo = { fg = c.blue, bg = c.bg, bold = true },
				BufferLineModified = { fg = c.green, bg = c.bg },
				BufferLineDuplicate = { fg = c.comment, bg = c.bg, bold = true },
				BufferLineDuplicateSelected = { fg = c.fg, bg = c.bg, bold = true, italic = true },
				BufferLineTruncMarker = { bg = c.bg },

				NeoTreeDirectoryName = { fg = c.fg },
				NeoTreeNormalNC = { bg = c.bg },
				NeoTreeNormal = { bg = c.bg },
				NeoTreeGitUntracked = { fg = c.orange },
				NeoTreeGitUnstaged = { fg = c.cyan },

				WhichKeyFloat = { bg = c.bg },
				FlashLabel = { fg = c.red, bg = c.bg },
				FlashCurrent = { bg = c.fg },

				TelescopeNormal = { bg = nil },
				TelescopePromptPrefix = { fg = c.dark3 },
				TelescopeBorder = { link = "FloatBorder" },

				NotifyINFOBorder = { fg = c.blue },
				NotifyINFOTitle = { fg = c.blue },
				NotifyINFOIcon = { fg = c.blue },
				NotifyERRORBorder = { fg = c.red },
				NotifyERRORTitle = { fg = c.red },
				NotifyERRORIcon = { fg = c.red },
				NotifyWARNBorder = { fg = c.yellow },
				NotifyWARNTitle = { fg = c.yellow },
				NotifyWARNIcon = { fg = c.yellow },
				ErrorMsg = { fg = c.red },

				diffAdded = { fg = c.green },
				diffRemoved = { fg = c.red },
				diffChanged = { fg = c.blue },
				diffNewFile = { fg = c.cyan },
				diffOldFile = { fg = c.comment },
				DiffAdd = { fg = c.green },
				DiffChange = { fg = c.blue },
				DiffDelete = { fg = c.red },
				DiffText = { fg = c.purple },

				DropBarSeparator = { fg = c.dark5 },
				DropBarPick = { fg = c.red, bold = true, italic = true },
				DropBarKind = { fg = c.fg },
				DropBarKindFolder = { fg = c.dark5 },
				DropBarIconUIPickPivot = { link = "DropBarPick" },
				DropBarIconUISeparator = { link = "DropBarSeparator" },
			}

			for key, value in pairs(highlights) do
				hl[key] = value
			end

			local dropbar_hl = {
				"Array",
				"Boolean",
				"Constant",
				"Constructor",
				"Enum",
				"EnumMember",
				"Field",
				"Function",
				"Identifier",
				"List",
				"Macro",
				"Number",
				"Object",
				"Operator",
				"Package",
				"Property",
				"Reference",
				"String",
				"Type",
				"TypeParameter",
				"Unit",
				"Value",
				"Variable",
				"Null",
				"Specifier",
				"BreakStatement",
				"CaseStatement",
				"ContinueStatement",
				"Declaration",
				"Delete",
				"DoStatement",
				"ElseStatement",
				"ForStatement",
				"IfStatement",
				"Repeat",
				"Scope",
				"Specifier",
				"Statement",
				"SwitchStatement",
				"WhileStatement",
				"Class",
				"Event",
				"Interface",
				"Method",
				"Module",
				"Namespace",
				"MarkdownH1",
				"MarkdownH2",
				"MarkdownH3",
				"MarkdownH4",
				"MarkdownH5",
				"MarkdownH6",
			}

			for _, value in pairs(dropbar_hl) do
				hl["DropBarKind" .. value] = { link = "DropBarKind" }
			end
		end,
	},
}
