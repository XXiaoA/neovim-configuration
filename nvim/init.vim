" 基础设置
lua require("basic")
" 快捷键映射
lua require('keybindings')
" Packer插件管理
lua require('plugins')

"一键编译{{{
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec '!clang "%" -o "%<"'
        exec '!./"%<"'
    elseif &filetype == 'cpp'
        exec '!g++ "%" -o "%<"'
        exec '!./"#<"'
    elseif &filetype == 'python'
        exec '!time python3 "%"'
    elseif &filetype == 'pyc'
        exec '!time python3 "%"'
    elseif &filetype == 'java'
        exec '!javac "%"'
        exec '!java "%<"'
    elseif &filetype == 'javascript'
        exec '!node "%"'
    elseif &filetype == 'sh'
        exec '!sh "%"'
    endif
endfunc!"}}}

set background=dark
" colorscheme gruvbox
colorscheme zephyr

" 插件配置
lua require('plugin-config/nvim-tree')
lua require('plugin-config/bufferline')
lua require('plugin-config/nvim-treesitter')
lua require('plugin-config/Comment')
