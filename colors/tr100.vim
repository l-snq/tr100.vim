" TR-100 Machine Report Theme for Vim/Neovim
" Inspired by classic terminal aesthetics
"
" MIT License
"
" Permission is hereby granted, free of charge, to any person obtaining
" a copy of this software and associated documentation files (the
" "Software"), to deal in the Software without restriction, including
" without limitation the rights to use, copy, modify, merge, publish,
" distribute, sublicense, and/or sell copies of the Software, and to
" permit persons to whom the Software is furnished to do so, subject to
" the following conditions:
"
" The above copyright notice and this permission notice shall be
" included in all copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
" EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
" MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
" NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
" LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
" OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
" WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "tr100"

" Color definitions
let s:bg = "#0A0A0A"
let s:fg = "#FF9900"
let s:fg_dark = "#CC7700"
let s:fg_bright = "#FFBB33"
let s:orange = "#FF9900"
let s:orange_bright = "#FFBB33"
let s:orange_dark = "#CC7700"
let s:orange_dim = "#AA6600"
let s:black = "#000000"
let s:gray = "#1A1A1A"
let s:gray_light = "#333333"
let s:error = "#FF4444"
let s:warning = "#FFAA00"

" Editor colors
exe "hi Normal guifg=" . s:fg . " guibg=" . s:bg
exe "hi NormalFloat guifg=" . s:fg . " guibg=" . s:gray
exe "hi FloatBorder guifg=" . s:orange . " guibg=" . s:gray
exe "hi ColorColumn guibg=" . s:gray
exe "hi Cursor guifg=" . s:bg . " guibg=" . s:fg
exe "hi CursorLine guibg=" . s:gray . " cterm=NONE"
exe "hi CursorColumn guibg=" . s:gray
exe "hi LineNr guifg=" . s:orange_dim
exe "hi CursorLineNr guifg=" . s:orange_bright . " gui=bold"
exe "hi SignColumn guibg=" . s:bg
exe "hi Folded guifg=" . s:orange_dim . " guibg=" . s:gray
exe "hi FoldColumn guifg=" . s:orange_dim . " guibg=" . s:bg

" Syntax highlighting
exe "hi Comment guifg=" . s:orange_dim . " gui=italic"
exe "hi Constant guifg=" . s:orange_bright
exe "hi String guifg=" . s:orange
exe "hi Character guifg=" . s:orange
exe "hi Number guifg=" . s:orange_bright
exe "hi Boolean guifg=" . s:orange_bright
exe "hi Float guifg=" . s:orange_bright

exe "hi Identifier guifg=" . s:fg
exe "hi Function guifg=" . s:orange_bright . " gui=bold"

exe "hi Statement guifg=" . s:orange . " gui=bold"
exe "hi Conditional guifg=" . s:orange . " gui=bold"
exe "hi Repeat guifg=" . s:orange . " gui=bold"
exe "hi Label guifg=" . s:orange
exe "hi Operator guifg=" . s:fg
exe "hi Keyword guifg=" . s:orange . " gui=bold"
exe "hi Exception guifg=" . s:orange . " gui=bold"

exe "hi PreProc guifg=" . s:orange_bright
exe "hi Include guifg=" . s:orange_bright
exe "hi Define guifg=" . s:orange_bright
exe "hi Macro guifg=" . s:orange_bright
exe "hi PreCondit guifg=" . s:orange_bright

exe "hi Type guifg=" . s:orange
exe "hi StorageClass guifg=" . s:orange
exe "hi Structure guifg=" . s:orange
exe "hi Typedef guifg=" . s:orange

exe "hi Special guifg=" . s:orange_bright
exe "hi SpecialChar guifg=" . s:orange_bright
exe "hi Tag guifg=" . s:orange
exe "hi Delimiter guifg=" . s:fg
exe "hi SpecialComment guifg=" . s:orange_dim . " gui=italic"
exe "hi Debug guifg=" . s:error

" UI Elements
exe "hi Pmenu guifg=" . s:fg . " guibg=" . s:gray
exe "hi PmenuSel guifg=" . s:bg . " guibg=" . s:orange
exe "hi PmenuSbar guibg=" . s:gray_light
exe "hi PmenuThumb guibg=" . s:orange

