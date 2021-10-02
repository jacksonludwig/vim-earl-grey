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

local lush = require "lush"
local hsl = lush.hsl

local palette = {
  foreground = hsl "#605A52",
  background = hsl "#FCFBF9",
  background_alt = hsl "#F7F3EE",
  purple = hsl "#83577D",
  blue = hsl "#556995",
  teal = hsl "#477A7B",
  green = hsl "#747B4D",
  red = hsl "#8F5652",
  orange = hsl "#886A44",
}

---@diagnostic disable: undefined-global
local theme = lush(function()
  return {
    Normal { bg = palette.background, fg = palette.foreground },
    Comment { fg = palette.foreground.lighten(35) },
    EndOfBuffer { fg = Comment.fg },
    LineNr { fg = Comment.fg },
    Keyword { fg = palette.purple },
    Identifier { fg = palette.blue },
    Operator { fg = Normal.fg },
    Delimiter { fg = Identifier.fg },
    Special { fg = palette.purple },
    Number { fg = palette.teal },
    String { fg = palette.green },
    Constant { fg = palette.teal },
    Conditional { fg = palette.purple },
    Repeat { fg = palette.purple },
    Error { fg = palette.red },
    ErrorMsg { fg = palette.red },
    WarningMsg { fg = palette.orange },
    Type { fg = palette.foreground },
    Function { fg = palette.foreground },
    PreProc { fg = palette.orange },
    Statement { fg = palette.purple },
    NormalFloat { bg = palette.background_alt.darken(3), fg = palette.foreground },
    DiffDelete { fg = palette.red },
    DiffAdd { fg = palette.green },
    DiffChange { fg = palette.orange },
    VertSplit { fg = palette.foreground },
    Visual { bg = palette.blue.lighten(70) },
    Search { bg = palette.purple, fg = palette.background },
    IncSearch { bg = palette.blue, fg = palette.background },
    NonText { fg = palette.blue.lighten(15) },
    SpecialKey { fg = NonText.fg },
    Directory { fg = palette.teal },

    Title { fg = palette.teal, gui = "bold" },
    htmlH2 { fg = palette.blue, gui = "bold" },
    NormalNB { bg = palette.background_alt, fg = palette.foreground },

    Cursor { bg = palette.foreground, fg = palette.background },
    MatchParen { bg = palette.background_alt.darken(15), fg = palette.foreground, gui = "underline" },

    CursorLine { bg = palette.background_alt },
    ColorColumn { bg = palette.background_alt },
    CursorLineNr { bg = palette.background_alt },

    Bold { gui = "bold" },
    Underlined { gui = "underline" },
    Italic { gui = "italic" },

    Pmenu { bg = palette.background_alt, fg = palette.foreground },
    PmenuSel { bg = palette.background_alt.darken(15), fg = palette.foreground },

    Todo { bg = palette.background_alt.darken(3), fg = palette.teal },

    StatusLine { fg = palette.foreground },
    StatusLineNC { fg = palette.foreground },

    SpellBad { gui = "underline", fg = palette.red },
    SpellCap { gui = "underline", fg = palette.blue },
    SpellRare { gui = "underline", fg = palette.orange },
    SpellLocal { gui = "underline", fg = palette.purple },

    DiagnosticError { fg = palette.red },
    DiagnosticWarn { fg = palette.orange },
    DiagnosticHint { fg = palette.blue },
    DiagnosticInfo { fg = palette.purple },
    DiagnosticUnderlineError { gui = "underline", sp = palette.red.lighten(10) },
    DiagnosticUnderlineWarn { gui = "underline", sp = palette.orange.lighten(10) },
    DiagnosticUnderlineHint { gui = "underline", sp = palette.blue.lighten(10) },
    DiagnosticUnderlineInfo { gui = "underline", sp = palette.purple.lighten(10) },

    LspReferenceText { bg = palette.background_alt },
    LspReferenceRead { bg = palette.background_alt },
    LspReferenceWrite { bg = palette.background_alt },
  }
end)

-- return our parsed theme for extension or use else where.
return theme
