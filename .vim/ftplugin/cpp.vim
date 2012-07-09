" Generates ctags database
nmap <silent> <F12> :!ctags -R --c++-kinds=+p --exclude="*.css" --exclude="*.htm" --exclude="*.html" --exclude="*.txt" --extra=+q --fields=+iaS -h="..h.hpp.hxx.ipp" .<CR>

set path+=include/**/
set path+=/usr/include/**/
set path+=/usr/local/include/**/
set path+=**/
set tags+=/usr/include/**/tags
set tags+=/usr/local/include/**/tags
set tags+=**/tags

" if filereadable( './Jamfile' ) || filereadable( './Jamroot' ) || filereadable( './Jamfile.v2' )
"     set makeprg=bjam
" endif
