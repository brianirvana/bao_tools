Attribute VB_Name = "modNPCs"
Option Explicit

Public Const MAX_INVENTORY_SLOTS As Byte = 25
Public NpcList(1 To 10000)      As NPC
Attribute NpcList.VB_VarUserMemId = 1073741824

Public ExpMul                   As Single
Attribute ExpMul.VB_VarUserMemId = 1073741825
Public OroMul                   As Single
Attribute OroMul.VB_VarUserMemId = 1073741826

Public Enum eNPCType
    Comun = 0
    Revividor = 1
    GuardiaReal = 2
    Entrenador = 3
    Banquero = 4
    Noble = 5
    DRAGON = 6
    Timbero = 7
    Guardiascaos = 8
    ResucitadorNewbie = 9
    Bancario = 10
    Duelo1vs1 = 11
    Duelo2vs2 = 12
    AutoQuest = 13
    Pretoriano = 14
    TimberoDonante = 15
End Enum

Public Type Char
    CharIndex                       As Integer
    Head                        As Integer
    body                        As Integer

    WeaponAnim                  As Integer
    ShieldAnim                  As Integer
    CascoAnim                   As Integer

    FX                          As Integer
    loops                       As Integer

    heading                     As eHeading
End Type

Public Type Obj
    ObjIndex                        As Integer
    Amount                      As Integer
    Limpiar                     As Long
End Type


Private Type tQuest
    Quest                           As Byte
    ReDoo                       As String
    CantPide                    As Byte
    CantDa                      As Byte
    ItemPide()                  As Obj
    ItemDa()                    As Obj
    OroPide                     As Long
    OroDa                       As Long
    ExpDa                       As Long
End Type

Public Type NPCStats
    Alineacion                      As Integer
    MaxHP                       As Long
    MinHP                       As Long
    MaxHit                      As Integer
    MinHit                      As Integer
    def                         As Integer
    defM                        As Integer
    UsuariosMatados             As Integer
End Type


Public Type NPCFlags
    '[/About] AfectaBender
    Equipo                          As Byte
    AfectaBender                As Byte
    Atravesable                 As Byte
    RemueveInvisibilidad        As Byte
    ShowName                    As Byte
    priv                        As Byte

    AfectaParalisis             As Byte
    GolpeExacto                 As Byte
    Domable                     As Integer
    Respawn                     As Byte
    NPCActive                   As Boolean    '¿Esta vivo?
    Follow                      As Boolean
    Faccion                     As Byte
    LanzaSpells                 As Byte

    '[KEVIN]
    'DeQuest As Byte

    'ExpDada As Long
    ExpCount                    As Long    '[ALEJO]
    '[/KEVIN]


    OldHostil                   As Byte

    AguaValida                  As Byte
    TierraInvalida              As Byte

    UseAINow                    As Boolean
    Sound                       As Integer
    Attacking                   As Integer
    AttackedBy                  As String
    AttackedFirstBy             As String
    AttackedFirstByIndex        As Integer    '[MODIFICADO] 17/2/10 Para no usar todo el tiempo NameIndex() que es una funcion pesada, hacemos esto que es mas sencillo - MaTeO
    Category1                   As String
    Category2                   As String
    Category3                   As String
    Category4                   As String
    Category5                   As String
    Backup                      As Byte
    RespawnOrigPos              As Byte

    Envenenado                  As Byte
    Paralizado                  As Byte
    Inmovilizado                As Byte
    invisible                   As Byte
    Maldicion                   As Byte
    Bendicion                   As Byte

    Snd1                        As Integer
    Snd2                        As Integer
    Snd3                        As Integer

    AtacaAPJ                    As Integer
    AtacaANPC                   As Integer

End Type

Public Type NPCObj
    ObjIndex                        As Integer
    Amount                      As Integer
    Equipped                    As Byte
    ProbTirar                   As Single
End Type

Public Type UserObj
    ObjIndex                        As Integer
    Amount                      As Integer
    Equipped                    As Byte
End Type


Public Type NPCInventario
    Object(1 To MAX_INVENTORY_SLOTS) As NPCObj
    WeaponEqpObjIndex           As Integer
    WeaponEqpSlot               As Byte
    ArmourEqpObjIndex           As Integer
    ArmourEqpSlot               As Byte
    EscudoEqpObjIndex           As Integer
    EscudoEqpSlot               As Byte
    CascoEqpObjIndex            As Integer
    CascoEqpSlot                As Byte
    MunicionEqpObjIndex         As Integer
    MunicionEqpSlot             As Byte
    AnilloEqpObjIndex           As Integer
    AnilloEqpSlot               As Byte
    BarcoObjIndex               As Integer
    BarcoSlot                   As Byte
    NroItems                    As Integer
