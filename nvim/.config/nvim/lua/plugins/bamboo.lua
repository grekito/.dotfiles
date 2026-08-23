require('bamboo').setup {
  style = 'vulgaris',
  transparent = false,
  dim_inactive = false,
  term_colors = true,
  ending_tildes = false,
  cmp_itemkind_reverse = false,

  code_style = {
    comments = { italic = true },
    conditionals = { italic = true },
    keywords = {},
    functions = {},
    namespaces = { italic = true },
    parameters = { italic = true },
    strings = {},
    variables = {},
  },

  lualine = {
    transparent = false,
  },
  
  colors = {},
  highlights = {},

  diagnostics = {
    darker = false,
    undercurl = true,
    background = true,
  },
}
