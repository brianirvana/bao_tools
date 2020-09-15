Attribute VB_Name = "modFunciones"
Public Declare Function getprivateprofilestring Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyname As Any, ByVal lpdefault As String, ByVal lpreturnedstring As String, ByVal nsize As Long, ByVal lpFileName As String) As Long

Function GetVar(ByVal file As String, ByVal Main As String, ByVal Var As String) As String
'*****************************************************************
'Gets a Var from a text file
'*****************************************************************
Dim sSpaces                     As String    ' This will hold the input that the program will retrieve

sSpaces = Space$(100)          ' This tells the computer how long the longest string can be. If you want, you can change the number 100 to any number you wish

    getprivateprofilestring Main, Var, vbNullString, sSpaces, Len(sSpaces), file

    GetVar = RTrim$(sSpaces)
    GetVar = Left$(GetVar, Len(GetVar) - 1)
End Function

Function ReadField(ByVal Pos As Integer, ByRef Text As String, ByVal SepASCII As Byte) As String
'*****************************************************************
'Gets a field from a delimited string
'Author: Juan Martín Sotuyo Dodero (Maraxus)
'Last Modify Date: 11/15/2004
'*****************************************************************
Dim i                           As Long
Dim lastPos                     As Long
Dim CurrentPos                  As Long
Dim delimiter                   As String * 1

    delimiter = Chr$(SepASCII)

    For i = 1 To Pos
        lastPos = CurrentPos
        CurrentPos = InStr(lastPos + 1, Text, delimiter, vbBinaryCompare)
    Next i

    If CurrentPos = 0 Then
        ReadField = Mid$(Text, lastPos + 1, Len(Text) - lastPos)
    Else
        ReadField = Mid$(Text, lastPos + 1, CurrentPos - lastPos - 1)
    End If
End Function