End Type

Public Type Inventario
    Object(1 To MAX_INVENTORY_SLOTS) As UserObj
    WeaponEqpObjIndex           As Integer
    WeaponEqpSlot               As Byte
    ArmourEqpObjIndex           As Integer
    ArmourEqpSlot               As Byte
    EscudoEqpObjIndex           As Integer
    EscudoEqpSlot               As Byte
    CascoEqpObjIndex            As Integer
    CascoEqpSlot                As Byte
    MunicionEqpObjIndex         As Integer
    MunicionEqpSlot             As Byte
    AnilloEqpObjIndex           As Integer
    AnilloEqpSlot               As Byte
    BarcoObjIndex               As Integer
    BarcoSlot                   As Byte
    NroItems                    As Integer
End Type


Public Type NPC
    Pos                             As WorldPos

    Active                      As Byte

    flags                       As NPCFlags
    STATS                       As NPCStats

    Pretoriano                  As Boolean

    RangoVision                 As Byte    '[MODIFICADO] Rango vision para sacerdotes 25/2/10 - MaTeO
    Name                        As String
    Char                        As Char    'Define como se vera
    OldBody                     As Integer
    OldHead                     As Integer

    desc                        As String
    desc1                       As String
    desc2                       As String

    DescExtra                   As String

    NPCtype                     As eNPCType
    ID                          As Integer

    level                       As Integer

    InvReSpawn                  As Byte

    Comercia                    As Integer
    Target                      As Long
    TargetNPC                   As Long
    TipoItems                   As Integer

    Veneno                      As Byte

    SkillDomar                  As Integer

    Blocked                     As Byte

    TimerAI                     As Long
    TiempoVida                  As Long

    PuedeRobar                  As Byte

    Velocity                    As Integer
    OldVelocity                 As Integer
    Quest                       As tQuest


    PasosSound                  As Byte

    TimerGolpe                  As Long
    GolpeTimer                  As Integer

    invisible                   As Integer
    IsInvisible                 As Boolean

    Attackable                  As Byte
    Hostile                     As Byte
    PoderAtaque                 As Long
    PoderEvasion                As Long

    NpcLvl                      As Integer
    GiveEXP                     As Double
    GiveGLD                     As Double

    Invent                      As Inventario

    Drop                        As NPCInventario

    CanAttack                   As Byte

    NroExpresiones              As Byte
    Expresiones()               As String    ' le da vida ;)

    NroSpells                   As Byte
    Spells()                    As Integer    ' le da vida ;)

    '<<<<Entrenadores>>>>>
    NroCriaturas                As Integer
    MaestroUser                 As Integer
    MaestroNpc                  As Integer
    Mascotas                    As Integer
    MaxMascotas                 As Integer
    ListMascotas()              As Integer
    TiempoInvocacion            As Long

    'Para diferenciar entre clanes
    ClanIndex                   As Integer
End Type

Public TempNPCRespawn()         As Integer
Attribute TempNPCRespawn.VB_VarUserMemId = 1073741827
Public TempNPCRespawnCount      As Long
Attribute TempNPCRespawnCount.VB_VarUserMemId = 1073741828

Public NPCRespawnCount          As Long
Attribute NPCRespawnCount.VB_VarUserMemId = 1073741829
Public NPCRespawn()             As tNPCRespawn
Attribute NPCRespawn.VB_VarUserMemId = 1073741830
Public tmptNPCRespawn()         As tNPCRespawn
Public EmptyNPCRespawn          As tNPCRespawn

Public NPCRespawn2()            As tNPCRespawn2

Public Type tNPCRespawn
    Order                           As Integer
    ID                          As Integer
    AreaX                       As Integer
    AreaY                       As Integer
    RespawnTime                 As Long
    TickCount                   As Long
    Count                       As Integer
    CountRespawn                As Integer
    Nivel                       As Integer
    FactorMulExp                As Single
    FactorMulGold               As Single
    Pos                         As WorldPos
    PosRespawns()               As WorldPos
    NumPosRespawns              As Long
    MinHour                     As Byte
    MaxHour                     As Byte
    WithCountUsers              As Byte    '@ NUEVO!
    CountsActiveNpcs            As Integer
End Type

