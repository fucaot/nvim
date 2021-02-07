
let  g:startify_bookmarks = [ {'v': '~/.vimrc'}, {'z': '~/.zshrc'} ]

let g:startify_commands = [
			\ {'o': ['Find files', 'Files']},
			\ {'a': ['global search', 'Ag']},
			\ ]

" function s:foobar()
"     return [
"       \ { 'line': 'Find files', 'cmd': 'Files' },
"       \ { 'line': 'global search', 'cmd': 'Ag' },
"       \ ]
" endfunction

" \ { 'type': function('s:foobar'), 'header': ['define'] },


let g:startify_lists = [
			\ { 'type': 'files', 'header': ['MRU:'] },
            \ { 'type': 'sessions',  'header': ['   Sessions']},
			\ { 'type': 'bookmarks', 'header': ['Bookmarks'] },
			\ { 'type': 'commands', 'header': ['Commands'] },
			\ ]

"           \ { 'type': 'dir', 'header': ['MRU '. getcwd()] },

