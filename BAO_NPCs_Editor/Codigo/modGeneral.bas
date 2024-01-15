Attribute VB_Name = "modGeneral"
Option Explicit

Public Declare Function GetTickCount Lib "kernel32" () As Long
Public Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (ByRef destination As Any, ByRef source As Any, ByVal Length As Long)

Public Const NumMaps            As Integer = 4

Public Const XWindow            As Byte = 17
Public Const YWindow            As Byte = 13

Public MinXBorder               As Integer
Public MaxXBorder               As Integer
Public MinYBorder               As Integer
Public MaxYBorder               As Integer

Public MapData(1 To NumMaps, XMinMapSize To XMaxMapSize, YMinMapSize To YMaxMapSize) As tMap

Public Debuggin                 As Boolean

Public Sub LogError(ByVal sMessage As String)

    MsgBox sMessage
    
End Sub

Function InMapaArea(ByVal Map As Integer, ByVal X As Integer, ByVal Y As Integer)
            
If (Map <= 0 Or Map > NumMaps) Or X < XMinMapSize Or X > XMaxMapSize Or Y < YMinMapSize Or Y > YMaxMapSize Then
    InMapaArea = False
Else
    InMapaArea = True
End If

End Function
Function InMapBounds(ByVal Map As Integer, ByVal X As Integer, ByVal Y As Integer) As Boolean
            
If (Map <= 0 Or Map > NumMaps) Or X < MinXBorder Or X > MaxXBorder Or Y < MinYBorder Or Y > MaxYBorder Then
    InMapBounds = False
Else
    InMapBounds = True
End If

End Function

Sub Main()

   On Error GoTo Main_Error

10  If UCase$(App.EXEName) = "NPCEDITOR" Then
20      Debuggin = True
30  End If

40  frmMain.Show
50  MinXBorder = XMinMapSize + (XWindow \ 2)
60  MaxXBorder = XMaxMapSize - (XWindow \ 2)
70  MinYBorder = YMinMapSize + (YWindow \ 2)
80  MaxYBorder = YMaxMapSize - (YWindow \ 2)

90  frmMain.Area.Width = YMaxMapSize + 10
100 frmMain.Area.Height = XMaxMapSize + 10

    '    Call InitAreas

110 ExpMul = Val(GetVar(App.Path & "\DAT\Server.ini", "MAIN_BALANCE", "EXPX"))

120 If Debuggin Then
130     DatPath = App.Path & "\..\..\bao_server\DAT\"
140 Else
150     DatPath = App.Path & "\DAT\"
160 End If

170 If Not FileExist(DatPath & "Respawn.dat", vbArchive) Then
180     MsgBox "No existe: " & DatPath & "Respawn.dat"
190     Exit Sub
200 End If

    'DatPath = "E:\BENDER\BenderBox\GitBender\bao_v3\Server\DAT\"

210 Call LoadFuckingsObjects
220 Call LoadNPCs

    '    Dim FuturePos As WorldPos
    '    Dim i As Long
    '    For i = 1 To MaxNPCs
    '        With NpcList(i)
    '            FuturePos.Map = 1
    '            FuturePos.X = RandomNumber(1, XMaxMapSize)
    '            FuturePos.Y = RandomNumber(1, YMaxMapSize)
    '            Call modGeneral.ClosestLegalPos(FuturePos, .Pos)
    '            Call MakeNPCChar(True, 0, (i), 1, .Pos.X, .Pos.Y)
    '        End With
    '    Next i
    '    For i = 1 To MaxUsers
    '        With UserList(i)
    '            FuturePos.Map = 1
    '            FuturePos.X = RandomNumber(1, XMaxMapSize)
    '            FuturePos.Y = RandomNumber(1, YMaxMapSize)
    '            Call modGeneral.ClosestLegalPos(FuturePos, .Pos)
    '            Call MakeUserChar(True, 0, (i), 1, .Pos.X, .Pos.Y)
    '        End With
    '    Next i

   On Error GoTo 0
   Exit Sub

Main_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure Main of Módulo modGeneral Linea: " & Erl())

