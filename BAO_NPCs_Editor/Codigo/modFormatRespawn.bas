Attribute VB_Name = "modFormatRespawn"
Option Explicit

Public FormatRespawn()          As tFormatRespawn2
Public FormatRespawn2()         As tFormatRespawn2

Public NumFormatRespawn         As Long

Public Type WorldPos
    Map                         As Integer
    X                           As Integer
    Y                           As Integer
End Type

Public Type tRespawns
    Pos                         As WorldPos
    AreaX                       As Integer
    AreaY                       As Integer
End Type

'@ El que se ve en el mapa de la "Q"
Public Type tFormatRespawn
    ID                          As Integer
    AreaX                       As Integer
    AreaY                       As Integer
    RespawnTime                 As Long
    TickCount                   As Long
    Nombre                      As String
    Nivel                       As Integer
    Experiencia                 As Long
    Oro                         As Long
    Vida                        As Long
    Respawns()                  As tRespawns
    NumRespawns                 As Integer
    Drop                        As String
End Type

'@ El que se ve en el mapa de la "Q"
Public Type tFormatRespawn2
    ID                          As Integer
    AreaX                       As Integer
    AreaY                       As Integer
    RespawnTime                 As Long
    TickCount                   As Long
    Nombre                      As String
    Nivel                       As Integer
    Experiencia                 As Long
    Oro                         As Long
    Vida                        As Long
    Respawns()                  As tRespawns
    NumRespawns                 As Integer
    Drop                        As String
    Count                       As Integer
    MinHour                     As Byte
    MaxHour                     As Byte
End Type


Public Type tNPCRespawn
    ID                          As Integer  'NO CAMBIAR NUNCA EL TIPO DE VARIABLE
    AreaX                       As Integer  'NO CAMBIAR NUNCA EL TIPO DE VARIABLE
    AreaY                       As Integer  'NO CAMBIAR NUNCA EL TIPO DE VARIABLE
    RespawnTime                 As Long     'NO CAMBIAR NUNCA EL TIPO DE VARIABLE
    TickCount                   As Long
    Count                       As Integer  'NO CAMBIAR NUNCA EL TIPO DE VARIABLE
    CountRespawn                As Integer
    Nivel                       As Integer  'NO CAMBIAR NUNCA EL TIPO DE VARIABLE
    FactorMulExp                As Single   'NO CAMBIAR NUNCA EL TIPO DE VARIABLE
    Pos                         As WorldPos    'NO CAMBIAR NUNCA EL TIPO DE VARIABLE
    PosRespawns()               As WorldPos
    NumPosRespawns              As Long
End Type

Public Type tMap
    UserIndex                   As Integer
    NpcIndex                    As Integer
End Type

Public DatPath                  As String

Public Enum eHeading
    North = 1
    East = 2
    South = 3
    West = 4
End Enum

'El formato que usa el Cliente de Bender para mostrar los npcs en el MAPA de la "Q" (Importante diferenciarlos, porque no son los mismos, son 2 archivos diferentes.)
Public Sub LoadFormatRespawn()

Dim nFile                       As Integer
Dim Length                      As Integer
Dim Letter                      As Integer
Dim i                           As Long
Dim j                           As Long

    On Error GoTo LoadFormatRespawn_Error

10  nFile = FreeFile()

20  Open App.Path & "\DAT\RespawnInfo.dat" For Binary As #nFile

30  Get #nFile, , NumFormatRespawn

40  ReDim FormatRespawn(NumFormatRespawn)

50  For i = 0 To NumFormatRespawn - 1
60      With FormatRespawn(i)
70          Get #nFile, , .AreaX
80          Get #nFile, , .AreaY
90          Get #nFile, , .ID
100         Get #nFile, , .Nivel
110         Get #nFile, , .Experiencia
120         Get #nFile, , .Oro
130         Get #nFile, , .Vida
140         Get #nFile, , .RespawnTime
150         Get #nFile, , .NumRespawns

160         ReDim .Respawns(.NumRespawns)

170         For j = 0 To .NumRespawns - 1
180             Get #nFile, , .Respawns(j)
190         Next j

            'Longitud del nombre del npc
