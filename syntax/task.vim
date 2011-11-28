if exists("b:current_syntax")
  finish
endif

" syntax keyword taskKeyword New new Working working Done done Todo TODO todo

syntax match taskHeader "----" contained
syntax match taskSubHeaderIcon "^\s*@.*" contained
syntax match taskWorkingIcon "^\s*-TODO" contained
syntax match taskDoneIcon "^\s*\*DONE" contained

syntax match taskHeaderItem "^\s*----\s.*\s----$" contains=taskHeader
syntax match taskAnswerItem "^\s*@.*" contains=taskSubHeaderIcon
syntax match taskWorkingItem "^\s*-TODO.*" contains=taskWorkingIcon
syntax match taskDoneItem "^\s*\*DONE.*" contains=taskDoneIcon

highlight taskHeader guifg=#4183C4 guibg=NONE gui=NONE ctermfg=blue ctermbg=NONE cterm=NONE
highlight taskHeaderItem guifg=#4183C4 guibg=NONE gui=NONE ctermfg=blue ctermbg=NONE cterm=NONE

highlight taskWorkingItem guifg=#f6f3e8 guibg=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
highlight taskDoneItem guifg=#A8FF60 guibg=NONE gui=italic ctermfg=green ctermbg=NONE cterm=NONE

highlight taskWorkingIcon guifg=#FF6C60 guibg=NONE gui=NONE ctermfg=red ctermbg=NONE cterm=NONE
highlight taskDoneIcon guifg=#A8FF60 guibg=NONE gui=italic ctermfg=green ctermbg=NONE cterm=NONE

highlight taskSubHeaderIcon guifg=#F2C81F guibg=NONE gui=NONE ctermfg=yellow ctermbg=NONE ctermbg=NONE

syntax match sectionTitleLine "^.*:\s*$" contains=sectionTitle
syntax match sectionTitle "\S.*:\s*$"
highlight sectionTitle guifg=white guibg=#51ABFF gui=bold,underline ctermfg=blue ctermbg=NONE cterm=bold,underline

syntax match url "http:\/\/.*$"
highlight url guifg=#845526 gui=underline

let b:current_syntax = "task"
