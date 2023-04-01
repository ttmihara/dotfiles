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
  Run "everything" 
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


;############################## 
; HotStrings
;############################## 

::***::******************************

::---::------------------------------

::===::==============================

::###::{Raw}##############################

:*:@dd:: ; print current time in format
{
  SendInput FormatTime(, "yyyy/MM/dd(ddd)")
}
