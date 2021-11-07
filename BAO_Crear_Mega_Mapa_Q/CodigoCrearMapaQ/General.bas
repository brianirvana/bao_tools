Attribute VB_Name = "General"
Option Explicit

Public bMap                     As Byte

Sub Main()

Dim sInput                      As String

    sInput = Command$
    bMap = Val(sInput) 'Mapa actual.
    
    frmMain.Show
    
    Call frmMain.Click
    
End Sub

Function FileExist(ByVal File As String, ByVal FileType As VbFileAttribute) As Boolean

    FileExist = (Dir$(File, FileType) <> "")

End Function
