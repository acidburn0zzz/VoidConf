function TestIt()
    echo "test!"
endfunction

lua <<EOF
    function LuaDoItLua()
        print("nvim-example-lua-plugin.vim LuaDoItLua(): hello")
    end

    print "nvim-example-lua-plugin.vim: Lua code executing."
EOF

nnoremap <leader>tt :call TestIt()<cr>
nnoremap <leader>m :source %<cr>
