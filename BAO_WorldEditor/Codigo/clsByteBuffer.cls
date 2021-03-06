VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsByteBuffer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (ByRef Destination As Any, ByRef Source As Any, ByVal Length As Long)

Private data()                  As Byte

Private CurrentPos              As Long
Private LastPos                 As Long
Private hFile                   As Long

Private Const INVALID_FILE_HANDLER As Integer = -1
Private Const DEFAULT_MAX_SIZE_FILE As Long = 500000
Private Const BYTE_SIZE         As Byte = 1
Private Const BOOL_SIZE         As Byte = 2
Private Const INTEGER_SIZE      As Byte = 2
Private Const LONG_SIZE         As Byte = 4
Private Const SINGLE_SIZE       As Byte = 4
Private Const DOUBLE_SIZE       As Byte = 8
'Private Const STRING_LENGTH_SIZE As Byte = 2

Public Sub initializeReader(ByRef ArrayByte() As Byte)

    LastPos = UBound(ArrayByte)
    ReDim data(LastPos) As Byte

    Call CopyMemory(data(0), ArrayByte(0), LastPos + 1)
    CurrentPos = 0

End Sub

Public Sub initializeWriter(ByVal fileHandler As Integer)

    ReDim data(DEFAULT_MAX_SIZE_FILE * 20) As Byte

    hFile = fileHandler
    CurrentPos = 0
    LastPos = -1

End Sub

Public Sub initializeWriterTo()

    ReDim data(DEFAULT_MAX_SIZE_FILE * 20) As Byte

    hFile = -1
    CurrentPos = 0
    LastPos = -1

End Sub

Public Sub getBytes(ByRef Destination() As Byte, Optional ByVal Length As Long = -1)

    If Length >= 0 Then
        Call CopyMemory(Destination(0), data(CurrentPos), Length)
    Else
        Call CopyMemory(Destination(0), data(0), LastPos + 1)
    End If

End Sub

Public Function getByte() As Byte
    getByte = data(CurrentPos)
    CurrentPos = CurrentPos + BYTE_SIZE
End Function

Public Function getBoolean() As Boolean
    Call CopyMemory(getBoolean, data(CurrentPos), BOOL_SIZE)
    CurrentPos = CurrentPos + BOOL_SIZE
End Function

Public Function getInteger() As Integer
    Call CopyMemory(getInteger, data(CurrentPos), INTEGER_SIZE)
    CurrentPos = CurrentPos + INTEGER_SIZE
End Function

Public Function getLong() As Long
    Call CopyMemory(getLong, data(CurrentPos), LONG_SIZE)
    CurrentPos = CurrentPos + LONG_SIZE
End Function

Public Function getSingle() As Single
    Call CopyMemory(getSingle, data(CurrentPos), SINGLE_SIZE)
    CurrentPos = CurrentPos + SINGLE_SIZE
End Function

Public Function getDouble() As Double
    Call CopyMemory(getDouble, data(CurrentPos), DOUBLE_SIZE)
    CurrentPos = CurrentPos + DOUBLE_SIZE
End Function

Public Function getString(Optional ByVal Length As Integer = -1) As String

Dim Ret()                       As Byte

    If Length < 0 Then
        Length = getInteger()
        getString = getString(Length)
    Else
        If Length > 0 Then
            ReDim Ret(Length - 1) As Byte

            Call CopyMemory(Ret(0), data(CurrentPos), Length)

            getString = StrConv(Ret, vbUnicode)
            CurrentPos = CurrentPos + Length
        End If
    End If

End Function

Public Sub putByte(ByVal Value As Byte)
    data(LastPos + 1) = Value
    LastPos = LastPos + BYTE_SIZE
End Sub

Public Sub putBoolean(ByVal Value As Boolean)
    Call CopyMemory(data(LastPos + 1), Value, BOOL_SIZE)
    LastPos = LastPos + BOOL_SIZE
End Sub

Public Sub putInteger(ByVal Value As Integer)
    Call CopyMemory(data(LastPos + 1), Value, INTEGER_SIZE)
    LastPos = LastPos + INTEGER_SIZE
End Sub

Public Sub putLong(ByVal Value As Long)
    Call CopyMemory(data(LastPos + 1), Value, LONG_SIZE)
    LastPos = LastPos + LONG_SIZE
End Sub

Public Sub putSingle(ByVal Value As Single)
    Call CopyMemory(data(LastPos + 1), Value, SINGLE_SIZE)
    LastPos = LastPos + SINGLE_SIZE
End Sub

Public Sub putDouble(ByVal Value As Double)
    Call CopyMemory(data(LastPos + 1), Value, DOUBLE_SIZE)
    LastPos = LastPos + DOUBLE_SIZE
End Sub

Public Sub putString(ByRef str As String, Optional ByVal withLength As Boolean = True)

Dim Length                      As Long

    Length = Len(str)

    If withLength Then
        Call putInteger(Length)
        Call putString(str, False)
    Else
        If Length > 0 Then
            Call CopyMemory(data(LastPos + 1), ByVal StrPtr(StrConv(str, vbFromUnicode)), Length)

            LastPos = LastPos + Length
        End If
    End If

End Sub

Public Sub getVoid(ByVal Length As Integer)
    CurrentPos = CurrentPos + Length
End Sub

Public Sub putVoid(ByVal Length As Integer)
    LastPos = LastPos + Length
End Sub

Public Sub ClearData()
    ReDim data(DEFAULT_MAX_SIZE_FILE) As Byte

    CurrentPos = 0
    LastPos = -1
    hFile = -1
End Sub

Public Function getLastPos() As Long
    getLastPos = LastPos
End Function

Public Function getCurrentPos() As Long
    getCurrentPos = CurrentPos
End Function

Public Function EOF() As Boolean
    EOF = (CurrentPos > UBound(data))
End Function

Public Sub saveBuffer()

Dim buf()                       As Byte

    If hFile > 0 Then
        ReDim buf(LastPos) As Byte

        Call CopyMemory(buf(0), data(0), LastPos + 1)
        Put hFile, , buf
    End If

End Sub

Public Sub saveBufferTo(ByRef buf() As Byte)

If hFile > 0 Then              'hFile es el objeto inicializado como "Private" en �sta clase.
        ReDim buf(LastPos) As Byte
        Call CopyMemory(buf(0), data(0), LastPos + 1)
        Put hFile, , buf
    End If

End Sub

Private Sub Class_Initialize()
    hFile = INVALID_FILE_HANDLER
End Sub

Private Sub Class_Terminate()
    Erase data()
End Sub


