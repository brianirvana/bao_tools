Attribute VB_Name = "modApplication"
Option Explicit

''
' Retrieves the active window's hWnd for this app.
'
' @return Retrieves the active window's hWnd for this app. If this app is not in the foreground it returns 0.

Private Declare Function GetActiveWindow Lib "user32" () As Long

''
' Checks if this is the active (foreground) application or not.
'
' @return   True if any of the app's windows are the foreground window, false otherwise.

Public Function IsAppActive() As Boolean
'***************************************************
'Author: Juan Martín Sotuyo Dodero (maraxus)
'Last Modify Date: 03/03/2007
'Checks if this is the active application or not
'***************************************************
    IsAppActive = (GetActiveWindow <> 0)
End Function