Public Type tNPCRespawn2
    Order                           As Integer
    ID                          As Integer
    AreaX                       As Integer
    AreaY                       As Integer
    RespawnTime                 As Long
    TickCount                   As Long
    Count                       As Integer
    CountRespawn                As Integer
    Nivel                       As Integer
    FactorMulExp                As Single
    FactorMulGold               As Single    '@ NUEVO!
    Pos                         As WorldPos
    PosRespawns()               As WorldPos
    NumPosRespawns              As Long
    MinHour                     As Byte
    MaxHour                     As Byte
    WithCountUsers              As Byte
    CountsActiveNpcs            As Integer
End Type

Private LeerNPCs                As New clsIniReader
Attribute LeerNPCs.VB_VarUserMemId = 1073741831

Public Sub SaveNPCRespawn()

Dim nFile                       As Integer
Dim i                           As Long
Dim SaveNPC                     As New clsIniReader

10  On Error GoTo SaveNPCRespawn_Error

20  nFile = FreeFile()

30  Call SaveNPC.Initialize(DatPath & "\NPCRespawn.ini")

40  Open DatPath & "\Respawn.dat" For Binary As #nFile

50  Put #nFile, , NPCRespawnCount
60  For i = 0 To NPCRespawnCount - 1
70      With NPCRespawn(i)     'NPCRespawn2(i)
80          Put #nFile, , .AreaX    '1
90          Put #nFile, , .AreaY    '2
100         Put #nFile, , .Count    '3
110         Put #nFile, , .ID  '4
120         Put #nFile, , .Pos    '5
130         Put #nFile, , .RespawnTime    '6
140         Put #nFile, , .Nivel    '7
150         Put #nFile, , .FactorMulExp    '8
160         Put #nFile, , .FactorMulGold    '9
170         Put #nFile, , .MinHour    '10
180         Put #nFile, , .MaxHour    '11
190         Put #nFile, , .WithCountUsers    '12

200         If .ID > 0 Then

                '                    Call WriteVar(DatPath & "\NPCRespawn.ini", "INIT", "NPCRespawnCount", Val(NPCRespawnCount))  '1
                '
                '                    Call WriteVar(DatPath & "\NPCRespawn.ini", "RESPAWN" & i + 1, "Name", NpcList(.ID).Name)   '0
                '                    Call WriteVar(DatPath & "\NPCRespawn.ini", "RESPAWN" & i + 1, "AreaX", Val(.AreaX))   '1
                '                    Call WriteVar(DatPath & "\NPCRespawn.ini", "RESPAWN" & i + 1, "AreaY", Val(.AreaY))    '2
                '                    Call WriteVar(DatPath & "\NPCRespawn.ini", "RESPAWN" & i + 1, "Count", Val(.Count))    '3
                '                    Call WriteVar(DatPath & "\NPCRespawn.ini", "RESPAWN" & i + 1, "ID", Val(.ID))               '4
                '                    Call WriteVar(DatPath & "\NPCRespawn.ini", "RESPAWN" & i + 1, "POS_MAP", Val(.Pos.Map))     '5
                '                    Call WriteVar(DatPath & "\NPCRespawn.ini", "RESPAWN" & i + 1, "POS_X", Val(.Pos.X))  '6
                '                    Call WriteVar(DatPath & "\NPCRespawn.ini", "RESPAWN" & i + 1, "POS_Y", Val(.Pos.Y))  '7
                '                    Call WriteVar(DatPath & "\NPCRespawn.ini", "RESPAWN" & i + 1, "Respawn_Time", .RespawnTime)  '8
                '                    Call WriteVar(DatPath & "\NPCRespawn.ini", "RESPAWN" & i + 1, "Nivel", Val(.Nivel))  '9
                '                    Call WriteVar(DatPath & "\NPCRespawn.ini", "RESPAWN" & i + 1, "Factor_Experiencia", .FactorMulExp)  '10
                '                    Call WriteVar(DatPath & "\NPCRespawn.ini", "RESPAWN" & i + 1, "Min_Hour", .MinHour)  '11
                '                    Call WriteVar(DatPath & "\NPCRespawn.ini", "RESPAWN" & i + 1, "Max_Hour", .MaxHour)  '12
                '                    Call WriteVar(DatPath & "\NPCRespawn.ini", "RESPAWN" & i + 1, "Count_Users", Val(.WithCountUsers))  '13

