#Requires AutoHotkey v2.0

#include include/Hotkeys.ahk
#include include/Hotstrings.ahk

autorunFolderPath := "autorun" ; フォルダのパスを指定
Loop Files autorunFolderPath "\*.ahk" ; フォルダ内のすべてのファイルをループ
{
    Run autorunFolderPath "\" A_LoopFileName  ; 各ファイル名を改行で追加
}
