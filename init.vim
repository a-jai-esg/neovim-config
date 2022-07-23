" Inertia Neovim config
" Please install git first and python2 before starting

:colorscheme strawberry-light
:let g:airline_theme = 'violet'
:set termguicolors
:let g:airline_powerline_fonts = 1
:set title
:set number
:set relativenumber
:set autoindent
:set cmdheight=1
:set shiftwidth=4
:set smarttab
:set mouse=a
:set softtabstop=4
:set tabstop=4
:set noshowmode
:set encoding=utf8

" Plug Plugin Manager
call plug#begin('~/.config/nvim/')

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Tabnine



" End Tabnine


"set list listchars=tab:>\ ,trail:^,eol:¶
:set list listchars=tab:>\ ,trail:^
":set list listchars=tab:>\ ,trail:^,eol:$
:set whichwrap+=<,>,[,]

inoremap <S-Tab> <C-d>

if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[5 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[3 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

if has('autocmd')
    augroup coloroverride
        autocmd!
        autocmd colorscheme * highlight LineNr guibg=#f4c2c2 " Override LineNr
        autocmd colorscheme * highlight LineNr guifg=#333333" Override CursorLineNr
    augroup END
endif
silent! colorscheme strawberry-light " Custom color scheme


