local syntax = require('hibervi.colors.syntax')

local M = {}

local highlights = {
    ['@lsp.mod.static']                        = syntax.constant,
    ['@lsp.type.boolean']                      = syntax.keyword,
    ['@lsp.type.builtinType']                  = syntax.type,
    ['@lsp.type.comment']                      = syntax.comment,
    ['@lsp.type.decorator']                    = syntax.annotation,
    ['@lsp.type.deriveHelper']                 = syntax.annotation,
    ['@lsp.type.enum']                         = syntax.type,
    ['@lsp.type.enumMember']                   = syntax.constant,
    ['@lsp.type.escapeSequence']               = syntax.text_escape,
    -- ['@lsp.type.formatSpecifier']              = '@markup.list',
    ['@lsp.type.generic']                      = syntax.generic,
    ['@lsp.type.interface']                    = syntax.type,
    ['@lsp.type.keyword']                      = syntax.keyword,
    -- ['@lsp.type.lifetime']                     = '@keyword.storage',
    ['@lsp.type.namespace']                    = syntax.type,
    ['@lsp.type.number']                       = syntax.number,
    ['@lsp.type.operator']                     = syntax.keyword,
    ['@lsp.type.parameter']                    = syntax.parameter,
    ['@lsp.type.property']                     = syntax.field,
    ['@lsp.type.selfKeyword']                  = syntax.keyword,
    ['@lsp.type.selfTypeKeyword']              = syntax.keyword,
    ['@lsp.type.string']                       = syntax.text,
    ['@lsp.type.typeAlias']                    = syntax.type,
    ['@lsp.type.variable']                     = {}, -- use treesitter styles for regular variables
    ['@lsp.typemod.class.defaultLibrary']      = syntax.type,
    ['@lsp.typemod.enum.defaultLibrary']       = syntax.type,
    ['@lsp.typemod.enumMember.defaultLibrary'] = syntax.constant,
    ['@lsp.typemod.function.defaultLibrary']   = syntax['function'],
    ['@lsp.typemod.keyword.async']             = syntax.keyword,
    ['@lsp.typemod.keyword.injected']          = syntax.keyword,
    -- ['@lsp.typemod.macro.defaultLibrary']      = { fg = synteax.,
    ['@lsp.typemod.method.defaultLibrary']     = syntax['function'],
    ['@lsp.typemod.operator.injected']         = syntax.keyword,
    ['@lsp.typemod.string.injected']           = syntax.text,
    ['@lsp.typemod.struct.defaultLibrary']     = syntax.type,
    ['@lsp.typemod.variable.callable']         = syntax['function'],
    ['@lsp.typemod.variable.defaultLibrary']   = syntax.identifier,
    ['@lsp.typemod.variable.injected']         = syntax.identifier,
    ['@lsp.typemod.variable.static']           = syntax.constant,
}

function M.get_highlights()
    return highlights
end

return M
