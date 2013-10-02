" .vimrc
set nocompatible
set backspace=2

" Bootstrap Vundle
let vundle_ready = 1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    let vundle_ready = 0
    echo 'Found that Vundle is not installed. Installing...'
    echo
    silent !mkdir ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
endif

" Vundle bundles
set rtp+=~/.vim/bundle/vundle/
let g:vundle_default_git_proto = 'https'
call vundle#rc()

" Language plugins
Bundle 'gmarik/vundle'
Bundle 'rodjek/vim-puppet'

" Other plugins
Bundle 'godlygeek/tabular'
Bundle 'mhinz/vim-signify'

" If Vundle was just installed, auto-install bundles
if vundle_ready == 0
    echo 'Installing bundles...'
    echo
    :BundleInstall
endif

" General settings
filetype indent plugin on
syntax on
set nonu
set hls
set ruler
set modeline modelines=99999 " Override OS X default of no modelines

" Default tab/indent settings
set tabstop=8 shiftwidth=4 softtabstop=4 expandtab smarttab autoindent

" Custom highlighting rules
highlight OverLength ctermbg=red ctermfg=white

" Python-specific
" See PEP 8 (Style Guide) at http://www.python.org/dev/peps/pep-0008/
au FileType python setlocal tabstop=8 expandtab shiftwidth=4 softtabstop=4
au FileType python match OverLength /\%>79v.\+/

" Ruby-specific
au FileType ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
au FileType ruby match OverLength /\%>79v.\+/

" Fix Markdown filetype detection
au BufRead,BufNewFile *.md set filetype=markdown

" vim-signify options
highlight SignColumn                       ctermbg=none
highlight DiffAdd               cterm=bold ctermbg=none ctermfg=2
highlight DiffDelete            cterm=bold ctermbg=none ctermfg=1
highlight DiffChange            cterm=bold ctermbg=none ctermfg=3
highlight SignifySignAdd        cterm=bold ctermbg=none  ctermfg=2
highlight SignifySignDelete     cterm=bold ctermbg=none  ctermfg=1
highlight SignifySignChange     cterm=bold ctermbg=none  ctermfg=3
