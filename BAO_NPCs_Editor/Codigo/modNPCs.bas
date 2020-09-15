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
    CharIndex                   As Integer
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
    ObjIndex                    As Integer
    Amount                      As Integer
    Limpiar                     As Long
End Type


Private Type tQuest
    Quest                       As Byte
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
    Alineacion                  As Integer
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
    ProbTirar                   As Byte
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

Public Type tNPCRespawn
    ID                          As Integer
    AreaX                       As Integer
    AreaY                       As Integer
    RespawnTime                 As Long
    TickCount                   As Long
    Count                       As Integer
    CountRespawn                As Integer
    Nivel                       As Integer
    FactorMulExp                As Single
    Pos                         As WorldPos
    PosRespawns()               As WorldPos
    NumPosRespawns              As Long
    MinHour                     As Byte
    MaxHour                     As Byte
End Type

Private LeerNPCs                As New clsIniReader
Attribute LeerNPCs.VB_VarUserMemId = 1073741831

Public Sub SaveNPCRespawn()

Dim nFile                       As Integer
Dim i                           As Long
    
    nFile = FreeFile()
    
    Open DatPath & "\Respawn.dat" For Binary As #nFile
        Put #nFile, , NPCRespawnCount
        For i = 0 To NPCRespawnCount - 1
            With NPCRespawn(i)
                Put #nFile, , .AreaX
                Put #nFile, , .AreaY
                Put #nFile, , .Count
                Put #nFile, , .ID
                Put #nFile, , .Pos
                Put #nFile, , .RespawnTime
                Put #nFile, , .Nivel
                Put #nFile, , .FactorMulExp
                Put #nFile, , .MinHour
                Put #nFile, , .MaxHour
            End With
        Next i
    Close #nFile
    
End Sub

