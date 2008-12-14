" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2002 Sep 19
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

set nobackup		" Do not keep a backup file, use versions instead
set history=100		" Keep 100 lines of command line history
set ruler		" Show the cursor position all the time
set showcmd		" Display incomplete commands
set incsearch		" Do incremental searching
set expandtab           " Tabs are replaced for spaces
set smartindent         " Smart indentation
set ic                  " Case ignoring

" Don't use Ex mode, use Q for formatting
map Q gq

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

"if has("autocmd")
"augroup content
"autocmd BufNewFile *.py
"\ $put = '#!/usr/bin/env python' |
"\ $put = '#-*- coding: utf-8 -*-' |
"\ $put = '' |
"\ $put = '' |
"endif

" Tab is replaced by 2, 4 or n spaces depending 
" on the file extension.
if has("autocmd")
  augroup content
  autocmd BufNewFile,BufRead *.rb  set tabstop=2
  autocmd BufNewFile,BufRead *.erb set tabstop=2
  autocmd BufNewFile,BufRead *.py  set tabstop=4
endif
