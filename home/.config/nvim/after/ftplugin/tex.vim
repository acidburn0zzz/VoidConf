"-------------------------=[ Functions ]=----------------------"
let g:which_key_map.t = {
                        \ 'name' : '+Tex' ,
                        \ 'p' : [':LLPStartPreview'  , 'Preview of .tex file'],
                        \ "b" : ["BuildTexFile()", "Build current .tex file"],
                        \ }

" Extract Variable
function! BuildTexFile()
    let var = expand('%:t')
    execute ":!xelatex ".var."\<CR>"
endfunction
