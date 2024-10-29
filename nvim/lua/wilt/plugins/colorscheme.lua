-- return {
--     "tiagovla/tokyodark.nvim",
--     lazy = false,
--     priority = 1000,
--     overrides = function(colors)
--         local theme = colors.theme
--         -- Only setup the only ones needed
--         vim.api.nvim_set_hl(0, "PopMenu", { bg = theme.ui.bg, blend = 0 })
--         return {
--             NormalFloat = { bg = "none" }, -- All floating buffers background like the lsp, autocomplete and such
--             FloatBorder = { bg = "none" }, -- Most floating borders except telescope
--             TelescopeBorder = { bg = "none" },
--         }
--     end,
--     config = function()
--         vim.cmd("colorscheme tokyodark")
--     end,
-- }
return {
    {
        "folke/tokyonight.nvim",
        opts = {
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        },
    },
    {
        "tiagovla/tokyodark.nvim",
    },
    {
        "EdenEast/nightfox.nvim",
        config = function()
            require('nightfox').setup({

                options = {
                    transparent = true,
                }
            })
        end
    },
    {
        "olimorris/onedarkpro.nvim",
        config = function()
            require("onedarkpro").setup({
                options = {
                    transparency = true,
                    lualine_transparency = true,
                },
            })
        end
    },
    {
        "rebelot/kanagawa.nvim",
        config = function()
            require('kanagawa').setup({
                compile = false,  -- enable compiling the colorscheme
                undercurl = true, -- enable undercurls
                commentStyle = { italic = true },
                functionStyle = {},
                keywordStyle = { italic = true },
                statementStyle = { bold = true },
                typeStyle = {},
                transparent = true,    -- do not set background color
                dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
                terminalColors = true, -- define vim.g.terminal_color_{0,17}
                colors = {             -- add/modify theme and palette colors
                    palette = {},
                    theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
                },
                overrides = function(colors) -- add/modify highlights
                    return {}
                end,
                theme = "wave",    -- Load "wave" theme when 'background' option is not set
                background = {     -- map the value of 'background' option to a theme
                    dark = "wave", -- try "dragon" !
                    light = "lotus"
                },
            })
        end
    },
}
