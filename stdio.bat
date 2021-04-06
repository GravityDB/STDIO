$JIT_PACKAGE IO


class stdio()

public static function stdout(data)
data = ASCII_STRING(data)
pointer = nul
$JIT_SETVIDEOMEMORY_ASCII
$JIT_RESETMEM &pointer $JIT_GETVIDEOMEMORY_ADDRESS
$JIT_RESERVE_VIDEO_MEMORY &pointer data.length()
iterate(char, data)
$INSERT_VIDEOMEMORY pointer char
pointer++
endit
endf

public static function clearScreen()
$JIT_CLEARVIDEOMEMORY
endf

public static function stdin()
data = nul
address = &data
while(true)
$JIT_RESETMEM address $JIT_CAPTURE system.physicalKeyboard
if( data[address] == "\n" )
break
endif
address++
endw

return String(&data, address)
endf

endc
