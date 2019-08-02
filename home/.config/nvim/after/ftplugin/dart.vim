"-------------------------=[ General ]=----------------------"
set formatoptions-=cro
let dart_html_in_string=v:true
let dart_corelib_highlight=v:false
let dart_style_guide = 2
let dart_format_on_save = 1
let g:loaded_syntastic_dart_dartanalyzer_checker = 0 "Improve speed

autocmd BufWrite * :silent !dartfmt " AutoFormat on file save
autocmd BufWrite * :silent !pgrep -f flutter_tool | xargs kill -s USR1 " Hot Reload when file save

" F5-F12 are free. (except F11)
nmap <F5> :call RunEmulator()<CR>
nmap <F6> :AsyncRun cd ../; flutter run " Run Flutter application
nmap <F7> :call HotReload()<CR>
nmap <F8> :call HotRestart()<CR>

"-------------------------=[ Functions ]=----------------------"
function! HotReload()
    execute ":silent !pgrep -f flutter_tool | xargs kill -s USR1"
endfunction

function! HotRestart()
    execute ":silent !pgrep -f flutter_tool | xargs kill -s USR2"
endfunction

function! RunEmulator()
	let devices = split(system('VBoxManage list vms'), '\n') "You can use systemlist() function too.
    let i = 0
	for dev in devices
		echo i . ". " . dev
        let i = i + 1
	endfor

    :let input = inputdialog("Enter your device number: ")
    if input
        let device = split(devices[input], '{')
        let full_device_name = '{'.device[1]
        exe ":AsyncRun genymotion-player --args --vm-name ".full_device_name
    endif
endfunction

" To-do
" 1. Run app from everywhere
" 2. Run app after run emulator

"******* Garbage *******"
" map <F7> :AsyncRun wmctrl -r bash -N flutter_emulator; wmctrl -a flutter_emulator; sleep 1 &&  xdotool type "cd .." && xdotool key Return && xdotool flutter run && xdotool key Return<CR>
" map <F6> :AsyncRun genymotion-player --args --vm-name {6da9c166-b8c4-4e7f-ae30-8a79f82e97d6}<CR>
"     exe "normal! O\<BS>".rType." ".name."()\<CR>{\<Esc>"
"     :echo len(var)