Public Sub LoadNPCs()

    Call LeerNPCs.Initialize(DatPath & "NPCs.dat")

    Call LoadNPCRespawn
    
    Dim i                       As Long
    Dim j                       As Long
    
    For i = 0 To NPCRespawnCount - 1
        If NPCRespawn(i).ID Then
            Call OpenNPC(NPCRespawn(i).ID)
            frmMain.lstNPCs.AddItem NpcList(NPCRespawn(i).ID).Name & "-" & NPCRespawn(i).ID & "-" & i
            'Debug.Print "Clic en LoadNPCs: " & NpcList(NPCRespawn(i).ID).Name
        Else
            frmMain.lstNPCs.AddItem "(NONE)-0-" & i
        End If
        'frmMain.Caption = "Cargando NPC numero " & i + 1 & " de " & NPCRespawnCount
        'DoEvents
    Next i

    frmMain.lstNPCs.ListIndex = 0

    Call OrganizarNPC(0)

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
    TempTick = GetTickCount And &H7FFFFFFF

    Set Leer = LeerNPCs


    'If requested index is invalid, abort
    If Not Leer.KeyExists("NPC" & NpcNumber) Then
        OpenNPC = 0
        Exit Function
    End If

    NpcIndex = NpcNumber


    NpcList(NpcIndex).TimerAI = TempTick + Rnd * 500
    NpcList(NpcIndex).PasosSound = Val(Leer.GetValue("NPC" & NpcNumber, "SND4"))

    NpcList(NpcIndex).PuedeRobar = Val(Leer.GetValue("NPC" & NpcNumber, "PuedeRobar"))

    NpcList(NpcIndex).Velocity = Val(Leer.GetValue("NPC" & NpcNumber, "Velocity"))

    NpcList(NpcIndex).Quest.Quest = Val(Leer.GetValue("NPC" & NpcNumber, "Quest"))
    If NpcList(NpcIndex).Quest.Quest <> 0 Then
        NpcList(NpcIndex).Quest.ReDoo = Leer.GetValue("NPC" & NpcNumber, "ReDo")
        NpcList(NpcIndex).Quest.OroDa = Val(Leer.GetValue("NPC" & NpcNumber, "OroDa"))
        NpcList(NpcIndex).Quest.OroPide = Val(Leer.GetValue("NPC" & NpcNumber, "OroPide"))
        NpcList(NpcIndex).Quest.ExpDa = Val(Leer.GetValue("NPC" & NpcNumber, "ExpDa"))
        NpcList(NpcIndex).Quest.CantPide = Val(Leer.GetValue("NPC" & NpcNumber, "CantPide"))
        NpcList(NpcIndex).Quest.CantDa = Val(Leer.GetValue("NPC" & NpcNumber, "CantDa"))
        Dim j                   As Byte
        If NpcList(NpcIndex).Quest.CantPide <> 0 Then
            ReDim NpcList(NpcIndex).Quest.ItemPide(1 To NpcList(NpcIndex).Quest.CantPide)
            For j = 1 To NpcList(NpcIndex).Quest.CantPide
                NpcList(NpcIndex).Quest.ItemPide(j).ObjIndex = Val(ReadField(1, Leer.GetValue("NPC" & NpcNumber, "PideOBJ" & j), Asc("-")))
                NpcList(NpcIndex).Quest.ItemPide(j).Amount = Val(ReadField(2, Leer.GetValue("NPC" & NpcNumber, "PideOBJ" & j), Asc("-")))
            Next j
        End If
        If NpcList(NpcIndex).Quest.CantDa <> 0 Then
            ReDim NpcList(NpcIndex).Quest.ItemDa(1 To NpcList(NpcIndex).Quest.CantDa)
            For j = 1 To NpcList(NpcIndex).Quest.CantDa
                NpcList(NpcIndex).Quest.ItemDa(j).ObjIndex = Val(ReadField(1, Leer.GetValue("NPC" & NpcNumber, "DaOBJ" & j), Asc("-")))
                NpcList(NpcIndex).Quest.ItemDa(j).Amount = Val(ReadField(2, Leer.GetValue("NPC" & NpcNumber, "DaOBJ" & j), Asc("-")))
            Next j
        End If
    End If
    NpcList(NpcIndex).flags.Atravesable = Val(Leer.GetValue("NPC" & NpcNumber, "Atravesable"))

    NpcList(NpcIndex).Velocity = Val(Leer.GetValue("NPC" & NpcNumber, "Velocity"))
    If NpcList(NpcIndex).Velocity = 0 Then NpcList(NpcIndex).Velocity = 400    'Velocidad Defeult

    NpcList(NpcIndex).TimerGolpe = TempTick + Rnd * 120
    NpcList(NpcIndex).GolpeTimer = Val(Leer.GetValue("NPC" & NpcNumber, "GolpeTimer"))

    NpcList(NpcIndex).TiempoInvocacion = Val(Leer.GetValue("NPC" & NpcNumber, "TiempoInvocacion"))
    NpcList(NpcIndex).MaxMascotas = Val(Leer.GetValue("NPC" & NpcNumber, "MaxMascotas"))
    If NpcList(NpcIndex).MaxMascotas = 0 Then NpcList(NpcIndex).MaxMascotas = 1
    ReDim NpcList(NpcIndex).ListMascotas(1 To NpcList(NpcIndex).MaxMascotas) As Integer

    NpcList(NpcIndex).invisible = Val(Leer.GetValue("NPC" & NpcNumber, "Invisible"))
    If NpcList(NpcIndex).GolpeTimer = 0 Then NpcList(NpcIndex).GolpeTimer = 1700    'Timer de Golpe para NPC's

    NpcList(NpcIndex).RangoVision = Val(Leer.GetValue("NPC" & NpcNumber, "RangoVision"))    '[MODIFICADO] Rango de vision para sacerdotes - 25/2/10 MaTeO
    NpcList(NpcIndex).ID = NpcNumber
    NpcList(NpcIndex).Name = Leer.GetValue("NPC" & NpcNumber, "Name")
    NpcList(NpcIndex).desc = Leer.GetValue("NPC" & NpcNumber, "Desc")
    NpcList(NpcIndex).desc1 = Leer.GetValue("NPC" & NpcNumber, "Desc1")
    NpcList(NpcIndex).desc2 = Leer.GetValue("NPC" & NpcNumber, "Desc2")



    NpcList(NpcIndex).flags.AguaValida = Val(Leer.GetValue("NPC" & NpcNumber, "AguaValida"))
    NpcList(NpcIndex).flags.TierraInvalida = Val(Leer.GetValue("NPC" & NpcNumber, "TierraInValida"))
    NpcList(NpcIndex).flags.Faccion = Val(Leer.GetValue("NPC" & NpcNumber, "Faccion"))

    NpcList(NpcIndex).NPCtype = Val(Leer.GetValue("NPC" & NpcNumber, "NpcType"))
    #If AutoDuelos = 1 Then
        If NpcList(NpcIndex).NPCtype = eNPCType.Duelo1vs1 Then
            NpcIndex1vs1 = NpcIndex
        ElseIf NpcList(NpcIndex).NPCtype = eNPCType.Duelo2vs2 Then
            NpcIndex2vs2 = NpcIndex
        End If
    #End If
    NpcList(NpcIndex).Char.body = Val(Leer.GetValue("NPC" & NpcNumber, "Body"))
    NpcList(NpcIndex).Char.Head = Val(Leer.GetValue("NPC" & NpcNumber, "Head"))
    NpcList(NpcIndex).Char.ShieldAnim = Val(Leer.GetValue("NPC" & NpcNumber, "Escudo"))
    NpcList(NpcIndex).Char.WeaponAnim = Val(Leer.GetValue("NPC" & NpcNumber, "Arma"))
    NpcList(NpcIndex).Char.CascoAnim = Val(Leer.GetValue("NPC" & NpcNumber, "Casco"))
    If NpcList(NpcIndex).Char.CascoAnim = 0 Then NpcList(NpcIndex).Char.CascoAnim = 2
    If NpcList(NpcIndex).Char.WeaponAnim = 0 Then NpcList(NpcIndex).Char.WeaponAnim = 2
    If NpcList(NpcIndex).Char.ShieldAnim = 0 Then NpcList(NpcIndex).Char.ShieldAnim = 2
    NpcList(NpcIndex).Char.heading = Val(Leer.GetValue("NPC" & NpcNumber, "Heading"))
    NpcList(NpcIndex).Attackable = Val(Leer.GetValue("NPC" & NpcNumber, "Attackable"))
    NpcList(NpcIndex).Comercia = Val(Leer.GetValue("NPC" & NpcNumber, "Comercia"))
    NpcList(NpcIndex).Hostile = Val(Leer.GetValue("NPC" & NpcNumber, "Hostile"))
    NpcList(NpcIndex).flags.OldHostil = NpcList(NpcIndex).Hostile
    NpcList(NpcIndex).NpcLvl = Val(Leer.GetValue("NPC" & NpcNumber, "NpcLvl"))    '[/About] 28-12-12
    'If HayHappyHour = True Then
    '    NpcList(NpcIndex).GiveEXP = val(Leer.GetValue("NPC" & NpcNumber, "GiveEXP")) * ExpMul * HappyHour
    'Else
    NpcList(NpcIndex).GiveEXP = Val(Leer.GetValue("NPC" & NpcNumber, "GiveEXP"))
    'End If
    NpcList(NpcIndex).flags.ExpCount = NpcList(NpcIndex).GiveEXP
    NpcList(NpcIndex).Veneno = Val(Leer.GetValue("NPC" & NpcNumber, "Veneno"))
    NpcList(NpcIndex).flags.Domable = Val(Leer.GetValue("NPC" & NpcNumber, "Domable"))
    NpcList(NpcIndex).GiveGLD = Val(Leer.GetValue("NPC" & NpcNumber, "GiveGLD"))    '[/About] Oro por 10
    NpcList(NpcIndex).PoderAtaque = Val(Leer.GetValue("NPC" & NpcNumber, "PoderAtaque"))
    NpcList(NpcIndex).PoderEvasion = Val(Leer.GetValue("NPC" & NpcNumber, "PoderEvasion"))
    NpcList(NpcIndex).InvReSpawn = Val(Leer.GetValue("NPC" & NpcNumber, "InvReSpawn"))

    NpcList(NpcIndex).STATS.MaxHP = Val(Leer.GetValue("NPC" & NpcNumber, "MaxHP"))
    NpcList(NpcIndex).STATS.MinHP = Val(Leer.GetValue("NPC" & NpcNumber, "MinHP"))
    NpcList(NpcIndex).STATS.MaxHit = Val(Leer.GetValue("NPC" & NpcNumber, "MaxHIT"))
    NpcList(NpcIndex).STATS.MinHit = Val(Leer.GetValue("NPC" & NpcNumber, "MinHIT"))
    NpcList(NpcIndex).STATS.def = Val(Leer.GetValue("NPC" & NpcNumber, "DEF"))
    NpcList(NpcIndex).STATS.defM = Val(Leer.GetValue("NPC" & NpcNumber, "DEFm"))
    NpcList(NpcIndex).STATS.Alineacion = Val(Leer.GetValue("NPC" & NpcNumber, "Alineacion"))


    Dim LoopC                   As Integer
    Dim ln                      As String
    NpcList(NpcIndex).Invent.NroItems = Val(Leer.GetValue("NPC" & NpcNumber, "NROITEMS"))
    For LoopC = 1 To NpcList(NpcIndex).Invent.NroItems
        ln = Leer.GetValue("NPC" & NpcNumber, "Obj" & LoopC)
        NpcList(NpcIndex).Invent.Object(LoopC).ObjIndex = Val(ReadField(1, ln, 45))
        NpcList(NpcIndex).Invent.Object(LoopC).Amount = Val(ReadField(2, ln, 45))
    Next LoopC

    NpcList(NpcIndex).Drop.NroItems = Val(Leer.GetValue("NPC" & NpcNumber, "NRODROP"))
    For LoopC = 1 To NpcList(NpcIndex).Drop.NroItems
        ln = Leer.GetValue("NPC" & NpcNumber, "Drop" & LoopC)
        NpcList(NpcIndex).Drop.Object(LoopC).ObjIndex = Val(ReadField(1, ln, 45))
        NpcList(NpcIndex).Drop.Object(LoopC).Amount = Val(ReadField(2, ln, 45))
        NpcList(NpcIndex).Drop.Object(LoopC).ProbTirar = Val(ReadField(3, ln, 45))
    Next LoopC

    NpcList(NpcIndex).flags.LanzaSpells = Val(Leer.GetValue("NPC" & NpcNumber, "LanzaSpells"))
    If NpcList(NpcIndex).flags.LanzaSpells > 0 Then ReDim NpcList(NpcIndex).Spells(1 To NpcList(NpcIndex).flags.LanzaSpells)
    For LoopC = 1 To NpcList(NpcIndex).flags.LanzaSpells
        NpcList(NpcIndex).Spells(LoopC) = Val(Leer.GetValue("NPC" & NpcNumber, "Sp" & LoopC))
        'If NpcList(NpcIndex).Spells(LoopC) = 0 Then Call LogError("¡¡ERROR EN EL NPC NUMERO " & NpcNumber & " TIENE UN HECHIZO INVALIDO REVISAR LOS HECHIZOS DEL NPC!!!")
    Next LoopC



    NpcList(NpcIndex).flags.NPCActive = True
    NpcList(NpcIndex).flags.UseAINow = False


    NpcList(NpcIndex).flags.Respawn = 0


    NpcList(NpcIndex).flags.Backup = Val(Leer.GetValue("NPC" & NpcNumber, "BackUp"))
    NpcList(NpcIndex).flags.RespawnOrigPos = Val(Leer.GetValue("NPC" & NpcNumber, "OrigPos"))
    NpcList(NpcIndex).flags.AfectaBender = Val(Leer.GetValue("NPC" & NpcNumber, "AfectaBender"))    '[/About] AfectaBender
    NpcList(NpcIndex).flags.RemueveInvisibilidad = Val(Leer.GetValue("NPC" & NpcNumber, "RemueveInvisibilidad"))    '[/MaTeO] RemueveInvisibilidad ^^
    NpcList(NpcIndex).flags.Equipo = Val(Leer.GetValue("NPC" & NpcNumber, "Equipo"))    '[/MaTeO] RemueveInvisibilidad ^^
    NpcList(NpcIndex).flags.ShowName = Val(Leer.GetValue("NPC" & NpcNumber, "ShowName"))    '[/MaTeO] Muestra el nombre ^^
    NpcList(NpcIndex).flags.priv = Val(Leer.GetValue("NPC" & NpcNumber, "Priv"))    '[/MaTeO] Privilegios para el color ^^
    NpcList(NpcIndex).flags.AfectaParalisis = Val(Leer.GetValue("NPC" & NpcNumber, "AfectaParalisis"))
    NpcList(NpcIndex).flags.GolpeExacto = Val(Leer.GetValue("NPC" & NpcNumber, "GolpeExacto"))


    NpcList(NpcIndex).flags.Snd1 = Val(Leer.GetValue("NPC" & NpcNumber, "Snd1"))
    NpcList(NpcIndex).flags.Snd2 = Val(Leer.GetValue("NPC" & NpcNumber, "Snd2"))
    NpcList(NpcIndex).flags.Snd3 = Val(Leer.GetValue("NPC" & NpcNumber, "Snd3"))

    '<<<<<<<<<<<<<< Expresiones >>>>>>>>>>>>>>>>

    Dim aux                     As String
    aux = Leer.GetValue("NPC" & NpcNumber, "NROEXP")
    If LenB(aux) = 0 Then
        NpcList(NpcIndex).NroExpresiones = 0
    Else
        NpcList(NpcIndex).NroExpresiones = Val(aux)
        ReDim NpcList(NpcIndex).Expresiones(1 To NpcList(NpcIndex).NroExpresiones) As String
        For LoopC = 1 To NpcList(NpcIndex).NroExpresiones
            NpcList(NpcIndex).Expresiones(LoopC) = Leer.GetValue("NPC" & NpcNumber, "Exp" & LoopC)
        Next LoopC
    End If

    '<<<<<<<<<<<<<< Expresiones >>>>>>>>>>>>>>>>

    'Tipo de items con los que comercia
    NpcList(NpcIndex).TipoItems = Val(Leer.GetValue("NPC" & NpcNumber, "TipoItems"))


    'Devuelve el nuevo Indice
    OpenNPC = NpcIndex

