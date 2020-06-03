"{} for movement
"diw/daw
"ze spelling suggestions
"<n> zF for folds
"z= spelling suggestions 
"zf<move> for folding>
"za open fold 
"zc close fold
"() and {} with di() and di () also da() ....
"'' where you were a second ago
". the last thing you did
"R replace mode
"^n for completion
"Hex sex and Lex
"% for moving back and forth between () {} []

syntax on
set nocompatible
set ts=4
set shiftwidth=4
set hlsearch

let mapleader = " "
"tab and window/split management
map <leader>, : tabN <LF>
map <leader>. : tabn <LF>
map <leader>e : Explore <LF>
map <leader>s : vsplit new <LF>
map <leader>S : split new <LF>
map <leader>t : tabe <LF>
map <leader>l : set list! <LF>
map <leader>SS : set spell! <LF>


" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" Shortcuts for split resizeing
map <C-J> : vertical resize +1 <LF>
map <C-K> : vertical resize -1 <LF>

" Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>

function Phpmode()
    filetype plugin indent on
    set tabstop=8 softtabstop=0 expandtab  shiftwidth=4  smarttab
endfunction

autocmd BufEnter *.php call Phpmode()
autocmd BufEnter *.js call Phpmode()
autocmd BufEnter *.html call Phpmode()
autocmd BufEnter *.css call Phpmode()
colorscheme torte
