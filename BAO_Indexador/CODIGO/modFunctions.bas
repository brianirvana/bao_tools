Attribute VB_Name = "modFunctions"
Option Explicit
'modFunctions - Programado por MaTeO - 19:20hs 13/05/2012
'Changelog (ultima modificacion 13/05/2012):
'13/05/2012 - Primer release de este modulo, este modulo le pondremos todas las funciones que encontremos y creemos, de programas externos u otro tipo.
'13/05/2012 - Agregado FileExist (Externo)
'13/05/2012 - Agregado Load_Settings y Save_Settings (By MaTeO)

Public Declare Function GetTickCount Lib "kernel32" () As Long
Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Public Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (ByRef dest As Any, ByRef Source As Any, ByVal byteCount As Long)
Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyname As Any, ByVal lpString As String, ByVal lpFileName As String) As Long
Private Declare Function getprivateprofilestring Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyname As Any, ByVal lpdefault As String, ByVal lpreturnedstring As String, ByVal nSize As Long, ByVal lpFileName As String) As Long

Function FileExist(ByRef file As String, ByVal FileType As VbFileAttribute) As Boolean
On Error GoTo err:
    FileExist = (Dir$(file, FileType) <> "")
Exit Function
err:
FileExist = False
End Function

Public Function Load_Settings(ByRef Key As String) As String
    Load_Settings = GetSetting("PlusIndex", "Info", Key)
End Function

Public Function Save_Settings(ByRef Key As String, ByRef Setting As String)
    Call SaveSetting("PlusIndex", "Info", Key, Setting)
End Function

Public Function FormsEnabled(localform As Form) As Boolean
    Dim mifrm As Form
    For Each mifrm In Forms
        If mifrm.Visible And localform.Name <> mifrm.Name Then
            FormsEnabled = True
            Exit For
        End If
    Next
End Function
Public Function UnloadAllForms() As Boolean
    Dim mifrm As Form
    
    For Each mifrm In Forms
        Unload mifrm
    Next
End Function

Public Sub WriteVar(ByRef file As String, ByRef Main As String, ByRef var As String, ByRef Value As String)
'*****************************************************************
'Writes a var to a text file
'*****************************************************************
    WritePrivateProfileString Main, var, Value, file
End Sub

Function GetVar(ByRef file As String, ByRef Main As String, ByRef var As String, Optional ByVal espacio As Long = 100) As String
'*****************************************************************
'Gets a Var from a text file
'*****************************************************************
    Dim sSpaces As String ' This will hold the input that the program will retrieve
    
    sSpaces = Space$(espacio) ' This tells the computer how long the longest string can be. If you want, you can change the number 100 to any number you wish
    
    getprivateprofilestring Main, var, vbNullString, sSpaces, Len(sSpaces), file
    
    GetVar = RTrim$(sSpaces)
    GetVar = Left$(GetVar, Len(GetVar) - 1)
End Function
Function ReadField(ByVal Pos As Integer, ByRef Text As String, ByVal SepASCII As Byte) As String
'*****************************************************************
'Gets a field from a delimited string
'Author: Juan Martín Sotuyo Dodero (Maraxus)
'Last Modify Date: 11/15/2004
'*****************************************************************
    Dim i As Long
    Dim LastPos As Long
    Dim CurrentPos As Long
    Dim delimiter As String * 1
    
    delimiter = Chr$(SepASCII)
    
    For i = 1 To Pos
        LastPos = CurrentPos
        CurrentPos = InStr(LastPos + 1, Text, delimiter, vbBinaryCompare)
    Next i
    
    If CurrentPos = 0 Then
        ReadField = Mid$(Text, LastPos + 1, Len(Text) - LastPos)
    Else
        ReadField = Mid$(Text, LastPos + 1, CurrentPos - LastPos - 1)
    End If
End Function
Public Function RangoValor(ByVal Valor As Long, ByVal min As Long, ByVal max As Long) As Boolean
    RangoValor = Valor >= min And Valor <= max
End Function
Public Function GetDirectionString(ByVal Heading As Byte) As String
'0=Norte
'1=Este
'2=Sur
'3=Oeste
Select Case Heading
    Case 0
        GetDirectionString = "Norte"
    Case 1
        GetDirectionString = "Este"
    Case 2
        GetDirectionString = "Sur"
    Case 3
        GetDirectionString = "Oeste"
End Select
End Function
