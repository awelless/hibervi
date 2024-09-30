local window = require('hibervi.colors.window')

local M = {}

local highlights = { -- Syntax highlighting.
    TelescopeBorder   = window.float_border,
    TelescopeMatching = { fg =  '#ffb900', bold = true },
    TelescopeNormal   = window.float,
    TelescopeTitle    = window.float_title,
}

function M.get_highlights()
    return highlights
end

return M
