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

:*:;;;:: ; print today in format
{
  SendInput FormatTime(, "yyyyMMdd")
}

:*:;//:: ; print today in format
{
  SendInput FormatTime(, "yyyy/MM/dd")
}

:*:;jj:: ; print today in Japanese format
{
  SendInput FormatTime(, "yyyy年MM月dd日")
}

:*:;/w:: ; print today (days of the week) in format
{
  SendInput FormatTime(, "yyyy/MM/dd(ddd)")
}

:*:;jw:: ; print today (days of the week) in Japanese format
{
  SendInput FormatTime(, "yyyy年MM月dd日(ddd)")
}

:*:;1;;:: ; print tomorrow in format
{
  SendInput FormatTime(DateAdd(A_Now, 1, "days"), "yyyyMMdd")
}

:*:;1//:: ; print tomorrow in format
{
  SendInput FormatTime(DateAdd(A_Now, 1, "days"), "yyyy/MM/dd")
}

:*:;1jj:: ; print tomorrow in Japanese format
{
  SendInput FormatTime(DateAdd(A_Now, 1, "days"), "yyyy年MM月dd日")
}

:*:;1/w:: ; print tomorrow (days of the week) in format
{
  SendInput FormatTime(DateAdd(A_Now, 1, "days"), "yyyy/MM/dd(ddd)")
}

:*:;1jw:: ; print tomorrow (days of the week) in Japanese format
{
  SendInput FormatTime(DateAdd(A_Now, 1, "days"), "yyyy年MM月dd日(ddd)")
}

:*:;/s:: ; print current date and time in format
{
  SendInput FormatTime(, "yyyy/MM/dd HH:mm:ss")
}

:*:;/m:: ; print current date and time in format
{
  SendInput FormatTime(, "yyyy/MM/dd HH:mm")
}

:*::ss:: ; print current time in format
{
  SendInput FormatTime(, "H:mm:ss")
}

:*::mm:: ; print current time in format
{
  SendInput FormatTime(, "H:mm")
}

