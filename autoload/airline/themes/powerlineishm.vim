function! AddAirlinePowerlineTheme()
  " modified from Powerlineish theme
  " replaced normal <-> insert
  "
  " Insert mode                                    " fg             & bg
  let l:I1 = [ '#005f00' , '#afd700' , 22  , 148 ] " darkestgreen   & brightgreen
  let l:I2 = [ '#9e9e9e' , '#303030' , 247 , 236 ] " gray8          & gray2
  let l:I3 = [ '#ffffff' , '#121212' , 231 , 233 ] " white          & gray4

  " Normal mode                                    " fg             & bg
  let l:N1 = [ '#005f5f' , '#ffffff' , 23  , 231 ] " darkestcyan    & white
  let l:N2 = [ '#5fafd7' , '#0087af' , 74  , 31  ] " darkcyan       & darkblue
  let l:N3 = [ '#87d7ff' , '#005f87' , 117 , 24  ] " mediumcyan     & darkestblue

  " Visual mode                                    " fg             & bg
  let l:V1 = [ '#080808' , '#ffaf00' , 232 , 214 ] " gray3          & brightestorange

  " Replace mode                                   " fg             & bg
  let l:RE = [ '#ffffff' , '#d70000' , 231 , 160 ] " white          & brightred

  let g:airline#themes#powerlineishm#palette = {}
  let g:airline#themes#powerlineishm#palette.normal = airline#themes#generate_color_map(l:N1, l:N2, l:N3)
  let g:airline#themes#powerlineishm#palette.insert = airline#themes#generate_color_map(l:I1, l:I2, l:I3)
  let g:airline#themes#powerlineishm#palette.insert_replace = {
        \ 'airline_a': [ l:RE[0]   , l:I1[1]   , l:RE[1]   , l:I1[3]   , ''     ] }

  let g:airline#themes#powerlineishm#palette.visual = {
        \ 'airline_a': [ l:V1[0]   , l:V1[1]   , l:V1[2]   , l:V1[3]   , ''     ] }

  let g:airline#themes#powerlineishm#palette.replace = copy(airline#themes#powerlineishm#palette.normal)
  let g:airline#themes#powerlineishm#palette.replace.airline_a = [ l:RE[0] , l:RE[1] , l:RE[2] , l:RE[3] , '' ]


  let l:IA = [ l:N2[1] , l:N3[1] , l:N2[3] , l:N3[3] , '' ]
  let g:airline#themes#powerlineishm#palette.inactive = airline#themes#generate_color_map(l:IA, l:IA, l:IA)

endfunction
call AddAirlinePowerlineTheme()


