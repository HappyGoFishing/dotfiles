return {
    'f4z3r/gruvbox-material.nvim',
    priority = 1000,
    opts = ...,
    config = function()
        local builtin = require('gruvbox-material').setup({
            italics = true,               -- enable italics in general
            contrast = "medium",          -- set contrast, can be any of "hard", "medium", "soft"
            comments = {
                italics = true,           -- enable italic comments
            },
            background = {
                transparent = false,      -- set the background to transparent
            },
            float = {
                force_background = false, -- force background on floats even when background.transparent is set
                background_color = nil,   -- set color for float backgrounds. If nil, uses the default color set
                                          -- by the color scheme
            },
            signs = {
                highlight = true,         -- whether to highlight signs
            },
            customize = nil,
        })
    end
}
