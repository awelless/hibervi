local window = require('hibervi.colors.window')
local syntax = require('hibervi.colors.syntax')

local M = {}

local highlights = { -- Syntax highlighting.
    Comment = syntax.comment,
    Constant = syntax.constant,
    String = syntax.text,
    Character = syntax.text,
    Number = syntax.number,
    Boolean = syntax.keyword,
    Float = syntax.number,
    Identifier = syntax.identifier,
    Function = syntax['function'],
    Statement = syntax.keyword,
    Conditional = syntax.keyword,
    Repeat = syntax.keyword,
    Label = syntax.keyword,
    Operator = syntax.keyword,
    Keyword = syntax.keyword,
    Exception = syntax.keyword,
    PreProc = {},
    Include = {},
    Define = {},
    Macro = {},
    PreCondit = {},
    Type = syntax.keyword,
    StorageClass = syntax.type,
    Structure = syntax.type,
    Typedef = syntax.type,
    Special = {},
    SpecialChar = {},
    Tag = {},
    Delimiter = {},
    SpecialComment = {},
    Debug = {},
    Underlined = {},
    Ignore = {},
    Error = {},
    Todo = syntax.todo,
    Added = {},
    Changed = {},
    Removed = {},

    -- Editor highlighting.
    Normal = window.default,
}

function M.get_highlights()
    return highlights
end

return M