200         Get #nFile, , Length

            'Recorremos la longitud del nombre, para obtener el ASC y formatearlo con Chr$ a STRING
210         For j = 1 To Length
220             Get #nFile, , Letter
230             .Nombre = .Nombre & Chr$(Letter)
240         Next j

250         Get #nFile, , Length

260         For j = 1 To Length
270             Get #nFile, , Letter
280             .Drop = .Drop & IIf(Chr$(Letter) = ",", Chr$(Letter) & vbCrLf, Chr$(Letter))    ' ME VOY A LA MIERDA.
290         Next j

300     End With
310 Next i
320 Close #nFile

    On Error GoTo 0
    Exit Sub

LoadFormatRespawn_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure LoadFormatRespawn of M�dulo modFormatRespawn Linea: " & Erl())

End Sub

'El formato que usa el Cliente de Bender para mostrar los npcs en el MAPA de la "Q" (Importante diferenciarlos, porque no son los mismos, son 2 archivos diferentes.)
Public Sub SaveFormatRespawn()

Dim nFile                       As Integer
Dim i                           As Long
Dim j                           As Long
Dim tExp                        As Long

10  On Error GoTo SaveFormatRespawn_Error

20  nFile = FreeFile()
30  Open App.Path & "\DAT\RespawnInfo.dat" For Binary As #nFile

40  Put #nFile, , NumFormatRespawn

50  For i = 0 To NumFormatRespawn - 1
60      With FormatRespawn(i)

            'tExp = Round(.Vida * 2 * NPCRespawn(i).FactorMulExp, 0)
            'tExp = tExp + Round(tExp * ExpMul, 0)
            '.Experiencia = tExp

            '                If InStrB(1, .Nombre, "Roja") > 0 Then
            '                    Stop
            '                End If

70          Put #nFile, , .AreaX
80          Put #nFile, , .AreaY
90          Put #nFile, , .ID
100         Put #nFile, , .Nivel
110         Put #nFile, , .Experiencia
120         Put #nFile, , .Oro
130         Put #nFile, , .Vida
140         Put #nFile, , .RespawnTime
150         Put #nFile, , .NumRespawns

160         Put #nFile, , .MinHour
170         Put #nFile, , .MaxHour

180         For j = 0 To .NumRespawns - 1
190             Put #nFile, , .Respawns(j)
200         Next j

210         Put #nFile, , CInt(Len(.Nombre))

220         For j = 1 To Len(.Nombre)
230             Put #nFile, , CInt(Asc(mid$(.Nombre, j, 1)))
240         Next j

250         Put #nFile, , CInt(Len(.Drop))

260         For j = 1 To Len(.Drop)
270             Put #nFile, , CInt(Asc(mid$(.Drop, j, 1)))
280         Next j

290     End With
300 Next i
310 Close #nFile

320 On Error GoTo 0
330 Exit Sub

SaveFormatRespawn_Error:

340 Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure SaveFormatRespawn of M�dulo modFormatRespawn Linea: " & Erl())

End Sub

Public Sub ProcessFormat()

Dim i                           As Long
Dim j                           As Long
Dim k                           As Long

10  On Error GoTo ProcessFormat_Error

20  NumFormatRespawn = 0
30  ReDim FormatRespawn(0)

    Dim EsTrue                  As Boolean

40  For i = NPCRespawnCount - 1 To 0 Step -1
50      With NPCRespawn(TempNPCRespawn(i))
60          If .ID Then
70              If NumFormatRespawn = 0 Then
80                  j = 0
90              Else
100                 EsTrue = False
110                 For j = 0 To NumFormatRespawn - 1
120                     If .ID = FormatRespawn(j).ID And .Nivel = FormatRespawn(j).Nivel Then
130                         If .Pos.Map = FormatRespawn(j).Respawns(0).Pos.Map Then
140                             EsTrue = True
150                             Exit For
160                         End If
170                     End If
180                 Next j
190                 If EsTrue = False Then
200                     j = NumFormatRespawn
210                 End If
220             End If
230             If EsTrue = False Then
240                 NumFormatRespawn = NumFormatRespawn + 1
250                 ReDim Preserve FormatRespawn(j) As tFormatRespawn2
260             End If

