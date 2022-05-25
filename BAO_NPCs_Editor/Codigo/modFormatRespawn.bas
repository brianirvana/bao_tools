Attribute VB_Name = "modFormatRespawn"
Option Explicit

Public FormatRespawn()          As tFormatRespawn

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
    UserIndex As Integer
    NpcIndex As Integer
End Type

Public DatPath As String

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

    nFile = FreeFile()

    Open App.Path & "\DAT\RespawnInfo.dat" For Binary As #nFile

    Get #nFile, , NumFormatRespawn

    ReDim FormatRespawn(NumFormatRespawn)

    For i = 0 To NumFormatRespawn - 1
        With FormatRespawn(i)
            Get #nFile, , .AreaX
            Get #nFile, , .AreaY
            Get #nFile, , .ID
            Get #nFile, , .Nivel
            Get #nFile, , .Experiencia
            Get #nFile, , .Oro
            Get #nFile, , .Vida
            Get #nFile, , .RespawnTime
            Get #nFile, , .NumRespawns

            ReDim .Respawns(.NumRespawns)

            For j = 0 To .NumRespawns - 1
                Get #nFile, , .Respawns(j)
            Next j

            'Longitud del nombre del npc
            Get #nFile, , Length

            'Recorremos la longitud del nombre, para obtener el ASC y formatearlo con Chr$ a STRING
            For j = 1 To Length
                Get #nFile, , Letter
                .Nombre = .Nombre & Chr$(Letter)
            Next j

            Get #nFile, , Length

            For j = 1 To Length
                Get #nFile, , Letter
                .Drop = .Drop & IIf(Chr$(Letter) = ",", Chr$(Letter) & vbCrLf, Chr$(Letter))    ' ME VOY A LA MIERDA.
            Next j
            
        End With
    Next i
    Close #nFile

End Sub

'El formato que usa el Cliente de Bender para mostrar los npcs en el MAPA de la "Q" (Importante diferenciarlos, porque no son los mismos, son 2 archivos diferentes.)
Public Sub SaveFormatRespawn()

Dim nFile                       As Integer
Dim i                           As Long
Dim j                           As Long
Dim tExp                        As Long

    nFile = FreeFile()
    Open App.Path & "\DAT\RespawnInfo.dat" For Binary As #nFile
    
        Put #nFile, , NumFormatRespawn
        
        For i = 0 To NumFormatRespawn - 1
            With FormatRespawn(i)
            
                'tExp = Round(.Vida * 2 * NPCRespawn(i).FactorMulExp, 0)
                'tExp = tExp + Round(tExp * ExpMul, 0)
                '.Experiencia = tExp
                
                Put #nFile, , .AreaX
                Put #nFile, , .AreaY
                Put #nFile, , .ID
                Put #nFile, , .Nivel
                Put #nFile, , .Experiencia
                Put #nFile, , .Oro
                Put #nFile, , .Vida
                Put #nFile, , .RespawnTime
                Put #nFile, , .NumRespawns
                
                For j = 0 To .NumRespawns - 1
                    Put #nFile, , .Respawns(j)
                Next j
                
                Put #nFile, , CInt(Len(.Nombre))
                
                For j = 1 To Len(.Nombre)
                    Put #nFile, , CInt(Asc(mid$(.Nombre, j, 1)))
                Next j
                
                Put #nFile, , CInt(Len(.Drop))
                
                For j = 1 To Len(.Drop)
                    Put #nFile, , CInt(Asc(mid$(.Drop, j, 1)))
                Next j
                
            End With
        Next i
    Close #nFile
    
End Sub

Public Sub ProcessFormat()

