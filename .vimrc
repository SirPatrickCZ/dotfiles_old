set encoding=utf-8
set nocompatible
syntax on
set nu
nnoremap <silent><F2> :set rnu!<CR>
nnoremap <silent><F3> :set nu!<CR>
set clipboard=unnamed
set noswapfile
"set hlsearch
hi Comment	 ctermfg=cyan
hi Constant	 ctermfg=magenta
hi Special	 ctermfg=brown
hi LineNr	 ctermfg=grey
hi Statement	 ctermfg=yellow
filetype plugin on
" vimwiki/vimwiki
let g:vimwiki_list = [{'path': '~/Dropbox/Notes/', 'syntax': 'markdown', 'ext': '.md'}]

