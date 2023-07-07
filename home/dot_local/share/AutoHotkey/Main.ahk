;############################## 
; HotKeys
;############################## 

^!t:: ; Ctrl + Alt + t
{
  Run "wt" ; Windows-Terminal
  return
}

^!f:: ; Ctrl + Alt + f
{
  Run "everything", , "Hide" 
  return
}

; [Command-line switches for Microsoft Office products]
; (https://support.microsoft.com/en-us/office/command-line-switches-for-microsoft-office-products-079164cd-4ef5-4178-b235-441737deb3a6)
#+x:: ; Win + Shift + x
{
  Run "excel.exe /x" ; Start MS Excel in a current virtual desktop
}

#+w:: ; Win + Shift + w
{
  Run "winword.exe /x" ; Start MS Word in a current virtual desktop
}

#+p:: ; Win + Shift + p
{
  Run "powerpnt.exe"
}

#+o:: ; Win + Shift + o
{
  Run "outlook.exe"
}

#+a:: ; Win + Shift + a
{
  Run "msaccess.exe"
}

#h:: ; Win + h
{
  WinMinimize "A" ; Minimize the active window
}


;############################## 
; HotStrings
;############################## 

; 40 letters
::****::****************************************

::----::----------------------------------------

::====::========================================

::////::////////////////////////////////////////

::####::{Raw}########################################

::++++::{Raw}++++++++++++++++++++++++++++++++++++++++


;############################## 
; FormatTime
;############################## 

:*:;;;:: ; print current date in format
{
  SendInput FormatTime(, "yyyyMMdd")
}

:*:;//:: ; print current date in format
{
  SendInput FormatTime(, "yyyy/MM/dd")
}

:*:;jj:: ; print current date in Japanese format
{
  SendInput FormatTime(, "yyyy年MM月dd日")
}

:*:;/w:: ; print current date (days of the week) in format
{
  SendInput FormatTime(, "yyyy/MM/dd(ddd)")
}

:*:;jw:: ; print current date (days of the week) in Japanese format
{
  SendInput FormatTime(, "yyyy年MM月dd日(ddd)")
}

:*:;/s:: ; print current date and time in format
{
  SendInput FormatTime(, "yyyy/MM/dd HH:mm:ss")
}

:*:;/m:: ; print current date and time in format
{
  SendInput FormatTime(, "yyyy/MM/dd HH:mm")
}

:*::s:: ; print current time in format
{
  SendInput FormatTime(, "H:mm:ss")
}

:*::m:: ; print current time in format
{
  SendInput FormatTime(, "H:mm")
}
