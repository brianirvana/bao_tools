Attribute VB_Name = "General"
Option Explicit

Public bMap                     As Byte

Public Type RECT              ' used to set/ref boundaries of a rectangle
    Left                        As Long
    Top                         As Long
    Right                       As Long
    Bottom                      As Long
End Type

Public Type Grh
    Started                     As Byte
    FrameCounter                As Byte
    Speed                       As Single
    SpeedCounter                As Single
    GrhIndex                    As Integer
    Loops                       As Integer
End Type

'Holds a local position
Public Type Position
    X                           As Integer
    Y                           As Integer
End Type

' Lista de Cuerpos body.dat
Public Type tBodyData
    Walk(1 To 4)                As Grh
    HeadOffset                  As Position
End Type

'Heads list
Public Type tHeadData
    Head(0 To 4)                As Grh
End Type

'Hold info about a character
Public Type Char
    Active                      As Byte
    Heading                     As Byte
    Pos                         As Position

    Body                        As tBodyData
    Head                        As tHeadData

    Moving                      As Byte
    MoveOffset                  As Position

End Type

'Holds info about a object
Public Type Obj
    objindex                    As Integer
    Amount                      As Integer
End Type

'Holds a world position
Public Type WorldPos
    Map                         As Integer
    X                           As Integer
    Y                           As Integer
End Type

'Holds info about each tile position
Public Type MapBlock
    Graphic(1 To 4)             As Grh
    CharIndex                   As Integer
    ObjGrh                      As Grh
    Trigger                     As Integer
    NPCIndex                    As Integer
    OBJInfo                     As Obj
    TileExit                    As WorldPos
    Blocked                     As Byte
End Type

Public Debuggin                 As Boolean

Sub Main()

Dim sInput                      As String

10  On Error GoTo Main_Error

20  If App.EXEName = "CrearMegaMapa" Then
30      Debuggin = True
40  End If

50  sInput = Command$
60  bMap = Val(sInput)         'Mapa actual.

70  frmMain.Show

80  Call frmMain.Click

90  On Error GoTo 0
100 Exit Sub

Main_Error:

110 MsgBox ("Error " & Err.Number & " (" & Err.Description & ") procedimiento Main Módulo General línea: " & Erl())

End Sub

Function FileExist(ByVal File As String, ByVal FileType As VbFileAttribute) As Boolean

 On Error GoTo FileExist_Error

10        FileExist = (Dir$(File, FileType) <> "")

 On Error GoTo 0
 Exit Function

FileExist_Error:

  MsgBox ("Error " & Err.Number & " (" & Err.Description & ") procedimiento FileExist Módulo General línea: " & Erl())

End Function