Dim i                           As Long
Dim j                           As Long
Dim k                           As Long

    NumFormatRespawn = 0
    ReDim FormatRespawn(0)

    Dim EsTrue As Boolean
    
    For i = NPCRespawnCount - 1 To 0 Step -1
        With NPCRespawn(TempNPCRespawn(i))
            If .ID Then
                If NumFormatRespawn = 0 Then
                    j = 0
                Else
                    EsTrue = False
                    For j = 0 To NumFormatRespawn - 1
                        If .ID = FormatRespawn(j).ID And .Nivel = FormatRespawn(j).Nivel Then
                            If .Pos.Map = FormatRespawn(j).Respawns(0).Pos.Map Then
                                EsTrue = True
                                Exit For
                            End If
                        End If
                    Next j
                    If EsTrue = False Then
                        j = NumFormatRespawn
                    End If
                End If
                If EsTrue = False Then
                    NumFormatRespawn = NumFormatRespawn + 1
                    ReDim Preserve FormatRespawn(j) As tFormatRespawn
                End If
                
                FormatRespawn(j).Nombre = NpcList(.ID).Name
                FormatRespawn(j).ID = .ID
                FormatRespawn(j).Nivel = .Nivel
                FormatRespawn(j).Experiencia = Round(NpcList(.ID).STATS.MaxHP * 2 * .FactorMulExp, 0)
                'FormatRespawn(j).Experiencia = FormatRespawn(j).Experiencia + Round(FormatRespawn(j).Experiencia * ExpMul, 0)
                
                FormatRespawn(j).Oro = NpcList(.ID).GiveGLD
                FormatRespawn(j).Vida = NpcList(.ID).STATS.MaxHP
                
                ReDim Preserve FormatRespawn(j).Respawns(FormatRespawn(j).NumRespawns)
                FormatRespawn(j).Respawns(FormatRespawn(j).NumRespawns).Pos = .Pos
                FormatRespawn(j).Respawns(FormatRespawn(j).NumRespawns).AreaX = .AreaX
                FormatRespawn(j).Respawns(FormatRespawn(j).NumRespawns).AreaY = .AreaY
                FormatRespawn(j).AreaX = .AreaX
                FormatRespawn(j).AreaY = .AreaY
                
                FormatRespawn(j).NumRespawns = FormatRespawn(j).NumRespawns + 1
                FormatRespawn(j).RespawnTime = .RespawnTime
                'FormatRespawn(j).Factor = .FactorMulExp
                
                FormatRespawn(j).Drop = vbNullString
                
                For k = 1 To NpcList(.ID).Invent.NroItems
                    If Len(FormatRespawn(j).Drop) Then
                        FormatRespawn(j).Drop = FormatRespawn(j).Drop & ", "
                    End If
                    FormatRespawn(j).Drop = FormatRespawn(j).Drop & NpcList(.ID).Invent.Object(k).Amount & " " & FuckingObjData(NpcList(.ID).Invent.Object(k).ObjIndex) & " (100%)"
                Next k
                
                For k = 1 To NpcList(.ID).Drop.NroItems
                    If Len(FormatRespawn(j).Drop) Then
                        FormatRespawn(j).Drop = FormatRespawn(j).Drop & ", "
                    End If
                    FormatRespawn(j).Drop = FormatRespawn(j).Drop & NpcList(.ID).Drop.Object(k).Amount & " " & FuckingObjData(NpcList(.ID).Drop.Object(k).ObjIndex) & " (" & CStr(NpcList(.ID).Drop.Object(k).ProbTirar / 10) & "%)"
                Next k
                
                If Len(FormatRespawn(j).Drop) = 0 Then
                    FormatRespawn(j).Drop = "Nada"
                End If
                
'                FormatRespawn(j).MinHit = NpcList(.ID).STATS.MinHit
'                FormatRespawn(j).MaxHit = NpcList(.ID).STATS.MaxHit
'                FormatRespawn(j).TiempoRespawn = NPCRespawn(j).RespawnTime '[/About] A verga
            End If
        End With
    Next i
    
    'frmMain.Text.Text = ""
    'For i = 0 To NumFormatRespawn - 1
    '    frmMain.Text.Text = frmMain.Text.Text & FormatRespawn(i).Nombre & " - " & FormatRespawn(i).Nivel & vbCrLf
    'Next i
    
End Sub