210             Call SaveNPC.ChangeValue("INIT", "NPCRespawnCount", Val(NPCRespawnCount))    '1
220             Call SaveNPC.ChangeValue("RESPAWN" & i + 1, "Name", NpcList(.ID).Name)    '0
230             Call SaveNPC.ChangeValue("RESPAWN" & i + 1, "AreaX", Val(.AreaX))    '1
240             Call SaveNPC.ChangeValue("RESPAWN" & i + 1, "AreaY", Val(.AreaY))    '2
250             Call SaveNPC.ChangeValue("RESPAWN" & i + 1, "Count", Val(.Count))    '3
260             Call SaveNPC.ChangeValue("RESPAWN" & i + 1, "ID", Val(.ID))    '4
270             Call SaveNPC.ChangeValue("RESPAWN" & i + 1, "POS_MAP", Val(.Pos.Map))    '5
280             Call SaveNPC.ChangeValue("RESPAWN" & i + 1, "POS_X", Val(.Pos.X))    '6
290             Call SaveNPC.ChangeValue("RESPAWN" & i + 1, "POS_Y", Val(.Pos.Y))    '7
300             Call SaveNPC.ChangeValue("RESPAWN" & i + 1, "Respawn_Time", .RespawnTime)    '8
310             Call SaveNPC.ChangeValue("RESPAWN" & i + 1, "Nivel", Val(.Nivel))    '9
320             Call SaveNPC.ChangeValue("RESPAWN" & i + 1, "Factor_Experiencia", .FactorMulExp)    '10
330             Call SaveNPC.ChangeValue("RESPAWN" & i + 1, "Factor_Oro", .FactorMulGold)    '10
340             Call SaveNPC.ChangeValue("RESPAWN" & i + 1, "Min_Hour", .MinHour)    '11
350             Call SaveNPC.ChangeValue("RESPAWN" & i + 1, "Max_Hour", .MaxHour)    '12
360             Call SaveNPC.ChangeValue("RESPAWN" & i + 1, "Count_Users", Val(.WithCountUsers))    '13

370             Call SaveNPC.DumpFile(DatPath & "\NPCRespawn.ini")
380         End If
390     End With
400 Next i
410 Close #nFile

420 On Error GoTo 0
430 Exit Sub

SaveNPCRespawn_Error:

440 Call MsgBox("Error " & Err.Number & " (" & Err.Description & ") procedimiento SaveNPCRespawn Módulo modNPCs línea: " & Erl())

End Sub

Public Sub LoadNPCs()

    On Error GoTo LoadNPCs_Error

10  Call LeerNPCs.Initialize(DatPath & "NPCs.dat")

20  Call LoadNPCRespawn

    Dim i                       As Long
    Dim j                       As Long

30  For i = 0 To NPCRespawnCount - 1
40      If NPCRespawn(i).ID Then
50          Call OpenNPC(NPCRespawn(i).ID)
60          Debug.Print "Clic en LoadNPCs: " & NpcList(NPCRespawn(i).ID).Name
70          frmMain.lstNPCs.AddItem NpcList(NPCRespawn(i).ID).Name & "-" & NPCRespawn(i).ID & "-" & i

            'Esto sirve para reacomodar todos los respawns de un área de forma automática, cuando se reubica un mapa en otro lugar físico del mapa.map
            'Debug.Print "Clic en LoadNPCs: " & NpcList(NPCRespawn(i).ID).Name

            '            If NPCRespawn(i).Pos.Map = 2 Then
            '                'BRIAN: NUNCA COMENTAR ESTA LINEA SI VAS A DESCOMENTAR LO DE ABAJO BRIAN!
            '                If Not Debuggin Then
            '                    MsgBox "SACAR ESTO URGENTE."
            '                    End
            '                End If
            '
            '                If NPCRespawn(i).Pos.X >= 849 And NPCRespawn(i).Pos.X <= 1073 And NPCRespawn(i).Pos.Y >= 110 And NPCRespawn(i).Pos.Y <= 193 Then
            '                    'NPCRespawn(i).Pos.X = NPCRespawn(i).Pos.X - 200
            '                    'NPCRespawn(i).Pos.Y = NPCRespawn(i).Pos.Y - 484
            '                    Debug.Print "Clic en LoadNPCs: " & NpcList(NPCRespawn(i).ID).Name
            '                End If
            '            End If

80      Else
90          frmMain.lstNPCs.AddItem "(NONE)-0-" & i
100     End If
        'frmMain.Caption = "Cargando NPC numero " & i + 1 & " de " & NPCRespawnCount
        'DoEvents
110 Next i

120 frmMain.lstNPCs.ListIndex = 0

130 Call OrganizarNPC(0)

    On Error GoTo 0
    Exit Sub

LoadNPCs_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure LoadNPCs of Módulo modNPCs Linea: " & Erl())

End Sub


Function OpenNPC(ByVal NpcNumber As Integer, Optional ByVal Respawn = True) As Integer