End Function

Public Sub LoadNPCRespawn()
    
 Dim nFile                      As Integer
 Dim i                          As Long

   On Error GoTo LoadNPCRespawn_Error

    nFile = FreeFile()
    
    If FileExist(DatPath & "\Respawn.dat", vbArchive) Then
    
        Open DatPath & "\Respawn.dat" For Binary As #nFile
            Get #nFile, , NPCRespawnCount
            ReDim NPCRespawn(NPCRespawnCount)
            
            For i = 0 To NPCRespawnCount - 1
                With NPCRespawn(i)
                    Get #nFile, , .AreaX
                    Get #nFile, , .AreaY
                    Get #nFile, , .Count
                    Get #nFile, , .ID
                    Get #nFile, , .Pos
                    Get #nFile, , .RespawnTime
                    Get #nFile, , .Nivel
                    Get #nFile, , .FactorMulExp
                    Get #nFile, , .MinHour
                    Get #nFile, , .MaxHour
                    'Debug.Print " Num: " & .ID & " resp time: " & .RespawnTime & " factor: " & .FactorMulExp
                End With
            Next i
        Close #nFile
    End If

   On Error GoTo 0
   Exit Sub

LoadNPCRespawn_Error:

'    Call LogError("Error " & Err.Number & " Descripción: & (" & Err.Description & ") del procedimiento LoadNPCRespawn del Módulo AI" & " En la linea: " & Erl)
End Sub

