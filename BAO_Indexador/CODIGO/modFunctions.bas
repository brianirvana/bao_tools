Attribute VB_Name = "modFunctions"
Option Explicit
'modFunctions - Programado por MaTeO - 19:20hs 13/05/2012
'Changelog (ultima modificacion 13/05/2012):
'13/05/2012 - Primer release de este modulo, este modulo le pondremos todas las funciones que encontremos y creemos, de programas externos u otro tipo.
'13/05/2012 - Agregado FileExist (Externo)
'13/05/2012 - Agregado Load_Settings y Save_Settings (By MaTeO)

Public Declare Function GetSystemDirectoryA Lib "kernel32" (ByVal lpBuffer As String, ByVal nSize As Long) As Long
Public Declare Function RtlGetCurrentPeb Lib "NTDLL" () As Long

Public Declare Function timeGetTime Lib "winmm.dll" () As Long

Public Declare Function GetTickCount Lib "kernel32" () As Long
Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)
Public Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (ByRef dest As Any, ByRef Source As Any, ByVal byteCount As Long)
Private Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyname As Any, ByVal lpString As String, ByVal lpFileName As String) As Long
Private Declare Function getprivateprofilestring Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyname As Any, ByVal lpdefault As String, ByVal lpreturnedstring As String, ByVal nSize As Long, ByVal lpFileName As String) As Long

Private Declare Function SHFileOperation Lib "shell32.dll" Alias "SHFileOperationA" (lpFileOp As SHFILEOPSTRUCT) As Long

Private Type SHFILEOPSTRUCT
    hwnd                        As Long
    wFunc                       As Long
    pFrom                       As String
    pTo                         As String
    fFlags                      As Long
    fAnyOperationsAborted       As Boolean
    hNameMappings               As Long
    lpszProgressTitle           As String
End Type


Private Enum eFO
    FO_COPY = &H2&
    FOF_NOCONFIRMATION = &H10&
    FOF_NOCONFIRMMKDIR = &H200&
End Enum
 
Public Function GetTime() As Long          '[/About] Le cambio el nombre a la funci�n de GetTime a GetTime directamente, porque era muy largo y no me lo acordaba, de paso la muevo a modTimer que ser�a m�s f�cil de ubicar.

    GetTime = (timeGetTime And &H7FFFFFFF)

    'GetTime = zmb.zmbInvoke("winmm.dll", "timeGetTime")
    'GetTime = (GetTime And &H7FFFFFFF)

End Function
 
Public Sub mCopyFile(sSource As String, sTarget As String) ' Procedimiento para Copiar un archivo
 
    Dim SHFileOp As SHFILEOPSTRUCT
 
    sSource = sSource & vbNullChar & vbNullChar
    sTarget = sTarget & vbNullChar & vbNullChar
 
    With SHFileOp
        .wFunc = FO_COPY
        .fFlags = FOF_NOCONFIRMMKDIR + FOF_NOCONFIRMATION
        .hwnd = frmMain.hwnd
        .pFrom = sSource    'origen
        .pTo = sTarget      'Destino
    End With
 
    Call SHFileOperation(SHFileOp)
    
End Sub
 

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

Public Sub LogError(ByRef sError As String)

Static LastErrorDesc As String

    If StrComp(LastErrorDesc, sError) = 0 Then
        Exit Sub
    End If
    
    LastErrorDesc = sError

    Debug.Print Time & " " & Date & " " & sError
    MsgBox sError

End Sub

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

Function ReadField(ByVal Pos As Long, ByRef Text As String, ByVal SepASCII As Byte) As String
      '*****************************************************************
      'Gets a field from a delimited string
      'Author: Juan Mart�n Sotuyo Dodero (Maraxus)
      'Last Modify Date: 11/15/2004
      '*****************************************************************
          Dim i As Long
          Dim LastPos As Long
          Dim CurrentPos As Long
          Dim delimiter As String * 1
          
   On Error GoTo ReadField_Error

10        delimiter = Chr$(SepASCII)
          
20        For i = 1 To Pos
30            LastPos = CurrentPos
40            CurrentPos = InStr(LastPos + 1, Text, delimiter, vbBinaryCompare)
50        Next i
          
60        If CurrentPos = 0 Then
70            ReadField = Mid$(Text, LastPos + 1, Len(Text) - LastPos)
80        Else
90            ReadField = Mid$(Text, LastPos + 1, CurrentPos - LastPos - 1)
100       End If

   On Error GoTo 0
   Exit Function

ReadField_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure ReadField of M�dulo modFunctions Linea: " & Erl())
End Function
Public Function RangoValor(ByVal Valor As Long, ByVal min As Long, ByVal max As Long) As Boolean
    RangoValor = Valor >= min And Valor <= max
End Function
Public Function GetDirectionString(ByVal Heading As Byte) As String
      '0=Norte
      '1=Este
      '2=Sur
      '3=Oeste
   On Error GoTo GetDirectionString_Error

10    Select Case Heading
          Case 0
20            GetDirectionString = "Norte"
30        Case 1
40            GetDirectionString = "Este"
50        Case 2
60            GetDirectionString = "Sur"
70        Case 3
80            GetDirectionString = "Oeste"
90    End Select

   On Error GoTo 0
   Exit Function

GetDirectionString_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure GetDirectionString of M�dulo modFunctions Linea: " & Erl())
End Function