'###################################################
'#               ATENCION PELIGRO                  #
'###################################################
'
'El que ose desafiar esta LEY, se las tendrá que ver
'conmigo. Para leer los NPCS se deberá usar la
'nueva clase clsIniReader.
'
'Alejo
'
'###################################################

Dim NpcIndex                    As Integer
Dim Leer                        As clsIniReader
Dim TempTick                    As Long
10  On Error GoTo OpenNPC_Error

20  TempTick = GetTickCount And &H7FFFFFFF

30  Set Leer = LeerNPCs


    'If requested index is invalid, abort
40  If Not Leer.KeyExists("NPC" & NpcNumber) Then
50      OpenNPC = 0
60      Exit Function
70  End If

80  NpcIndex = NpcNumber

90  With NpcList(NpcIndex)

100     .TimerAI = TempTick + Rnd * 500
110     .PasosSound = Val(Leer.GetValue("NPC" & NpcNumber, "SND4"))
120     .PuedeRobar = Val(Leer.GetValue("NPC" & NpcNumber, "PuedeRobar"))
130     .Velocity = Val(Leer.GetValue("NPC" & NpcNumber, "Velocity"))
140     .Quest.Quest = Val(Leer.GetValue("NPC" & NpcNumber, "Quest"))

        '130 If .Quest.Quest <> 0 Then
        '140     .Quest.ReDoo = Leer.GetValue("NPC" & NpcNumber, "ReDo")
        '150     .Quest.OroDa = Val(Leer.GetValue("NPC" & NpcNumber, "OroDa"))
        '160     .Quest.OroPide = Val(Leer.GetValue("NPC" & NpcNumber, "OroPide"))
        '170     .Quest.ExpDa = Val(Leer.GetValue("NPC" & NpcNumber, "ExpDa"))
        '180     .Quest.CantPide = Val(Leer.GetValue("NPC" & NpcNumber, "CantPide"))
        '190     .Quest.CantDa = Val(Leer.GetValue("NPC" & NpcNumber, "CantDa"))
        '        Dim j                   As Byte
        '200     If .Quest.CantPide <> 0 Then
        '210         ReDim .Quest.ItemPide(1 To .Quest.CantPide)
        '220         For j = 1 To .Quest.CantPide
        '230             .Quest.ItemPide(j).ObjIndex = Val(ReadField(1, Leer.GetValue("NPC" & NpcNumber, "PideOBJ" & j), Asc("-")))
        '240             .Quest.ItemPide(j).Amount = Val(ReadField(2, Leer.GetValue("NPC" & NpcNumber, "PideOBJ" & j), Asc("-")))
        '250         Next j
        '260     End If
        '270     If .Quest.CantDa <> 0 Then
        '280         ReDim .Quest.ItemDa(1 To .Quest.CantDa)
        '290         For j = 1 To .Quest.CantDa
        '300             .Quest.ItemDa(j).ObjIndex = Val(ReadField(1, Leer.GetValue("NPC" & NpcNumber, "DaOBJ" & j), Asc("-")))
        '310             .Quest.ItemDa(j).Amount = Val(ReadField(2, Leer.GetValue("NPC" & NpcNumber, "DaOBJ" & j), Asc("-")))
        '320         Next j
        '330     End If
        '340 End If

150     .flags.Atravesable = Val(Leer.GetValue("NPC" & NpcNumber, "Atravesable"))
160     .Velocity = Val(Leer.GetValue("NPC" & NpcNumber, "Velocity"))

170     If .Velocity = 0 Then .Velocity = 400    'Velocidad Defeult

180     .TimerGolpe = TempTick + Rnd * 120
190     .GolpeTimer = Val(Leer.GetValue("NPC" & NpcNumber, "GolpeTimer"))
200     .TiempoInvocacion = Val(Leer.GetValue("NPC" & NpcNumber, "TiempoInvocacion"))
210     .MaxMascotas = Val(Leer.GetValue("NPC" & NpcNumber, "MaxMascotas"))

220     If .MaxMascotas = 0 Then .MaxMascotas = 1
230     ReDim .ListMascotas(1 To .MaxMascotas) As Integer

240     .invisible = Val(Leer.GetValue("NPC" & NpcNumber, "Invisible"))
250     If .GolpeTimer = 0 Then .GolpeTimer = 1700    'Timer de Golpe para NPC's

