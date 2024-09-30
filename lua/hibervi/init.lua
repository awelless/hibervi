local M = {}

function M.setup()
   vim.cmd('hi clear')

   vim.o.background = 'dark'
   vim.o.termguicolors = true
   vim.g.colors_name = 'hibervi'

   local highlights = require('hibervi.highlights').get_highlights()

   for group, colors in pairs(highlights) do
       vim.api.nvim_set_hl(0, group, colors)
   end
end

return M
