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

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

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
    Comment { bg = pallete.background, fg = palette.foreground.lighten(35),  gui="italic" },
    LineNr { bg = pallete.background, fg = Comment.fg },
    Keyword { bg = pallete.background, fg = palette.purple },
    Identifier { bg = pallete.background, fg = palette.blue },
    Operator { bg = pallete.background, fg = Normal.fg },
    Delimiter { bg = pallete.background, fg = Identifier.fg },
    Special { bg = pallete.background, fg = palette.purple },
    Number { bg = pallete.background, fg = palette.teal },
    String { bg = pallete.background, fg = palette.green },

    -- Clear all highlighting for CursorLine
    CursorLine { },
  }
end)

-- return our parsed theme for extension or use else where.
return theme