260     .RangoVision = Val(Leer.GetValue("NPC" & NpcNumber, "RangoVision"))    '[MODIFICADO] Rango de vision para sacerdotes - 25/2/10 MaTeO
270     .ID = NpcNumber
280     .Name = Leer.GetValue("NPC" & NpcNumber, "Name")
290     .desc = Leer.GetValue("NPC" & NpcNumber, "Desc")
300     .desc1 = Leer.GetValue("NPC" & NpcNumber, "Desc1")
310     .desc2 = Leer.GetValue("NPC" & NpcNumber, "Desc2")
320     .flags.AguaValida = Val(Leer.GetValue("NPC" & NpcNumber, "AguaValida"))
330     .flags.TierraInvalida = Val(Leer.GetValue("NPC" & NpcNumber, "TierraInValida"))
340     .flags.Faccion = Val(Leer.GetValue("NPC" & NpcNumber, "Faccion"))
350     .NPCtype = Val(Leer.GetValue("NPC" & NpcNumber, "NpcType"))

        #If AutoDuelos = 1 Then
360         If .NPCtype = eNPCType.Duelo1vs1 Then
370             NpcIndex1vs1 = NpcIndex
380         ElseIf .NPCtype = eNPCType.Duelo2vs2 Then
390             NpcIndex2vs2 = NpcIndex
400         End If
        #End If

410     .Char.body = Val(Leer.GetValue("NPC" & NpcNumber, "Body"))
420     .Char.Head = Val(Leer.GetValue("NPC" & NpcNumber, "Head"))
430     .Char.ShieldAnim = Val(Leer.GetValue("NPC" & NpcNumber, "Escudo"))
440     .Char.WeaponAnim = Val(Leer.GetValue("NPC" & NpcNumber, "Arma"))
450     .Char.CascoAnim = Val(Leer.GetValue("NPC" & NpcNumber, "Casco"))
460     If .Char.CascoAnim = 0 Then .Char.CascoAnim = 2
470     If .Char.WeaponAnim = 0 Then .Char.WeaponAnim = 2
480     If .Char.ShieldAnim = 0 Then .Char.ShieldAnim = 2
490     .Char.heading = Val(Leer.GetValue("NPC" & NpcNumber, "Heading"))
500     .Attackable = Val(Leer.GetValue("NPC" & NpcNumber, "Attackable"))
510     .Comercia = Val(Leer.GetValue("NPC" & NpcNumber, "Comercia"))
520     .Hostile = Val(Leer.GetValue("NPC" & NpcNumber, "Hostile"))
530     .flags.OldHostil = .Hostile
540     .NpcLvl = Val(Leer.GetValue("NPC" & NpcNumber, "NpcLvl"))    '[/About] 28-12-12
550     .GiveEXP = Val(Leer.GetValue("NPC" & NpcNumber, "GiveEXP"))
560     .flags.ExpCount = .GiveEXP
570     .Veneno = Val(Leer.GetValue("NPC" & NpcNumber, "Veneno"))
580     .flags.Domable = Val(Leer.GetValue("NPC" & NpcNumber, "Domable"))
590     .GiveGLD = Val(Leer.GetValue("NPC" & NpcNumber, "GiveGLD"))    '[/About] Oro por 10
600     .PoderAtaque = Val(Leer.GetValue("NPC" & NpcNumber, "PoderAtaque"))
610     .PoderEvasion = Val(Leer.GetValue("NPC" & NpcNumber, "PoderEvasion"))
620     .InvReSpawn = Val(Leer.GetValue("NPC" & NpcNumber, "InvReSpawn"))
630     .STATS.MaxHP = Val(Leer.GetValue("NPC" & NpcNumber, "MaxHP"))
640     .STATS.MinHP = Val(Leer.GetValue("NPC" & NpcNumber, "MinHP"))
650     .STATS.MaxHit = Val(Leer.GetValue("NPC" & NpcNumber, "MaxHIT"))
660     .STATS.MinHit = Val(Leer.GetValue("NPC" & NpcNumber, "MinHIT"))
670     .STATS.def = Val(Leer.GetValue("NPC" & NpcNumber, "DEF"))
680     .STATS.defM = Val(Leer.GetValue("NPC" & NpcNumber, "DEFm"))
690     .STATS.Alineacion = Val(Leer.GetValue("NPC" & NpcNumber, "Alineacion"))

        Dim LoopC               As Integer
        Dim ln                  As String

700     .Invent.NroItems = Val(Leer.GetValue("NPC" & NpcNumber, "NROITEMS"))

710     For LoopC = 1 To .Invent.NroItems
720         ln = Leer.GetValue("NPC" & NpcNumber, "Obj" & LoopC)
730         .Invent.Object(LoopC).ObjIndex = Val(ReadField(1, ln, 45))
740         .Invent.Object(LoopC).Amount = Val(ReadField(2, ln, 45))
750     Next LoopC

