let s:save_cpo = &cpoptions
set cpoptions&vim

function! vimfm#util#normalize_path(path) abort
  if a:path ==? '/'
    return '/'
  endif

  let result = resolve(a:path)
  " Remove trailing path separator
  return (match(result, '\(/\|\\\)$') >= 0)
        \ ? fnamemodify(result, ':h')
        \ : result
endfunction

function! vimfm#util#get_last_component(path, is_dir) abort
  return a:is_dir
        \ ? fnamemodify(a:path, ':t')
        \ : fnamemodify(a:path, ':p:t')
endfunction

function! vimfm#util#echo_error(message) abort
  echohl Error
  echomsg a:message
  echohl None
endfunction

let &cpoptions = s:save_cpo
unlet s:save_cpo
