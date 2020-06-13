" A mock driver written purely for testing.
let s:test = {}

func! s:test.is_supported() abort
  return get(g:, 'zcd#test_driver#exists', 0)
endfunc

func! s:test.query(...) abort
  return get(g:, 'zcd#test_driver#results', [])
endfunc

func! zcd#drivers#test#() abort
  return deepcopy(s:test)
endfunc