760     .Drop.NroItems = Val(Leer.GetValue("NPC" & NpcNumber, "NRODROP"))

770     For LoopC = 1 To .Drop.NroItems
780         ln = Leer.GetValue("NPC" & NpcNumber, "Drop" & LoopC)
790         .Drop.Object(LoopC).ObjIndex = Val(ReadField(1, ln, 45))
800         .Drop.Object(LoopC).Amount = Val(ReadField(2, ln, 45))
810         .Drop.Object(LoopC).ProbTirar = Val(ReadField(3, ln, 45))
820     Next LoopC

830     .flags.LanzaSpells = Val(Leer.GetValue("NPC" & NpcNumber, "LanzaSpells"))

840     If .flags.LanzaSpells > 0 Then ReDim .Spells(1 To .flags.LanzaSpells)
850     For LoopC = 1 To .flags.LanzaSpells
860         .Spells(LoopC) = Val(Leer.GetValue("NPC" & NpcNumber, "Sp" & LoopC))
            'If .Spells(LoopC) = 0 Then Call MsgBox("¡¡ERROR EN EL NPC NUMERO " & NpcNumber & " TIENE UN HECHIZO INVALIDO REVISAR LOS HECHIZOS DEL NPC!!!")
870     Next LoopC

880     .flags.NPCActive = True
890     .flags.UseAINow = False
900     .flags.Respawn = 0
910     .flags.Backup = Val(Leer.GetValue("NPC" & NpcNumber, "BackUp"))
920     .flags.RespawnOrigPos = Val(Leer.GetValue("NPC" & NpcNumber, "OrigPos"))
930     .flags.AfectaBender = Val(Leer.GetValue("NPC" & NpcNumber, "AfectaBender"))    '[/About] AfectaBender
940     .flags.RemueveInvisibilidad = Val(Leer.GetValue("NPC" & NpcNumber, "RemueveInvisibilidad"))    '[/MaTeO] RemueveInvisibilidad ^^
950     .flags.Equipo = Val(Leer.GetValue("NPC" & NpcNumber, "Equipo"))    '[/MaTeO] RemueveInvisibilidad ^^
960     .flags.ShowName = Val(Leer.GetValue("NPC" & NpcNumber, "ShowName"))    '[/MaTeO] Muestra el nombre ^^
970     .flags.priv = Val(Leer.GetValue("NPC" & NpcNumber, "Priv"))    '[/MaTeO] Privilegios para el color ^^
980     .flags.AfectaParalisis = Val(Leer.GetValue("NPC" & NpcNumber, "AfectaParalisis"))
990     .flags.GolpeExacto = Val(Leer.GetValue("NPC" & NpcNumber, "GolpeExacto"))
1000    .flags.Snd1 = Val(Leer.GetValue("NPC" & NpcNumber, "Snd1"))
1010    .flags.Snd2 = Val(Leer.GetValue("NPC" & NpcNumber, "Snd2"))
1020    .flags.Snd3 = Val(Leer.GetValue("NPC" & NpcNumber, "Snd3"))

        '<<<<<<<<<<<<<< Expresiones >>>>>>>>>>>>>>>>
        Dim aux                 As String
1030    aux = Leer.GetValue("NPC" & NpcNumber, "NROEXP")
1040    If LenB(aux) = 0 Then
1050        .NroExpresiones = 0
1060    Else
1070        .NroExpresiones = Val(aux)
1080        ReDim .Expresiones(1 To .NroExpresiones) As String
1090        For LoopC = 1 To .NroExpresiones
1100            .Expresiones(LoopC) = Leer.GetValue("NPC" & NpcNumber, "Exp" & LoopC)
1110        Next LoopC
1120    End If
        '<<<<<<<<<<<<<< Expresiones >>>>>>>>>>>>>>>>

        'Tipo de items con los que comercia
1130    .TipoItems = Val(Leer.GetValue("NPC" & NpcNumber, "TipoItems"))

        'Devuelve el nuevo Indice
1140    OpenNPC = NpcIndex
1150 End With

1160 On Error GoTo 0
1170 Exit Function

OpenNPC_Error:

1180 Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure OpenNPC of Módulo modNPCs Linea: " & Erl())

End Function

Public Sub LoadNPCRespawn()

Dim nFile                       As Integer
Dim i                           As Long

    On Error GoTo LoadNPCRespawn_Error

20  nFile = FreeFile()

30  If FileExist(DatPath & "\Respawn.dat", vbArchive) Then

