x := 1920 ; x = horizontal res of display
y := 1080 ; y = vertical res of display
shutdownTime := "16:00" ; shutdownTime = time when you want to shut the pc down (24-hour format)
toggle := false ; initialize toggle to false

F10:: ; change F10 to any desired hotkey
 toggle := !toggle ; flip boolean value to turn on/off script
 if toggle {
  Gosub, MoveCursor
 }
 else {
  SetTimer, MoveCursor, off
  MsgBox Script is paused. ; add MsgBox to show when script is not running
 }
return
  
MoveCursor:
 currentTime := A_Hour ":" A_Min ; get current time
 if (currentTime >= shutdownTime) ; shut down pc if it is past shutdown time
  Shutdown 1
 Random, new_x, 1, x ; create new x position
 Random, new_y, 1, y ; create new y position
 MouseMove, new_x, new_y ; move cursor to new x/y position
 SetTimer, MoveCursor, -300000 ; repeat once, interval is in ms (currently set to ~5 mins)
return
