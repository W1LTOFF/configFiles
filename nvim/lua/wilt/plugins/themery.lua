return {
    "zaldih/themery.nvim",
    config = function()
        require("themery").setup({
            -- "ron",  "blue", "delek", "pablo", "quiet", "shine", "slate", "torte", "desert", "murphy", "sorbet", "elflord", "evening", "habamax", "koehler", "morning", "zellner", "darkblue", "industry", "zaibatsu", "peachpuff", "wildcharm", "lunaperche",
            themes = { "vim", "retrobox", "tokyonight", "tokyonight-day", "tokyonight-moon", "tokyonight-storm", "tokyonight-night", "tokyodark", "carbonfox", "Nightfox", "Dayfox", "Dawnfox", "Duskfox", "Nordfox", "Terafox", "onedark", "onedark_dark", "onelight", "onedark_vivid", "kanagawa-dragon", "kanagawa-lotus", "kanagawa-wave" }, -- Your list of installed colorschemes.
            livePreview = true,                                                                                                                                                                                                                                                                                                                  -- Apply theme while picking. Default to true.
        })
    end,
}