40      Open DatPath & "\Respawn.dat" For Binary As #nFile
50      Get #nFile, , NPCRespawnCount
60      ReDim NPCRespawn(NPCRespawnCount)
70      ReDim NPCRespawn2(NPCRespawnCount)

80      For i = 0 To NPCRespawnCount - 1
90          With NPCRespawn(i)
100             .Order = i
110             Get #nFile, , .AreaX
120             Get #nFile, , .AreaY
130             Get #nFile, , .Count
140             Get #nFile, , .ID
150             Get #nFile, , .Pos
160             Get #nFile, , .RespawnTime
170             Get #nFile, , .Nivel
180             Get #nFile, , .FactorMulExp
190             Get #nFile, , .FactorMulGold
200             Get #nFile, , .MinHour
210             Get #nFile, , .MaxHour
220             Get #nFile, , .WithCountUsers

                '@ Fix algunos bugs.
                '.Nivel = Abs(.Nivel)

                '@ Para ampliar la cantidad de datos del array, usamos un array suplente con los nuevos datos, y luego guardamos con esos nuevos datos cargados, para no perder los viejos.
                '                    NPCRespawn2(i).AreaX = .AreaX
                '                    NPCRespawn2(i).AreaY = .AreaY
                '                    NPCRespawn2(i).Count = .Count
                '                    NPCRespawn2(i).ID = .ID
                '                    NPCRespawn2(i).Pos = .Pos
                '                    NPCRespawn2(i).RespawnTime = .RespawnTime
                '                    NPCRespawn2(i).Nivel = -.Nivel
                '                    NPCRespawn2(i).FactorMulExp = .FactorMulExp
                '                    NPCRespawn2(i).MinHour = .MinHour
                '                    NPCRespawn2(i).MaxHour = .MaxHour
                'NPCRespawn2(i).WithCountUsers = .WithCountUsers

                'Debug.Print " Num: " & .ID & " resp time: " & .RespawnTime & " factor: " & .FactorMulExp
230         End With
240     Next i
250     Close #nFile
260 End If

    On Error GoTo 0
    Exit Sub

LoadNPCRespawn_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure LoadNPCRespawn of Módulo modNPCs Linea: " & Erl())
End Sub

Public Sub OrganizarNPC(ByVal Tipo As Byte)
Dim temp                        As Long

    On Error GoTo OrganizarNPC_Error

10  ReDim TempNPCRespawn(NPCRespawnCount)
20  TempNPCRespawnCount = 0
    Dim i                       As Long
    Dim j                       As Long
    Dim k                       As Long

30  For i = 0 To NPCRespawnCount - 1
40      TempNPCRespawn(TempNPCRespawnCount) = i
50      If TempNPCRespawnCount > 0 Then
60          k = TempNPCRespawnCount
70          For j = TempNPCRespawnCount To 1 Step -1
80              If NPCRespawn(TempNPCRespawn(k)).ID And NPCRespawn(TempNPCRespawn(k - 1)).ID Then
90                  If CalculateNPC(Tipo, NPCRespawn(TempNPCRespawn(k)).ID) > CalculateNPC(Tipo, NPCRespawn(TempNPCRespawn(k - 1)).ID) Then
100                     temp = TempNPCRespawn(k - 1)
110                     TempNPCRespawn(k - 1) = TempNPCRespawn(k)
120                     TempNPCRespawn(k) = temp
130                     k = k - 1
140                 Else
                        'Debug.Print "Exit >.<"
150                     Exit For
160                 End If
170             End If
180         Next j
190     End If

200     TempNPCRespawnCount = TempNPCRespawnCount + 1
210 Next i

    On Error GoTo 0
    Exit Sub

OrganizarNPC_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure OrganizarNPC of Módulo modNPCs Linea: " & Erl())
End Sub

Private Function CalculateNPC(ByVal Tipo As Byte, ByVal NpcIndex As Integer) As Single

   On Error GoTo CalculateNPC_Error

10        Select Case Tipo
              Case 0    'Nivel
20                CalculateNPC = NpcList(NpcIndex).NpcLvl
30            Case 1    'Promedio
40                CalculateNPC = Round(NpcList(NpcIndex).GiveEXP / NpcList(NpcIndex).STATS.MaxHP, 2)
50            Case 2    'Oro
60                CalculateNPC = NpcList(NpcIndex).GiveGLD
70        End Select

   On Error GoTo 0
   Exit Function

CalculateNPC_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure CalculateNPC of Módulo modNPCs Linea: " & Erl())

End Function

