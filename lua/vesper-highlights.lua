-- Vesper theme 1:1 highlight mapping
-- Generated from VS Code tokenColors → Neovim treesitter + LSP semantic groups
-- Place this AFTER vim.cmd.colorscheme 'vesper' in your vesper config block

local hl = vim.api.nvim_set_hl

-- Palette (from VS Code theme JSON)
local c = {
  white    = '#FFFFFF',
  orange   = '#FFC799',
  pink     = '#FBADFF',
  green    = '#99FFE4',
  red      = '#FF8080',
  gray     = '#A0A0A0',
  comment  = '#595959',
  bg       = '#101010',
  lnum_fg  = '#505050',
  lnum_act = '#C6C6C6',
}

-- ── Comments ──────────────────────────────────────────────────────────────────
-- scope: comment, punctuation.definition.comment → #595959
hl(0, '@comment',                    { fg = c.comment })
hl(0, '@comment.documentation',      { fg = c.comment })

-- ── Variables ─────────────────────────────────────────────────────────────────
-- scope: variable → #FFFFFF
hl(0, '@variable',                   { fg = c.white })
hl(0, '@variable.member',            { fg = c.white })  -- meta.block variable.other
hl(0, '@variable.builtin',           { fg = c.white })  -- variable.language (self/this)
hl(0, '@variable.parameter',         { fg = c.white })

-- scope: variable.other.constant → #99FFE4
hl(0, '@variable.parameter.builtin', { fg = c.green })
hl(0, '@constant',                   { fg = c.orange }) -- constant.numeric / support.constant
hl(0, '@constant.builtin',           { fg = c.orange }) -- constant.language.boolean (true/false/nil)
hl(0, '@constant.macro',             { fg = c.green })  -- variable.other.constant

-- ── Numbers / Booleans ────────────────────────────────────────────────────────
-- scope: constant.numeric, keyword.other.unit → #FFC799
hl(0, '@number',                     { fg = c.orange })
hl(0, '@number.float',               { fg = c.orange })
hl(0, '@boolean',                    { fg = c.orange })

-- ── Strings ───────────────────────────────────────────────────────────────────
-- scope: string → #99FFE4
hl(0, '@string',                     { fg = c.green })
hl(0, '@string.documentation',       { fg = c.green })
hl(0, '@character',                  { fg = c.green })
-- scope: constant.character.escape, string.regexp → #A0A0A0
hl(0, '@string.escape',              { fg = c.gray })
hl(0, '@string.regexp',              { fg = c.gray })
hl(0, '@string.special',             { fg = c.gray })

-- ── Keywords ──────────────────────────────────────────────────────────────────
-- scope: keyword, storage.modifier, keyword.control, storage.type → #FBADFF
hl(0, '@keyword',                    { fg = c.pink })
hl(0, '@keyword.conditional',        { fg = c.pink })
hl(0, '@keyword.repeat',             { fg = c.pink })
hl(0, '@keyword.exception',          { fg = c.pink })
hl(0, '@keyword.import',             { fg = c.pink })
hl(0, '@keyword.return',             { fg = c.pink })
hl(0, '@keyword.operator',           { fg = c.pink })
hl(0, '@keyword.function',           { fg = c.pink })  -- storage.type (func/fn/def)
hl(0, '@keyword.modifier',           { fg = c.pink })  -- storage.modifier (pub/static/async)
hl(0, '@keyword.type',               { fg = c.pink })  -- storage.type (struct/class/type)
hl(0, '@keyword.directive',          { fg = c.pink })

-- ── Functions ─────────────────────────────────────────────────────────────────
-- scope: entity.name.function, variable.function, support.function → #FFC799
hl(0, '@function',                   { fg = c.orange })
hl(0, '@function.call',              { fg = c.orange })
hl(0, '@function.method',            { fg = c.orange })
hl(0, '@function.method.call',       { fg = c.orange })
hl(0, '@function.builtin',           { fg = c.orange })  -- support.function
hl(0, '@function.macro',             { fg = c.orange })
hl(0, '@constructor',                { fg = c.orange })

-- ── Types ─────────────────────────────────────────────────────────────────────
-- scope: entity.name, support.type, support.class → #FFC799
hl(0, '@type',                       { fg = c.orange })
hl(0, '@type.builtin',               { fg = c.orange })
hl(0, '@type.definition',            { fg = c.orange })
hl(0, '@type.qualifier',             { fg = c.pink })   -- type qualifiers are storage.modifier

-- ── Operators & Punctuation ───────────────────────────────────────────────────
-- not explicitly scoped in theme → default white
hl(0, '@operator',                   { fg = c.white })
hl(0, '@punctuation',                { fg = c.white })
hl(0, '@punctuation.bracket',        { fg = c.white })
hl(0, '@punctuation.delimiter',      { fg = c.white })
hl(0, '@punctuation.special',        { fg = c.white })

