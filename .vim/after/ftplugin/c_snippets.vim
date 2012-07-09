if !exists('loaded_snippet') || &cp
    finish
endif

function! Count(haystack, needle)
    let counter = 0
    let index = match(a:haystack, a:needle)
    while index > -1
        let counter = counter + 1
        let index = match(a:haystack, a:needle, index+1)
    endwhile
    return counter
endfunction

function! CArgList(count)
    " This returns a list of empty tags to be used as 
    " argument list placeholders for the call to printf
    let st = g:snip_start_tag
    let et = g:snip_end_tag
    if a:count == 0
        return ""
    else
        return repeat(', '.st.et, a:count)
    endif
endfunction

let st = g:snip_start_tag
let et = g:snip_end_tag
let cd = g:snip_elem_delim

exec "Snippet do do {<CR><Tab>".st.et."<CR>}<CR>while( ".st.et." );"
exec "Snippet while while( ".st.et." ) {<CR><Tab>".st.et."<CR>}"
exec "Snippet if if( ".st.et." ) {<CR><Tab>".st.et."<CR>}"
exec "Snippet ifelse if( ".st.et." ) {<CR><Tab>".st.et."<CR>}<CR>else {<CR><Tab>".st.et."<CR>}"
exec "Snippet for for( ".st."int".et." ".st."i".et." = ".st."0".et."; ".st."i".et." < ".st."count".et."; ++".st."i".et." ) {<CR><Tab>".st.et."<CR>}"
exec "Snippet try try {<CR><Tab>".st.et."<CR>}<CR>catch( ".st."exception".et." ) {<CR><Tab>".st.et."<CR>}"
exec "Snippet catch catch( ".st."exception".et." ) {<CR><Tab>".st.et."<CR>}"

exec "Snippet usi using namespace ".st.et
exec "Snippet class class ".st."name".et." {<CR>public:<CR><Tab>".st."name".et."();<CR><Tab>virtual ~".st."name".et."();<CR><CR>private:<CR><Tab>".st.":D('/* data */')".et."<CR>};<Tab>//<Tab>class ".st."name".et
exec "Snippet struct struct ".st."name".et." {<CR><Tab>".st.et."<CR>};<Tab>//<Tab>struct ".st."name".et
exec "Snippet namespace namespace ".st."ns".et." {<CR>".st.et."<CR>}<Tab>//<Tab>namespace ".st."ns".et
exec "Snippet template template<typename ".st."InputIter".et."><CR>".st.et

exec "Snippet scout std::cout << ".st.et." << std::endl;"
exec "Snippet scerr std::cerr << ".st.et." << std::endl;"
exec "Snippet cout cout << ".st.et." << endl;"
exec "Snippet cerr cerr << ".st.et." << endl;"
exec "Snippet sformat std::cout << boost::format( ".st.et." ) % ".st.et." << std::endl;"
exec "Snippet format cout << format( ".st.et." ) % ".st.et." << endl;"
exec "Snippet begin ".st."c".et.".begin(), ".st."c".et.".end()".st.et
exec "Snippet vector std::vector<".st."char".et."> ".st.et.";"
exec "Snippet map std::map<".st."key".et.", ".st."value".et."> ".st.et.";"
exec "Snippet main int main( int argc, char* argv[] ) {<CR><Tab>".st.et."<CR><CR><Tab>return 0;<CR>}<CR>"
exec "Snippet testsuite #include <boost/test/auto_unit_test.hpp><CR><CR>BOOST_AUTO_TEST_SUITE( ".st."name".et."_test_suite )<CR><CR>".st.et."<CR><CR>BOOST_AUTO_TEST_SUITE_END()"
exec "Snippet testcase BOOST_AUTO_TEST_CASE( ".st."name".et."_test".st.et." ) {<CR><Tab>".st.et."<CR>}"
exec "Snippet ftestcase BOOST_FIXTURE_TEST_CASE( ".st."name".et."_test".st.et.", ".st."fixture".et." ) {<CR><Tab>".st.et."<CR>}"
exec "Snippet cheq BOOST_CHECK_EQUAL( ".st."actual".et.", ".st."expected".et." );"
exec "Snippet func ".st."void".et." ".st."func".et."( ".st.et." ) {<CR><Tab>".st.et."<CR>}"

exec "Snippet tut #include<tut.h><CR><CR>namespace tut {<CR><CR>struct ".st."name".et."_fixture {<CR>};<Tab>//<Tab>struct ".st."name".et."_fixture<CR><CR>typedef test_group<".st."name".et."_fixture> ".st."name".et."_test_group;<CR><CR>".st."name".et."_test_group ".st."name".et."_tests( \"".st."desc".et."\" );<CR><CR>typedef ".st."name".et."_test_group::object test_base;<CR><CR>template<> template<><CR>void test_base::test<1>() {<CR><Tab>".st.et."<CR>}<CR><CR>}<Tab>//<Tab>namespace tut"
exec "Snippet tutcase template<> template<><CR>void test_base::test<".st.et.">() {<CR><Tab>set_test_name( \"".st.et."\" );<CR><Tab>fail( \"** TEST CASE NOT IMPLEMENTED YET **\" );<CR>}"

exec "Snippet once #ifndef ".st."file".et."<CR>#define ".st."file".et."<CR><CR>".st.et."<CR><CR>#endif<Tab>//<Tab>".st."file".et
exec "Snippet Inc #include <".st.et.">"
exec "Snippet inc #include \"".st."".et."\""
