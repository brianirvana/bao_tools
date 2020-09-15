Attribute VB_Name = "modGeneral"
Option Explicit

Public Declare Function GetTickCount Lib "kernel32" () As Long

Public Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" ( _
                                    ByRef destination As Any, _
                                    ByRef source As Any, _
                                    ByVal Length As Long)

Public Const NumMaps As Integer = 3

Public Const XWindow As Byte = 17
Public Const YWindow As Byte = 13

Public MinXBorder As Integer
Public MaxXBorder As Integer
Public MinYBorder As Integer
Public MaxYBorder As Integer

Public MapData(1 To NumMaps, XMinMapSize To XMaxMapSize, YMinMapSize To YMaxMapSize) As tMap


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

    frmMain.Show
    MinXBorder = XMinMapSize + (XWindow \ 2)
    MaxXBorder = XMaxMapSize - (XWindow \ 2)
    MinYBorder = YMinMapSize + (YWindow \ 2)
    MaxYBorder = YMaxMapSize - (YWindow \ 2)
    
    frmMain.Area.Width = YMaxMapSize + 10
    frmMain.Area.Height = XMaxMapSize + 10
    
'    Call InitAreas
       
    ExpMul = Val(GetVar(App.Path & "\DAT\Server.ini", "MAIN_BALANCE", "EXPX"))
    DatPath = App.Path & "\DAT\"
    'DatPath = "E:\BENDER\BenderBox\GitBender\bao_v3\Server\DAT\"

    Call LoadFuckingsObjects
    Call LoadNPCs

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
Dim X As Integer
Dim Y As Integer
Dim nX As Integer
Dim nY As Integer

X = Pos.X
Y = Pos.Y

If Head = eHeading.North Then
    nX = X
    nY = Y - 1
End If

If Head = eHeading.South Then
    nX = X
    nY = Y + 1
End If

If Head = eHeading.East Then
    nX = X + 1
    nY = Y
End If

If Head = eHeading.West Then
    nX = X - 1
    nY = Y
End If

'Devuelve valores
Pos.X = nX
Pos.Y = nY

End Sub
Sub ClosestLegalPos(Pos As WorldPos, ByRef nPos As WorldPos, Optional PuedeAgua As Boolean = False, Optional PuedeTierra As Boolean = True)
'*****************************************************************
'Author: Unknown (original version)
'Last Modification: 24/01/2007 (ToxicWaste)
'Encuentra la posicion legal mas cercana y la guarda en nPos
'*****************************************************************

Dim Notfound As Boolean
Dim LoopC As Integer
Dim tX As Integer
Dim tY As Integer

'nPos.Map = Pos.Map
nPos = Pos
Do While Not LegalPos(Pos.Map, nPos.X, nPos.Y)

    If LoopC > 12 Then
        Notfound = True
        Exit Do
    End If
    
    For tY = Pos.Y - LoopC To Pos.Y + LoopC
        For tX = Pos.X - LoopC To Pos.X + LoopC
            
            If LegalPos(nPos.Map, tX, tY) Then
                nPos.X = tX
                nPos.Y = tY
                '¿Hay objeto?
                
                tX = Pos.X + LoopC
                tY = Pos.Y + LoopC
  
            End If
        
        Next tX
    Next tY
    
    LoopC = LoopC + 1
    
Loop

If Notfound = True Then
    nPos.X = 0
    nPos.Y = 0
    MsgBox "Pone menos NPC's te re excediste."
    End
End If

End Sub

Public Function LegalPos(ByVal Map As Integer, X As Integer, Y As Integer) As Boolean
If X = 0 Or Y = 0 Then LegalPos = True: Exit Function
    With MapData(Map, X, Y)
        If .NpcIndex Then
            LegalPos = False
            Exit Function
        End If
        
        If .UserIndex Then
            LegalPos = False
            Exit Function
        End If
    End With
    
    LegalPos = True
End Function
Public Sub GetRandomPos(ByRef Pos As WorldPos)
    Dim FuturePos As WorldPos
    FuturePos.Map = 1
    FuturePos.X = RandomNumber(MinXBorder, MaxXBorder)
    FuturePos.Y = RandomNumber(MinYBorder, MaxYBorder)
    Call modGeneral.ClosestLegalPos(FuturePos, Pos)
End Sub