End Sub
Public Function RandomNumber(ByVal LowerBound As Long, ByVal UpperBound As Long) As Long
'**************************************************************
'Author: Juan Martín Sotuyo Dodero
'Last Modify Date: 3/06/2006
'Generates a random number in the range given - recoded to use longs and work properly with ranges
'**************************************************************
    RandomNumber = Fix(Rnd * (UpperBound - LowerBound + 1)) + LowerBound
End Function

Sub HeadtoPos(ByVal Head As eHeading, ByRef Pos As WorldPos)
    '*****************************************************************
    'Toma una posicion y se mueve hacia donde esta perfilado
    '*****************************************************************
Dim X                           As Integer
Dim Y                           As Integer
Dim nX                          As Integer
Dim nY                          As Integer

   On Error GoTo HeadtoPos_Error

10  X = Pos.X
20  Y = Pos.Y

30  If Head = eHeading.North Then
40      nX = X
50      nY = Y - 1
60  End If

70  If Head = eHeading.South Then
80      nX = X
90      nY = Y + 1
100 End If

110 If Head = eHeading.East Then
120     nX = X + 1
130     nY = Y
140 End If

150 If Head = eHeading.West Then
160     nX = X - 1
170     nY = Y
180 End If

    'Devuelve valores
190 Pos.X = nX
200 Pos.Y = nY

   On Error GoTo 0
   Exit Sub

HeadtoPos_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure HeadtoPos of Módulo modGeneral Linea: " & Erl())

End Sub
Sub ClosestLegalPos(Pos As WorldPos, ByRef nPos As WorldPos, Optional PuedeAgua As Boolean = False, Optional PuedeTierra As Boolean = True)
    '*****************************************************************
    'Author: Unknown (original version)
    'Last Modification: 24/01/2007 (ToxicWaste)
    'Encuentra la posicion legal mas cercana y la guarda en nPos
    '*****************************************************************

Dim Notfound                    As Boolean
Dim LoopC                       As Integer
Dim tX                          As Integer
Dim tY                          As Integer

    'nPos.Map = Pos.Map
    On Error GoTo ClosestLegalPos_Error

10  nPos = Pos
20  Do While Not LegalPos(Pos.Map, nPos.X, nPos.Y)

30      If LoopC > 12 Then
40          Notfound = True
50          Exit Do
60      End If

70      For tY = Pos.Y - LoopC To Pos.Y + LoopC
80          For tX = Pos.X - LoopC To Pos.X + LoopC

90              If LegalPos(nPos.Map, tX, tY) Then
100                 nPos.X = tX
110                 nPos.Y = tY
                    '¿Hay objeto?

120                 tX = Pos.X + LoopC
130                 tY = Pos.Y + LoopC

140             End If

150         Next tX
160     Next tY

170     LoopC = LoopC + 1

180 Loop

190 If Notfound = True Then
200     nPos.X = 0
210     nPos.Y = 0
220     MsgBox "Pone menos NPC's te re excediste."
230     End
240 End If

    On Error GoTo 0
    Exit Sub

ClosestLegalPos_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure ClosestLegalPos of Módulo modGeneral Linea: " & Erl())

End Sub

Public Function LegalPos(ByVal Map As Integer, X As Integer, Y As Integer) As Boolean
   On Error GoTo LegalPos_Error

10    If X = 0 Or Y = 0 Then LegalPos = True: Exit Function
20        With MapData(Map, X, Y)
30            If .NpcIndex Then
40                LegalPos = False
50                Exit Function
60            End If
              
70            If .UserIndex Then
80                LegalPos = False
90                Exit Function
100           End If
110       End With
          
120       LegalPos = True

   On Error GoTo 0
   Exit Function

LegalPos_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure LegalPos of Módulo modGeneral Linea: " & Erl())
End Function
Public Sub GetRandomPos(ByRef Pos As WorldPos)
          Dim FuturePos As WorldPos
   On Error GoTo GetRandomPos_Error

10        FuturePos.Map = 1
20        FuturePos.X = RandomNumber(MinXBorder, MaxXBorder)
30        FuturePos.Y = RandomNumber(MinYBorder, MaxYBorder)
40        Call modGeneral.ClosestLegalPos(FuturePos, Pos)

   On Error GoTo 0
   Exit Sub

GetRandomPos_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure GetRandomPos of Módulo modGeneral Linea: " & Erl())
End Sub