Public Sub OrganizarNPC(ByVal Tipo As Byte)
    Dim temp As Long
    
    ReDim TempNPCRespawn(NPCRespawnCount)
    TempNPCRespawnCount = 0
    Dim i As Long
    Dim j As Long
    Dim k As Long

    For i = 0 To NPCRespawnCount - 1
        TempNPCRespawn(TempNPCRespawnCount) = i
        If TempNPCRespawnCount > 0 Then
            k = TempNPCRespawnCount
            For j = TempNPCRespawnCount To 1 Step -1
                If NPCRespawn(TempNPCRespawn(k)).ID And NPCRespawn(TempNPCRespawn(k - 1)).ID Then
                    If CalculateNPC(Tipo, NPCRespawn(TempNPCRespawn(k)).ID) > CalculateNPC(Tipo, NPCRespawn(TempNPCRespawn(k - 1)).ID) Then
                        temp = TempNPCRespawn(k - 1)
                        TempNPCRespawn(k - 1) = TempNPCRespawn(k)
                        TempNPCRespawn(k) = temp
                        k = k - 1
                    Else
                        'Debug.Print "Exit >.<"
                        Exit For
                    End If
                End If
            Next j
        End If
        
        TempNPCRespawnCount = TempNPCRespawnCount + 1
    Next i
End Sub
Private Function CalculateNPC(ByVal Tipo As Byte, ByVal NpcIndex As Integer) As Single
    Select Case Tipo
        Case 0 'Nivel
            CalculateNPC = NpcList(NpcIndex).NpcLvl
        Case 1 'Promedio
            CalculateNPC = Round(NpcList(NpcIndex).GiveEXP / NpcList(NpcIndex).STATS.MaxHP, 2)
        Case 2 'Oro
            CalculateNPC = NpcList(NpcIndex).GiveGLD
    End Select
End Function

