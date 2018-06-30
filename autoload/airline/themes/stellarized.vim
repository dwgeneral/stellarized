if &background ==# 'light'
  let s:gry0 = '#fcf1e4'
  let s:gry1 = '#e4dacc'
  let s:gry2 = '#80818f'
  let s:gry3 = '#616170'
  let s:red_ = '#ea5a44'
  let s:orng = '#d07018'
  let s:gren = '#4d991b'
  let s:blue = '#008beb'
else
  let s:gry0 = '#282835'
  let s:gry1 = '#3a3b47'
  let s:gry2 = '#8a8074'
  let s:gry3 = '#aba194'
  let s:red_ = '#c87361'
  let s:orng = '#b87c4e'
  let s:gren = '#6d9353'
  let s:blue = '#5f87b7'
endif

" normal
"          [ guifg, guibg, ctermfg, ctermbg, opts ]
let s:N1 = [ s:gry0 , s:gry3 , 232 , 192 ] " mode
let s:N2 = [ s:gry0 , s:gry2 , 192 , 238 ] " info
let s:N3 = [ s:gry3 , s:gry1 , 192 , 235 ] " statusline
let s:N4 = [ s:orng , 113 ]                   " mode modified

" Insert mode
let s:I1 = [ s:gry0 , s:gren , 232 , 192 ] " mode
let s:I2 = [ s:gry0 , s:gry2 , 192 , 238 ] " info
let s:I3 = [ s:gry3 , s:gry1 , 192 , 235 ] " statusline
let s:I4 = [ s:orng , 113 ]                   " mode modified

" Visual mode
let s:V1 = [ '#141413' , '#B5D3F3' , 232 , 153 ]
let s:V2 = [ '#B5D3F3' , '#32322F' , 153 , 238 ]
let s:V3 = [ '#B5D3F3' , '#242424' , 153 , 235 ]
let s:V4 = [ '#7CB0E6' , 111 ]

" Replace mode
let s:R1 = [ '#141413' , '#E5786D' , 232 , 173 ]
let s:R2 = [ '#E5786D' , '#32322F' , 173 , 238 ]
let s:R3 = [ '#E5786D' , '#242424' , 173 , 235 ]
let s:R4 = [ '#E55345' , 203 ]

" Paste mode
let s:PA = [ '#94E42C' , 47 ]

" Info modified
let s:IM = [ '#40403C' , 238 ]

" Inactive mode
let s:IA = [ '#767676' , s:N3[1] , 243 , s:N3[3] , '' ]

let g:airline#themes#stellarized#palette = {}

let g:airline#themes#stellarized#palette.accents = {
      \ 'red': [ s:red_ , '' , 203 , '' , '' ],
      \ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#stellarized#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gry3 , s:gry0 , 253 , 234 , '' ] ,
      \ [ s:gry0 , s:gry3 , 253 , 238 , '' ] ,
      \ [ s:gry3 , s:gry0 , 232 , 253 , '' ] )






let g:airline#themes#stellarized#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#stellarized#palette.normal_modified = {
    \ 'airline_a': [ s:N1[0] , s:N4[0] , s:N1[2] , s:N4[1] , ''     ] ,
    \ 'airline_b': [ s:N4[0] , s:IM[0] , s:N4[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:N4[0] , s:N3[1] , s:N4[1] , s:N3[3] , ''     ] }


let g:airline#themes#stellarized#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#stellarized#palette.insert_modified = {
    \ 'airline_a': [ s:I1[0] , s:I4[0] , s:I1[2] , s:I4[1] , ''     ] ,
    \ 'airline_b': [ s:I4[0] , s:IM[0] , s:I4[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:I4[0] , s:N3[1] , s:I4[1] , s:N3[3] , ''     ] }


let g:airline#themes#stellarized#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#stellarized#palette.visual_modified = {
    \ 'airline_a': [ s:V1[0] , s:V4[0] , s:V1[2] , s:V4[1] , ''     ] ,
    \ 'airline_b': [ s:V4[0] , s:IM[0] , s:V4[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:V4[0] , s:N3[1] , s:V4[1] , s:N3[3] , ''     ] }


let g:airline#themes#stellarized#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#stellarized#palette.replace_modified = {
    \ 'airline_a': [ s:R1[0] , s:R4[0] , s:R1[2] , s:R4[1] , ''     ] ,
    \ 'airline_b': [ s:R4[0] , s:IM[0] , s:R4[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:R4[0] , s:N3[1] , s:R4[1] , s:N3[3] , ''     ] }


let g:airline#themes#stellarized#palette.insert_paste = {
    \ 'airline_a': [ s:I1[0] , s:PA[0] , s:I1[2] , s:PA[1] , ''     ] ,
    \ 'airline_b': [ s:PA[0] , s:IM[0] , s:PA[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:PA[0] , s:N3[1] , s:PA[1] , s:N3[3] , ''     ] }


let g:airline#themes#stellarized#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#stellarized#palette.inactive_modified = {
    \ 'airline_c': [ s:N4[0] , ''      , s:N4[1] , ''      , ''     ] }

