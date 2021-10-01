--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

local lush = require('lush')
local hsl = lush.hsl

local palette = {
  foreground = hsl("#605a52"),
  background = hsl("#FCFBF9"),
  background_alt = hsl("#f7f3ee"),
  purple = hsl("#83577D"),
  blue = hsl("#556995"),
  teal = hsl("#477a7b"),
  green = hsl("#747B4D"),
}

---@diagnostic disable: undefined-global
local theme = lush(function()
 return {
    Normal { bg = palette.background, fg = palette.foreground },
    Comment { bg = palette.background, fg = palette.foreground.lighten(35),  gui="italic" },
    LineNr { bg = palette.background, fg = Comment.fg },
    Keyword { bg = palette.background, fg = palette.purple },
    Identifier { bg = palette.background, fg = palette.blue },
    Operator { bg = palette.background, fg = Normal.fg },
    Delimiter { bg = palette.background, fg = Identifier.fg },
    Special { bg = palette.background, fg = palette.purple },
    Number { bg = palette.background, fg = palette.teal },
    String { bg = palette.background, fg = palette.green },
    Constant { bg = palette.background, fg = palette.teal },
    Conditional { bg = palette.background, fg = palette.purple },
    Repeat { bg = palette.background, fg = palette.purple },

    -- Clear all highlighting for CursorLine
    CursorLine { },
  }
end)

-- return our parsed theme for extension or use else where.
return theme
