Attribute VB_Name = "modFunciones"
Option Explicit

Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyname As Any, ByVal lpdefault As String, ByVal lpreturnedstring As String, ByVal CrcKey As Long, ByVal CrcString As String) As Long
Public Declare Function recv Lib "wSock32.dll" (ByVal S As Long, ByRef buf As Any, ByVal bufLen As Long, ByVal flags As Long) As Long
Public GetVarBuf As String
Public Const GetVarBufTam As Long = 3000

Public Sub IniciarHarcodeo()
    GetVarBuf = String(GetVarBufTam, 0)
End Sub

#If Optimizar = 0 Then
Function GetVar(ByRef File As String, ByRef Main As String, ByRef var As String, Optional EmptySpaces As Long = 1024) As String

Dim sSpaces                     As String ' This will hold the input that the program will retrieve
Dim szReturn                    As String ' This will be the defaul value if the string is not found
  
    szReturn = vbNullString
    sSpaces = Space$(EmptySpaces) ' This tells the computer how long the longest string can be
    GetPrivateProfileString Main, var, szReturn, sSpaces, EmptySpaces, File
    GetVar = RTrim$(sSpaces)
    GetVar = Left$(GetVar, Len(GetVar) - 1)
  
End Function
#End If


Function FileExist(ByRef File As String, Optional FileType As VbFileAttribute = vbNormal) As Boolean
      '*****************************************************************
      'Se fija si existe el archivo
      '*****************************************************************
   On Error GoTo FileExist_Error

10        FileExist = LenB(Dir$(File, FileType)) <> 0

   On Error GoTo 0
   Exit Function

FileExist_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure FileExist of Módulo modFunciones"
End Function


Function ReadField(ByVal Pos As Integer, ByRef Text As String, ByVal SepASCII As Byte) As String
      '*****************************************************************
      'Gets a field from a string
      'Author: Juan Martín Sotuyo Dodero (Maraxus)
      'Last Modify Date: 11/15/2004
      'Gets a field from a delimited string
      '*****************************************************************
          Dim i As Long
          Dim lastPos As Long
          Dim CurrentPos As Long
          Dim delimiter As String * 1
          
   On Error GoTo ReadField_Error

10        delimiter = Chr$(SepASCII)
          
20        For i = 1 To Pos
30            lastPos = CurrentPos
40            CurrentPos = InStr(lastPos + 1, Text, delimiter, vbBinaryCompare)
50        Next i
          
60        If CurrentPos = 0 Then
70            ReadField = mid$(Text, lastPos + 1, Len(Text) - lastPos)
80        Else
90            ReadField = mid$(Text, lastPos + 1, CurrentPos - lastPos - 1)
100       End If

   On Error GoTo 0
   Exit Function

ReadField_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ReadField of Módulo modFunciones"
End Function