exe "hi StatusLine guifg=" . s:bg . " guibg=" . s:orange . " gui=NONE"
exe "hi StatusLineNC guifg=" . s:bg . " guibg=" . s:orange_dim . " gui=NONE"
exe "hi TabLine guifg=" . s:orange_dim . " guibg=" . s:gray . " gui=NONE"
exe "hi TabLineFill guibg=" . s:gray . " gui=NONE"
exe "hi TabLineSel guifg=" . s:bg . " guibg=" . s:orange . " gui=NONE"

exe "hi VertSplit guifg=" . s:orange . " guibg=NONE"
exe "hi Visual guibg=" . s:gray_light
exe "hi VisualNOS guibg=" . s:gray_light

exe "hi Search guifg=" . s:bg . " guibg=" . s:orange
exe "hi IncSearch guifg=" . s:bg . " guibg=" . s:orange_bright

exe "hi MatchParen guifg=" . s:orange_bright . " guibg=" . s:gray_light . " gui=bold"

exe "hi Question guifg=" . s:orange_bright
exe "hi ErrorMsg guifg=" . s:error . " guibg=NONE"
exe "hi WarningMsg guifg=" . s:warning
exe "hi ModeMsg guifg=" . s:orange
exe "hi MoreMsg guifg=" . s:orange_bright

exe "hi Todo guifg=" . s:orange_bright . " guibg=NONE gui=bold"
exe "hi Error guifg=" . s:error . " guibg=NONE"
exe "hi Underlined guifg=" . s:orange . " gui=underline"

" Diff
exe "hi DiffAdd guifg=" . s:orange_bright . " guibg=" . s:gray
exe "hi DiffChange guifg=" . s:orange . " guibg=" . s:gray
exe "hi DiffDelete guifg=" . s:orange_dim . " guibg=" . s:gray
exe "hi DiffText guifg=" . s:orange_bright . " guibg=" . s:gray_light

" Spelling
exe "hi SpellBad guifg=" . s:error . " gui=undercurl"
exe "hi SpellCap guifg=" . s:warning . " gui=undercurl"
exe "hi SpellLocal guifg=" . s:orange . " gui=undercurl"
exe "hi SpellRare guifg=" . s:orange_bright . " gui=undercurl"

" Diagnostics (LSP)
exe "hi DiagnosticError guifg=" . s:error
exe "hi DiagnosticWarn guifg=" . s:warning
exe "hi DiagnosticInfo guifg=" . s:orange
exe "hi DiagnosticHint guifg=" . s:orange_dark

" Treesitter
hi! link @variable Normal
exe "hi @variable.builtin guifg=" . s:orange
hi! link @function Function
exe "hi @function.builtin guifg=" . s:orange_bright
hi! link @keyword Keyword
exe "hi @keyword.function guifg=" . s:orange . " gui=bold"
hi! link @string String
hi! link @number Number
hi! link @boolean Boolean
hi! link @comment Comment
hi! link @type Type
hi! link @operator Operator
exe "hi @punctuation.bracket guifg=" . s:fg
exe "hi @punctuation.delimiter guifg=" . s:fg

" Git signs
exe "hi GitSignsAdd guifg=" . s:orange_bright
exe "hi GitSignsChange guifg=" . s:orange
exe "hi GitSignsDelete guifg=" . s:orange_dim

" Terminal colors
if has('nvim')
  let g:terminal_color_0 = s:black
  let g:terminal_color_1 = s:error
  let g:terminal_color_2 = s:orange_bright
  let g:terminal_color_3 = s:warning
  let g:terminal_color_4 = s:orange
  let g:terminal_color_5 = s:orange_bright
  let g:terminal_color_6 = s:orange
  let g:terminal_color_7 = s:fg
  let g:terminal_color_8 = s:orange_dim
  let g:terminal_color_9 = s:error
  let g:terminal_color_10 = s:orange_bright
  let g:terminal_color_11 = s:warning
  let g:terminal_color_12 = s:orange
  let g:terminal_color_13 = s:orange_bright
  let g:terminal_color_14 = s:orange
  let g:terminal_color_15 = s:orange_bright
endif
