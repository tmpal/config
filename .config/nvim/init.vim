"set termguicolors
colorscheme gruvbox

set tabstop=4
set shiftwidth=4
set expandtab
set ignorecase
set smartcase
set noswapfile
set autoindent
set cindent
set cursorline
syntax on

set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set colorcolumn=120
set number
set showmode
set showcmd
set equalalways

function! NoExtNewFile()                                                                                                
    if getline(1) =~ "^#!.*/bin/"                                                                                       
        if &filetype == ""                                                                                              
            filetype detect                                                                                             
        endif                                                                                                           
        silent !chmod a+x <afile>                                                                                       
    endif                                                                                                               
endfunction  
" coc vim stuff
inoremap <silent><expr> <TAB>                                                                                           
      \ pumvisible() ? "\<C-n>" :                                                                                       
      \ <SID>check_back_space() ? "\<TAB>" :                                                                            
      \ coc#refresh()                                                                                                   
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"                                                               
                                                                                                                        
function! s:check_back_space() abort                                                                                    
  let col = col('.') - 1                                                                                                
  return !col || getline('.')[col - 1]  =~# '\s'                                                                        
endfunction  
