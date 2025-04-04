#Requires AutoHotkey v2.0

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
; FormatTime (Date)
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

;### 1 ##################################### 
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

;### 2 ##################################### 
:*:;2;;:: ; print the day after tomorrow in format
{
  SendInput FormatTime(DateAdd(A_Now, 2, "days"), "yyyyMMdd")
}

:*:;2//:: ; print the day after tomorrow in format
{
  SendInput FormatTime(DateAdd(A_Now, 2, "days"), "yyyy/MM/dd")
}

:*:;2jj:: ; print the day after tomorrow in Japanese format
{
  SendInput FormatTime(DateAdd(A_Now, 2, "days"), "yyyy年MM月dd日")
}

:*:;2/w:: ; print the day after tomorrow (days of the week) in format
{
  SendInput FormatTime(DateAdd(A_Now, 2, "days"), "yyyy/MM/dd(ddd)")
}

:*:;2jw:: ; print the day after tomorrow (days of the week) in Japanese format
{
  SendInput FormatTime(DateAdd(A_Now, 2, "days"), "yyyy年MM月dd日(ddd)")
}

;### 3 ##################################### 
:*:;3;;:: ; print 3 days from today in format
{
  SendInput FormatTime(DateAdd(A_Now, 3, "days"), "yyyyMMdd")
}

:*:;3//:: ; print 3 days from today in format
{
  SendInput FormatTime(DateAdd(A_Now, 3, "days"), "yyyy/MM/dd")
}

:*:;3jj:: ; print 3 days from today in Japanese format
{
  SendInput FormatTime(DateAdd(A_Now, 3, "days"), "yyyy年MM月dd日")
}

:*:;3/w:: ; print 3 days from today (days of the week) in format
{
  SendInput FormatTime(DateAdd(A_Now, 3, "days"), "yyyy/MM/dd(ddd)")
}

:*:;3jw:: ; print 3 days from today (days of the week) in Japanese format
{
  SendInput FormatTime(DateAdd(A_Now, 3, "days"), "yyyy年MM月dd日(ddd)")
}

;### 4 ##################################### 
:*:;4;;:: ; print 4 days from today in format
{
  SendInput FormatTime(DateAdd(A_Now, 4, "days"), "yyyyMMdd")
}

:*:;4//:: ; print 4 days from today in format
{
  SendInput FormatTime(DateAdd(A_Now, 4, "days"), "yyyy/MM/dd")
}

:*:;4jj:: ; print 4 days from today in Japanese format
{
  SendInput FormatTime(DateAdd(A_Now, 4, "days"), "yyyy年MM月dd日")
}

:*:;4/w:: ; print 4 days from today (days of the week) in format
{
  SendInput FormatTime(DateAdd(A_Now, 4, "days"), "yyyy/MM/dd(ddd)")
}

:*:;4jw:: ; print 4 days from today (days of the week) in Japanese format
{
  SendInput FormatTime(DateAdd(A_Now, 4, "days"), "yyyy年MM月dd日(ddd)")
}

;############################## 
; FormatTime (Time)
;############################## 

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

