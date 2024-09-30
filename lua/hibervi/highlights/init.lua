local highlights_names = {
    'cmp',
    'lsp',
    'nvim',
    'telescope',
    'treesitter',
}

local M = {}

function M.get_highlights()
    local merged_highlights = {}

    for _, highlights_name in ipairs(highlights_names) do
        local module_name = 'hibervi.highlights.' .. highlights_name
        local highlights = require(module_name).get_highlights()

        for group, color in pairs(highlights) do
            merged_highlights[group] = color
        end
    end

    return merged_highlights
end

return M