-- ── Errors ────────────────────────────────────────────────────────────────────
-- scope: invalid, invalid.illegal → #FF8080
hl(0, '@error',                      { fg = c.red })

-- ── Namespaces / Modules ──────────────────────────────────────────────────────
hl(0, '@module',                     { fg = c.white })
hl(0, '@module.builtin',             { fg = c.white })
hl(0, '@label',                      { fg = c.orange })

-- ── HTML / Tags ───────────────────────────────────────────────────────────────
-- scope: entity.name.tag → #FFC799
-- scope: punctuation.definition.tag → #FBADFF
hl(0, '@tag',                        { fg = c.orange })
hl(0, '@tag.builtin',                { fg = c.orange })
hl(0, '@tag.attribute',              { fg = c.white })
hl(0, '@tag.delimiter',              { fg = c.pink })

-- ── Markup (Markdown) ─────────────────────────────────────────────────────────
-- scope: markup.heading → #FFC799
hl(0, '@markup.heading',             { fg = c.orange, bold = true })
hl(0, '@markup.heading.1',           { fg = c.orange, bold = true })
hl(0, '@markup.heading.2',           { fg = c.orange, bold = true })
hl(0, '@markup.heading.3',           { fg = c.orange, bold = true })
-- scope: markup.italic → #FFFFFF italic
hl(0, '@markup.italic',              { fg = c.white, italic = true })
-- scope: markup.bold → #FFFFFF bold
hl(0, '@markup.strong',              { fg = c.white, bold = true })
-- scope: markup.underline → #FFC799 underline
hl(0, '@markup.underline',           { fg = c.orange, underline = true })
-- scope: markup.quote → #99FFE4
hl(0, '@markup.quote',               { fg = c.green })
-- scope: markup.inline.raw → #A0A0A0
hl(0, '@markup.raw',                 { fg = c.gray })
hl(0, '@markup.raw.block',           { fg = c.gray })
-- scope: *url*, *link*, *uri* → underline
hl(0, '@markup.link',                { fg = c.white, underline = true })
hl(0, '@markup.link.url',            { fg = c.orange, underline = true })
hl(0, '@markup.link.label',          { fg = c.white })
-- scope: markup.list items → #FFFFFF
hl(0, '@markup.list',                { fg = c.white })

-- ── LSP Semantic Tokens ───────────────────────────────────────────────────────
-- These override treesitter when an LSP provides semantic highlighting
-- (gopls, pyright, lua_ls all support this)
hl(0, '@lsp.type.function',          { fg = c.orange })
hl(0, '@lsp.type.method',            { fg = c.orange })
hl(0, '@lsp.type.variable',          { fg = c.white })
hl(0, '@lsp.type.parameter',         { fg = c.white })
hl(0, '@lsp.type.property',          { fg = c.white })
hl(0, '@lsp.type.type',              { fg = c.orange })
hl(0, '@lsp.type.class',             { fg = c.orange })
hl(0, '@lsp.type.interface',         { fg = c.orange })
hl(0, '@lsp.type.struct',            { fg = c.orange })
hl(0, '@lsp.type.enum',              { fg = c.orange })
hl(0, '@lsp.type.enumMember',        { fg = c.orange })
hl(0, '@lsp.type.typeParameter',     { fg = c.orange })
hl(0, '@lsp.type.keyword',           { fg = c.pink })
hl(0, '@lsp.type.modifier',          { fg = c.pink })
hl(0, '@lsp.type.comment',           { fg = c.comment })
hl(0, '@lsp.type.string',            { fg = c.green })
hl(0, '@lsp.type.number',            { fg = c.orange })
hl(0, '@lsp.type.operator',          { fg = c.white })
hl(0, '@lsp.type.namespace',         { fg = c.white })
hl(0, '@lsp.type.macro',             { fg = c.orange })
hl(0, '@lsp.type.decorator',         { fg = c.orange })
-- Modifiers
hl(0, '@lsp.typemod.function.defaultLibrary', { fg = c.orange })
hl(0, '@lsp.typemod.variable.defaultLibrary', { fg = c.white })
hl(0, '@lsp.typemod.variable.readonly',       { fg = c.green })  -- variable.other.constant
hl(0, '@lsp.typemod.keyword.async',           { fg = c.pink })
hl(0, '@lsp.typemod.type.defaultLibrary',     { fg = c.orange })

-- ── Editor chrome ─────────────────────────────────────────────────────────────
-- from colors section of theme JSON
hl(0, 'LineNr',                      { fg = c.lnum_fg })
hl(0, 'CursorLineNr',                { fg = c.lnum_act })
hl(0, 'Normal',                      { fg = c.white, bg = c.bg })
hl(0, 'NormalFloat',                 { fg = c.white, bg = '#161616' })
hl(0, 'FloatBorder',                 { fg = '#282828', bg = '#161616' })