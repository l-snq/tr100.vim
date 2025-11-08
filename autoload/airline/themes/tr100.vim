let g:airline#themes#tr100#palette = {}

let s:airline_a_normal   = [ '#FF9900' , '#0A0A0A' , 17  , 190 ]
let s:airline_b_normal   = [ '#0A0A0A' , '#FF9900' , 255 , 238 ]
let s:airline_c_normal   = [ '#FF9900' , '#0A0A0A' , 85  , 234 ]
let g:airline#themes#tr100#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)

let g:airline#themes#tr100#palette.normal_modified = {
      \ 'airline_c': [ '#0A0A0A' , '#CC7700' , 255, 53, ''] ,
      \ }


let s:airline_a_insert = [ '#0A0A0A' , '#FFBB33' , 17  , 45  ]
let s:airline_b_insert = [ '#0A0A0A' , '#FF9900' , 255 , 27  ]
let s:airline_c_insert = [ '#0A0A0A' , '#FFBB33' , 15  , 17  ]
let g:airline#themes#tr100#palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)
let g:airline#themes#tr100#palette.insert_modified = {
      \ 'airline_c': [ '#0A0A0A' , '#CC7700' , 255, 53, '' ] ,
      \ }
let g:airline#themes#tr100#palette.insert_paste = {
      \ 'airline_a': [ s:airline_a_insert[0]   , '#d78700' , s:airline_a_insert[2] , 172, ''],
      \ }

let g:airline#themes#tr100#palette.terminal = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)

let g:airline#themes#tr100#palette.replace = copy(g:airline#themes#tr100#palette.insert)
let g:airline#themes#tr100#palette.replace.airline_a = [ s:airline_b_insert[0]   , '#af0000' , s:airline_b_insert[2] , 124, '' ]
let g:airline#themes#tr100#palette.replace_modified = g:airline#themes#tr100#palette.insert_modified



" left is foreground, right is background
" let s:airline_a_visual = [ '#0A0A0A' , '#ffaf00' , 232 , 214 ]
let s:airline_a_visual = [ '#ffffff' , '#ffaf00' , 232 , 214 ]
let s:airline_b_visual = [ '#0A0A0A' , '#AA6600' , 232 , 202 ]
let s:airline_c_visual = [ '#0A0A0A' , '#AA6600' , 15  , 52  ]
let g:airline#themes#tr100#palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_visual, s:airline_c_visual)
let g:airline#themes#tr100#palette.visual_modified = {
      \ 'airline_c': [ '#0A0A0A' , '#CC7700' , 255, 53, ''],
      \ }


let s:airline_a_inactive = [ '#4e4e4e' , '#1c1c1c' , 239 , 234 , '' ]
let s:airline_b_inactive = [ '#4e4e4e' , '#262626' , 239 , 235 , '' ]
let s:airline_c_inactive = [ '#4e4e4e' , '#303030' , 239 , 236 , '' ]
let g:airline#themes#tr100#palette.inactive = airline#themes#generate_color_map(s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive)
let g:airline#themes#tr100#palette.inactive_modified = {
      \ 'airline_c': [ '#FF9900' , '' , 97 , '' , '' ] ,
      \ }

" For commandline mode, we use the colors from normal mode, except the mode
" indicator should be colored differently, e.g. light green
let s:airline_a_commandline = [ '#FF4444' , '#1A1A1A' , 17  , 40 ]
let s:airline_b_commandline = [ '#FFBB33' , '#333333' , 255 , 238 ]
let s:airline_c_commandline = [ '#AA6600' , '#1A1A1A' , 85  , 234 ]
let g:airline#themes#tr100#palette.commandline = airline#themes#generate_color_map(s:airline_a_commandline, s:airline_b_commandline, s:airline_c_commandline)
