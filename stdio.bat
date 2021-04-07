package IO

class stdio()
  public static function stdout(data)
    $SYSTEM_SET_ASCII_VIDEO_MODE
    $SET_ACCESS VIDEO_MEMORY
    $RESERVEMEM data.length
    
    size = systemC("$RESERVEMEM_SIZE")
    iterate(ch, data)
      $MEM_PUSH size ch
      size++
    endi
    
    $TRIGGER_VIDEO_MODE_ON
    
  endf
  

endc
