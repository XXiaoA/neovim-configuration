" 搜索插件
let g:dashboard_default_executive ='telescope'
"SPC mean the leaderkey
let g:dashboard_custom_shortcut={
\ 'change_colorscheme' : 'SPC t c',
\ 'find_word'          : 'SPC f a',
\ 'book_marks'         : 'SPC f b',
\ 'find_file'          : 'SPC f f',
\ 'find_history'       : 'SPC f r',
\ 'last_session'       : 'SPC s l',
\ 'new_file'           : 'SPC f n',
\ }

" 不显示缩进线
let g:indentLine_fileTypeExclude = ['dashboard']

" 开头文字
       " \split(system('figlet -w 1000000 XXiaoA'), '\n')
let g:dashboard_custom_header =
            \split(system('cat $HOME/.config/nvim//XXioaA.cat'), '\n')
" let g:dashboard_custom_shortcut_icon['last_session'] = ' '
" let g:dashboard_custom_shortcut_icon['find_history'] = 'ﭯ '
" let g:dashboard_custom_shortcut_icon['find_file'] = ' '
" let g:dashboard_custom_shortcut_icon['new_file'] = ' '
" let g:dashboard_custom_shortcut_icon['change_colorscheme'] = ' '
" let g:dashboard_custom_shortcut_icon['find_word'] = ' '
" let g:dashboard_custom_shortcut_icon['book_marks'] = ' '
