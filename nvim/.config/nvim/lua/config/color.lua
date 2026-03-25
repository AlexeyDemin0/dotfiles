
require('vscode').load('dark')

local hl = vim.api.nvim_set_hl

hl(0, 'CursorLine', { bg = '#2a2a2a' })
hl(0, 'NeoTreeCursorLine', { bg = '#2a2a2a', bold=true })


-- Visual Studio (IDE) semantic colors:
--   Class / Struct / Interface / Enum  #FFD700  golden yellow
--   Method / Function / Constructor    #C586C0  purple
--   Property / Field / Variable        #9CDCFE  blue
--   Constant / EnumMember              #4FC1FF  bright blue
--   Namespace / Module / Package       #C8C8C8  gray
--   String                             #CE9178  orange
--   Number / Boolean                   #B5CEA8  green
--   Separator >                        #606060  muted

hl(0, "NavicIconsFile",          { bg = "NONE", fg = "#C8C8C8" })
hl(0, "NavicIconsModule",        { bg = "NONE", fg = "#C8C8C8" })
hl(0, "NavicIconsNamespace",     { bg = "NONE", fg = "#C8C8C8" })
hl(0, "NavicIconsPackage",       { bg = "NONE", fg = "#C8C8C8" })
hl(0, "NavicIconsClass",         { bg = "NONE", fg = "#FFD700" })
hl(0, "NavicIconsStruct",        { bg = "NONE", fg = "#FFD700" })
hl(0, "NavicIconsInterface",     { bg = "NONE", fg = "#FFD700" })
hl(0, "NavicIconsEnum",          { bg = "NONE", fg = "#FFD700" })
hl(0, "NavicIconsTypeParameter", { bg = "NONE", fg = "#FFD700" })
hl(0, "NavicIconsMethod",        { bg = "NONE", fg = "#C586C0" })
hl(0, "NavicIconsFunction",      { bg = "NONE", fg = "#C586C0" })
hl(0, "NavicIconsConstructor",   { bg = "NONE", fg = "#C586C0" })
hl(0, "NavicIconsEvent",         { bg = "NONE", fg = "#C586C0" })
hl(0, "NavicIconsProperty",      { bg = "NONE", fg = "#9CDCFE" })
hl(0, "NavicIconsField",         { bg = "NONE", fg = "#9CDCFE" })
hl(0, "NavicIconsVariable",      { bg = "NONE", fg = "#9CDCFE" })
hl(0, "NavicIconsConstant",      { bg = "NONE", fg = "#4FC1FF" })
hl(0, "NavicIconsEnumMember",    { bg = "NONE", fg = "#4FC1FF" })
hl(0, "NavicIconsString",        { bg = "NONE", fg = "#CE9178" })
hl(0, "NavicIconsNumber",        { bg = "NONE", fg = "#B5CEA8" })
hl(0, "NavicIconsBoolean",       { bg = "NONE", fg = "#B5CEA8" })
hl(0, "NavicIconsArray",         { bg = "NONE", fg = "#D4D4D4" })
hl(0, "NavicIconsObject",        { bg = "NONE", fg = "#D4D4D4" })
hl(0, "NavicIconsKey",           { bg = "NONE", fg = "#D4D4D4" })
hl(0, "NavicIconsNull",          { bg = "NONE", fg = "#D4D4D4" })
hl(0, "NavicIconsOperator",      { bg = "NONE", fg = "#D4D4D4" })
hl(0, "NavicText",               { bg = "NONE", fg = "#D4D4D4" })
hl(0, "NavicSeparator",          { bg = "NONE", fg = "#606060" })
