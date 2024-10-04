Attribute VB_Name = "modFormatRespawn"
Option Explicit

Public FormatRespawn()          As tFormatRespawn

Public NumFormatRespawn         As Long

Public Type WorldPos
    Map                             As Integer
    X                           As Integer
    Y                           As Integer
End Type

Public Type tRespawns
    Pos                             As WorldPos
    AreaX                       As Integer
    AreaY                       As Integer
End Type

'@ El que se ve en el mapa de la "Q"
Public Type tFormatRespawn
    ID                              As Integer
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

Public Type tNPCRespawn
ID                              As Integer  'NO CAMBIAR NUNCA EL TIPO DE VARIABLE
AreaX                           As Integer  'NO CAMBIAR NUNCA EL TIPO DE VARIABLE
AreaY                           As Integer  'NO CAMBIAR NUNCA EL TIPO DE VARIABLE
RespawnTime                     As Long     'NO CAMBIAR NUNCA EL TIPO DE VARIABLE
    TickCount                       As Long
    Count                       As Integer  'NO CAMBIAR NUNCA EL TIPO DE VARIABLE
    CountRespawn                As Integer
    Nivel                       As Integer  'NO CAMBIAR NUNCA EL TIPO DE VARIABLE
    FactorMulExp                As Single   'NO CAMBIAR NUNCA EL TIPO DE VARIABLE
    Pos                         As WorldPos    'NO CAMBIAR NUNCA EL TIPO DE VARIABLE
    PosRespawns()               As WorldPos
    NumPosRespawns              As Long
End Type

Public Type tMap
    UserIndex                       As Integer
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

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure LoadFormatRespawn of Módulo modFormatRespawn Linea: " & Erl())

End Sub

'El formato que usa el Cliente de Bender para mostrar los npcs en el MAPA de la "Q" (Importante diferenciarlos, porque no son los mismos, son 2 archivos diferentes.)
Public Sub SaveFormatRespawn()

Dim nFile                       As Integer
Dim i                           As Long
Dim j                           As Long
Dim tExp                        As Long

    On Error GoTo SaveFormatRespawn_Error

10  nFile = FreeFile()
20  Open App.Path & "\DAT\RespawnInfo.dat" For Binary As #nFile

30  Put #nFile, , NumFormatRespawn

40  For i = 0 To NumFormatRespawn - 1
50      With FormatRespawn(i)

            'tExp = Round(.Vida * 2 * NPCRespawn(i).FactorMulExp, 0)
            'tExp = tExp + Round(tExp * ExpMul, 0)
            '.Experiencia = tExp

            '                If InStrB(1, .Nombre, "Roja") > 0 Then
            '                    Stop
            '                End If

60          Put #nFile, , .AreaX
70          Put #nFile, , .AreaY
80          Put #nFile, , .ID
90          Put #nFile, , .Nivel
100         Put #nFile, , .Experiencia
110         Put #nFile, , .Oro
120         Put #nFile, , .Vida
130         Put #nFile, , .RespawnTime
140         Put #nFile, , .NumRespawns

150         For j = 0 To .NumRespawns - 1
160             Put #nFile, , .Respawns(j)
170         Next j

180         Put #nFile, , CInt(Len(.Nombre))

190         For j = 1 To Len(.Nombre)
200             Put #nFile, , CInt(Asc(mid$(.Nombre, j, 1)))
210         Next j

220         Put #nFile, , CInt(Len(.Drop))

230         For j = 1 To Len(.Drop)
240             Put #nFile, , CInt(Asc(mid$(.Drop, j, 1)))
250         Next j

260     End With
270 Next i
280 Close #nFile

    On Error GoTo 0
    Exit Sub

SaveFormatRespawn_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure SaveFormatRespawn of Módulo modFormatRespawn Linea: " & Erl())

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
250                 ReDim Preserve FormatRespawn(j) As tFormatRespawn
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

390             FormatRespawn(j).NumRespawns = FormatRespawn(j).NumRespawns + 1
400             FormatRespawn(j).RespawnTime = .RespawnTime
                'FormatRespawn(j).Factor = .FactorMulExp

410             FormatRespawn(j).Drop = vbNullString

420             For k = 1 To NpcList(.ID).Invent.NroItems
430                 If Len(FormatRespawn(j).Drop) Then
440                     FormatRespawn(j).Drop = FormatRespawn(j).Drop & ", "
450                 End If
460                 If NpcList(.ID).Invent.Object(k).ObjIndex > 0 Then
470                     FormatRespawn(j).Drop = FormatRespawn(j).Drop & NpcList(.ID).Invent.Object(k).Amount & " " & FuckingObjData(NpcList(.ID).Invent.Object(k).ObjIndex) & " (100%)"
480                 Else
490                     MsgBox "El NPC " & NpcList(.ID).Name & " Tiene mal dateado (en NroItems) el  OBJ: " & k
500                 End If
510             Next k

520             For k = 1 To NpcList(.ID).Drop.NroItems
530                 If Len(FormatRespawn(j).Drop) Then
540                     FormatRespawn(j).Drop = FormatRespawn(j).Drop & ", "
550                 End If

560                 If NpcList(.ID).Drop.Object(k).ObjIndex > 0 Then
570                     FormatRespawn(j).Drop = FormatRespawn(j).Drop & NpcList(.ID).Drop.Object(k).Amount & " " & FuckingObjData(NpcList(.ID).Drop.Object(k).ObjIndex) & " (" & CStr(NpcList(.ID).Drop.Object(k).ProbTirar / 10) & "%)"
580                 Else
590                     MsgBox "El NPC " & NpcList(.ID).Name & " Tiene mal dateado (en NroDrops) el OBJ: " & k
600                 End If
610             Next k

620             If Len(FormatRespawn(j).Drop) = 0 Then
630                 FormatRespawn(j).Drop = "Nada"
640             End If

                '                FormatRespawn(j).MinHit = NpcList(.ID).STATS.MinHit
                '                FormatRespawn(j).MaxHit = NpcList(.ID).STATS.MaxHit
                '                FormatRespawn(j).TiempoRespawn = NPCRespawn(j).RespawnTime '[/About] A verga
650         End If
660     End With
670 Next i

    'frmMain.Text.Text = ""
    'For i = 0 To NumFormatRespawn - 1
    '    frmMain.Text.Text = frmMain.Text.Text & FormatRespawn(i).Nombre & " - " & FormatRespawn(i).Nivel & vbCrLf
    'Next i

680 On Error GoTo 0
690 Exit Sub

ProcessFormat_Error:

700 Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure ProcessFormat of Módulo modFormatRespawn Linea: " & Erl())

End Sub
