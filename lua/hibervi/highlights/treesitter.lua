local syntax = require('hibervi.colors.syntax')

local M = {}

local highlights = {
    ['@annotation']                 = syntax.annotation,
    ['@attribute']                  = {},
    ['@boolean']                    = syntax.keyword,
    ['@character']                  = syntax.text,
    ['@character.printf']           = {},
    ['@character.special']          = syntax.text_escape,
    ['@comment']                    = syntax.comment,
    -- ['@comment.error']              = {},
    -- ['@comment.hint']               = {},
    -- ['@comment.info']               = {},
    -- ['@comment.note']               = {},
    ['@comment.todo']               = syntax.todo,
    -- ['@comment.warning']            = {},
    ['@constant']                   = syntax.constant,
    -- ['@constant.builtin']           = {},
    -- ['@constant.macro']             = {},
    ['@constructor']                = syntax['function'],
    ['@constructor.lua']            = syntax.bracket,
    ['@diff.delta']                 = syntax.diff_delta,
    ['@diff.minus']                 = syntax.diff_minus,
    ['@diff.plus']                  = syntax.diff_plus,
    ['@function']                   = syntax['function'],
 --    ['@function.builtin']           = {},
 --    ['@function.call']              = {},
 --    ['@function.macro']             = {},
 --    ['@function.method']            = {},
 --    ['@function.method.call']       = {},
    ['@keyword']                    = syntax.keyword, -- For keywords that don't fall in previous categories.
 --    ['@keyword.conditional']        = {},
 --    ['@keyword.coroutine']          = {},
 --    ['@keyword.debug']              = {},
 --    ['@keyword.directive']          = {},
 --    ['@keyword.directive.define']   = {},
 --    ['@keyword.exception']          = {},
 --    ['@keyword.function']           = {}, -- For keywords used to define a function.
 --    ['@keyword.import']             = {},
 --    ['@keyword.operator']           = {},
 --    ['@keyword.repeat']             = {},
 --    ['@keyword.return']             = {},
 --    ['@keyword.storage']            = {},
    ['@label']                      = {}, -- For labels: `label:` in C and `:label:` in Lua.
    ['@markup']                     = {},
    ['@markup.emphasis']            = { italic = true },
    ['@markup.environment']         = {},
    ['@markup.environment.name']    = {},
    ['@markup.heading']             = {},
    ['@markup.italic']              = { italic = true },
    ['@markup.link']                = {},
    ['@markup.link.label']          = {},
    ['@markup.link.label.symbol']   = {},
    ['@markup.link.url']            = {},
    ['@markup.list']                = {}, -- For special punctutation that does not fall in the categories before.
    ['@markup.list.checked']        = syntax.bracket, -- For brackets and parens.
    ['@markup.list.markdown']       = {},
    ['@markup.list.unchecked']      = syntax.bracket, -- For brackets and parens.
    ['@markup.math']                = {},
    ['@markup.raw']                 = {},
    ['@markup.raw.markdown_inline'] = {},
    ['@markup.strikethrough']       = { strikethrough = true },
    ['@markup.strong']              = { bold = true },
    ['@markup.underline']           = { underline = true },
    ['@module']                     = {},
    ['@module.builtin']             = syntax.keyword, -- Variable names that are defined by the languages, like `this` or `self`.
    ['@namespace.builtin']          = {},
    ['@none']                       = {},
    ['@number']                     = syntax.number,
    ['@number.float']               = syntax.number,
    ['@operator']                   = syntax.keyword, -- For any operator: `+`, but also `->` and `*` in C.
    ['@property']                   = syntax.field,
    ['@punctuation.bracket']        = syntax.bracket, -- For brackets and parens.
    ['@punctuation.delimiter']      = {}, -- For delimiters ie: `.`
    ['@punctuation.special']        = {}, -- For special symbols (e.g. `{}` in string interpolation)
    ['@string']                     = syntax.text,
    ['@string.documentation']       = {},
    ['@string.escape']              = syntax.text_escape, -- For escape characters within a string.
    ['@string.regexp']              = {}, -- For regexes.
    ['@tag']                        = {},
    ['@tag.attribute']              = {},
    ['@tag.delimiter']              = {},
    ['@tag.javascript']             = {},
    ['@type']                       = syntax.type,
--     ['@type.builtin']               = {},
--     ['@type.definition']            = {},
--     ['@type.qualifier']             = {},
    ['@variable']                   = syntax.identifier, -- Any variable name that does not have another highlight.
    ['@variable.builtin']           = syntax.keyword, -- Variable names that are defined by the languages, like `this` or `self`.
    ['@variable.member']            = syntax.field, -- For fields.
    ['@variable.parameter']         = syntax.parameter, -- For parameters of a function.
    -- ['@variable.parameter.builtin'] = {}, -- For builtin parameters of a function, e.g. '...' or Smali's p[1-99]
}

function M.test(param, param2)
    return param
end

function M.get_highlights()
    return highlights
end

return M