270             FormatRespawn(j).Nombre = NpcList(.ID).Name
280             FormatRespawn(j).ID = .ID
290             FormatRespawn(j).Nivel = .Nivel
300             FormatRespawn(j).Experiencia = Round(NpcList(.ID).STATS.MaxHP * 2 * .FactorMulExp, 0)
                'FormatRespawn(j).Experiencia = FormatRespawn(j).Experiencia + Round(FormatRespawn(j).Experiencia * ExpMul, 0)

310             FormatRespawn(j).Oro = NpcList(.ID).GiveGLD
320             FormatRespawn(j).Vida = NpcList(.ID).STATS.MaxHP

330             ReDim Preserve FormatRespawn(j).Respawns(FormatRespawn(j).NumRespawns)
340             FormatRespawn(j).Respawns(FormatRespawn(j).NumRespawns).Pos = .Pos
350             FormatRespawn(j).Respawns(FormatRespawn(j).NumRespawns).AreaX = .AreaX
360             FormatRespawn(j).Respawns(FormatRespawn(j).NumRespawns).AreaY = .AreaY
370             FormatRespawn(j).AreaX = .AreaX
380             FormatRespawn(j).AreaY = .AreaY

                'If .MinHour > 0 Then Stop
390             FormatRespawn(j).MinHour = .MinHour
400             FormatRespawn(j).MaxHour = .MaxHour

410             FormatRespawn(j).NumRespawns = FormatRespawn(j).NumRespawns + 1
420             FormatRespawn(j).RespawnTime = .RespawnTime
                'FormatRespawn(j).Factor = .FactorMulExp

430             FormatRespawn(j).Drop = vbNullString

440             For k = 1 To NpcList(.ID).Invent.NroItems
450                 If Len(FormatRespawn(j).Drop) Then
460                     FormatRespawn(j).Drop = FormatRespawn(j).Drop & ", "
470                 End If
480                 If NpcList(.ID).Invent.Object(k).ObjIndex > 0 Then
490                     FormatRespawn(j).Drop = FormatRespawn(j).Drop & NpcList(.ID).Invent.Object(k).Amount & " " & FuckingObjData(NpcList(.ID).Invent.Object(k).ObjIndex) & " (100%)"
500                 Else
510                     MsgBox "El NPC " & NpcList(.ID).Name & " Tiene mal dateado (en NroItems) el  OBJ: " & k
520                 End If
530             Next k

540             For k = 1 To NpcList(.ID).Drop.NroItems
550                 If Len(FormatRespawn(j).Drop) Then
560                     FormatRespawn(j).Drop = FormatRespawn(j).Drop & ", "
570                 End If

580                 If NpcList(.ID).Drop.Object(k).ObjIndex > 0 Then
590                     FormatRespawn(j).Drop = FormatRespawn(j).Drop & NpcList(.ID).Drop.Object(k).Amount & " " & FuckingObjData(NpcList(.ID).Drop.Object(k).ObjIndex) & " (" & CStr(NpcList(.ID).Drop.Object(k).ProbTirar / 10) & "%)"
600                 Else
610                     MsgBox "El NPC " & NpcList(.ID).Name & " Tiene mal dateado (en NroDrops) el OBJ: " & k
620                 End If
630             Next k

640             If Len(FormatRespawn(j).Drop) = 0 Then
650                 FormatRespawn(j).Drop = "Nada"
660             End If

                '                FormatRespawn(j).MinHit = NpcList(.ID).STATS.MinHit
                '                FormatRespawn(j).MaxHit = NpcList(.ID).STATS.MaxHit
                '                FormatRespawn(j).TiempoRespawn = NPCRespawn(j).RespawnTime '[/About] A verga
670         End If
680     End With
690 Next i

    'frmMain.Text.Text = ""
    'For i = 0 To NumFormatRespawn - 1
    '    frmMain.Text.Text = frmMain.Text.Text & FormatRespawn(i).Nombre & " - " & FormatRespawn(i).Nivel & vbCrLf
    'Next i

700 On Error GoTo 0
710 Exit Sub

ProcessFormat_Error:

720 Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure ProcessFormat of M�dulo modFormatRespawn Linea: " & Erl())

End Sub
