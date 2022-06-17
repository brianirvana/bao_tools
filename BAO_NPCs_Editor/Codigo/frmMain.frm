VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "BenderAO - NPC Editor."
   ClientHeight    =   12765
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   19485
   LinkTopic       =   "Form1"
   ScaleHeight     =   851
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   1299
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtMinHour 
      Height          =   285
      Left            =   1200
      TabIndex        =   42
      Text            =   "0"
      Top             =   6480
      Width           =   2055
   End
   Begin VB.CommandButton cmdListar 
      Caption         =   "ListarNPCS"
      Height          =   375
      Left            =   2280
      TabIndex        =   33
      Top             =   8760
      Width           =   1095
   End
   Begin VB.CommandButton cmdBuscar 
      Caption         =   "Buscar Item"
      Height          =   375
      Left            =   1320
      TabIndex        =   32
      Top             =   8760
      Width           =   975
   End
   Begin VB.Frame Frame 
      Caption         =   "Visor de Respawns"
      Height          =   3375
      Left            =   120
      TabIndex        =   16
      Top             =   9240
      Width           =   3255
      Begin VB.CommandButton cmdWizard 
         Caption         =   "Wizard Format"
         Height          =   495
         Left            =   2160
         TabIndex        =   37
         Top             =   1200
         Width           =   975
      End
      Begin VB.ComboBox ComboNPCS 
         Height          =   315
         ItemData        =   "frmMain.frx":0000
         Left            =   120
         List            =   "frmMain.frx":0002
         Style           =   2  'Dropdown List
         TabIndex        =   17
         Top             =   840
         Width           =   2895
      End
      Begin VB.Label lblInfoTimeRespawn 
         Caption         =   "Reaparece en;"
         Height          =   255
         Left            =   120
         TabIndex        =   25
         Top             =   2520
         Width           =   2175
      End
      Begin VB.Label lblInfoMinHit 
         BackStyle       =   0  'Transparent
         Caption         =   "Golpe min: "
         Height          =   255
         Left            =   120
         TabIndex        =   24
         Top             =   2280
         Width           =   3015
      End
      Begin VB.Label lblInfoNpcs 
         BackStyle       =   0  'Transparent
         Caption         =   "Buscar la información de la siguiente criatura:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   120
         TabIndex        =   23
         Top             =   360
         Width           =   2655
      End
      Begin VB.Label lblInfoLvl 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Nivel de la criatura:"
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   120
         TabIndex        =   22
         Top             =   1320
         Width           =   1365
      End
      Begin VB.Label lblInfoExp 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Experiencia: "
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   120
         TabIndex        =   21
         Top             =   1560
         Width           =   915
      End
      Begin VB.Label lblInfoOro 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Oro:"
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   120
         TabIndex        =   20
         Top             =   1800
         Width           =   300
      End
      Begin VB.Label lblInfoDrops 
         BackStyle       =   0  'Transparent
         Caption         =   "Drops:"
         ForeColor       =   &H00000000&
         Height          =   795
         Left            =   120
         TabIndex        =   19
         Top             =   2760
         Width           =   2985
      End
      Begin VB.Label lblInfoVida 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "Vida:"
         ForeColor       =   &H00000000&
         Height          =   195
         Left            =   120
         TabIndex        =   18
         Top             =   2040
         Width           =   360
      End
   End
   Begin VB.Timer timerBuscar 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   3480
      Top             =   0
   End
   Begin VB.PictureBox picMain 
      Height          =   14940
      Left            =   3480
      ScaleHeight     =   992
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   1400
      TabIndex        =   2
      Top             =   0
      Width           =   21060
      Begin VB.PictureBox Area 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         ForeColor       =   &H80000008&
         Height          =   12060
         Left            =   240
         ScaleHeight     =   802
         ScaleMode       =   3  'Pixel
         ScaleWidth      =   1002
         TabIndex        =   3
         Top             =   120
         Width           =   15060
         Begin VB.Shape NPC 
            BackStyle       =   1  'Opaque
            BorderColor     =   &H0000FFFF&
            FillColor       =   &H0000FFFF&
            FillStyle       =   0  'Solid
            Height          =   150
            Index           =   0
            Left            =   3360
            Top             =   1800
            Visible         =   0   'False
            Width           =   150
         End
         Begin VB.Shape AreaNPC 
            BorderColor     =   &H0000FFFF&
            FillColor       =   &H0000FFFF&
            FillStyle       =   4  'Upward Diagonal
            Height          =   735
            Left            =   2280
            Top             =   3840
            Width           =   975
         End
      End
   End
   Begin VB.Frame frameM 
      Caption         =   "Respawn Editor"
      Height          =   8655
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   3255
      Begin VB.CommandButton cmdCopyRespawn 
         Caption         =   "Add Copy Respawn"
         Height          =   495
         Left            =   120
         TabIndex        =   49
         Top             =   8040
         Width           =   975
      End
      Begin VB.CommandButton cmdUpdateOrder 
         Caption         =   "Update"
         Height          =   255
         Left            =   2280
         TabIndex        =   48
         Top             =   2880
         Width           =   735
      End
      Begin VB.TextBox txtCountUsersRespawn 
         Height          =   285
         Left            =   1080
         TabIndex        =   46
         Text            =   "0"
         Top             =   7200
         Width           =   2055
      End
      Begin VB.TextBox txtMaxHour 
         Height          =   285
         Left            =   1080
         TabIndex        =   43
         Text            =   "0"
         Top             =   6840
         Width           =   2055
      End
      Begin VB.TextBox txtSearch 
         Height          =   285
         Left            =   1200
         TabIndex        =   40
         Top             =   360
         Width           =   1815
      End
      Begin VB.TextBox txtExp 
         Height          =   285
         Left            =   1080
         TabIndex        =   38
         Text            =   "0"
         Top             =   6120
         Width           =   2055
      End
      Begin VB.TextBox txtRespawnOrder 
         Height          =   285
         Left            =   1080
         TabIndex        =   34
         Text            =   "0"
         Top             =   2880
         Width           =   1095
      End
      Begin VB.TextBox txtAreaY 
         Height          =   285
         Left            =   1080
         TabIndex        =   30
         Text            =   "0"
         Top             =   3960
         Width           =   2055
      End
      Begin VB.TextBox txtFactor 
         Height          =   285
         Left            =   1080
         TabIndex        =   28
         Text            =   "0"
         Top             =   5760
         Width           =   2055
      End
      Begin VB.TextBox txtNPCLvl 
         Height          =   285
         Left            =   1080
         TabIndex        =   27
         Text            =   "0"
         Top             =   5400
         Width           =   2055
      End
      Begin VB.CommandButton cmdAgregar 
         Caption         =   "Add"
         Height          =   495
         Left            =   1080
         TabIndex        =   15
         Top             =   8040
         Width           =   975
      End
      Begin VB.CommandButton cmdGuardar 
         Caption         =   "Guardar"
         Enabled         =   0   'False
         Height          =   495
         Left            =   2040
         TabIndex        =   14
         Top             =   8040
         Width           =   1095
      End
      Begin VB.TextBox txtPos 
         Height          =   285
         Left            =   1080
         TabIndex        =   13
         Text            =   "0-0-0"
         Top             =   5040
         Width           =   2055
      End
      Begin VB.TextBox txtCantidad 
         Height          =   285
         Left            =   1080
         TabIndex        =   12
         Text            =   "0"
         Top             =   4680
         Width           =   2055
      End
      Begin VB.TextBox txtRespawnTime 
         Height          =   285
         Left            =   1080
         TabIndex        =   11
         Text            =   "0"
         Top             =   4320
         Width           =   2055
      End
      Begin VB.TextBox txtAreaX 
         Height          =   285
         Left            =   1080
         TabIndex        =   10
         Text            =   "0"
         Top             =   3600
         Width           =   2055
      End
      Begin VB.TextBox txtNumero 
         Height          =   285
         Left            =   1080
         TabIndex        =   9
         Text            =   "0"
         Top             =   3240
         Width           =   2055
      End
      Begin VB.ListBox lstNPCs 
         Height          =   2010
         Left            =   120
         TabIndex        =   1
         Top             =   720
         Width           =   3015
      End
      Begin VB.Label lblHP 
         Height          =   255
         Left            =   1080
         TabIndex        =   50
         Top             =   7560
         Width           =   1935
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "CountUsers:"
         Height          =   255
         Index           =   14
         Left            =   120
         TabIndex        =   47
         Top             =   7200
         Width           =   855
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "MinHour:"
         Height          =   255
         Index           =   13
         Left            =   240
         TabIndex        =   45
         Top             =   6480
         Width           =   735
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "MaxHour:"
         Height          =   255
         Index           =   12
         Left            =   240
         TabIndex        =   44
         Top             =   6840
         Width           =   735
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Buscar NPC"
         Height          =   255
         Index           =   11
         Left            =   120
         TabIndex        =   41
         Top             =   360
         Width           =   975
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Experiencia:"
         Height          =   255
         Index           =   10
         Left            =   120
         TabIndex        =   39
         Top             =   6120
         Width           =   855
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Order:"
         Height          =   255
         Index           =   9
         Left            =   120
         TabIndex        =   36
         Top             =   2880
         Width           =   855
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Area Y:"
         Height          =   255
         Index           =   7
         Left            =   240
         TabIndex        =   31
         Top             =   3960
         Width           =   735
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Factor *:"
         Height          =   255
         Index           =   6
         Left            =   120
         TabIndex        =   29
         Top             =   5760
         Width           =   855
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Nivel:"
         Height          =   255
         Index           =   5
         Left            =   120
         TabIndex        =   26
         Top             =   5400
         Width           =   855
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Map-X-Y:"
         Height          =   255
         Index           =   4
         Left            =   240
         TabIndex        =   8
         Top             =   5040
         Width           =   735
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Cantidad:"
         Height          =   255
         Index           =   3
         Left            =   240
         TabIndex        =   7
         Top             =   4680
         Width           =   735
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "RspwTime:"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   6
         Top             =   4320
         Width           =   855
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Area X:"
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   5
         Top             =   3600
         Width           =   735
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Num NPC:"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   4
         Top             =   3240
         Width           =   855
      End
   End
   Begin VB.Label lblInfo 
      Alignment       =   1  'Right Justify
      Caption         =   "Num NPC:"
      Height          =   255
      Index           =   8
      Left            =   120
      TabIndex        =   35
      Top             =   3120
      Width           =   975
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private tmpOrder As Integer

Private cachePictures(1 To 4) As IPictureDisp

Private Type POINTAPI
    X                           As Long
    Y                           As Long
End Type

Private tmpBuscar               As String
Private lastBuscar              As String

Private Declare Function GetCursorPos Lib "user32" (lpPoint As POINTAPI) As Long

Private ClickPos                As POINTAPI
Private TempPos                 As POINTAPI
Public NumMapa                  As Integer
Public MouseX                   As Single
Public MouseY                   As Single
Public ClickX                   As Integer
Public ClickY                   As Integer
Public InClick                  As Boolean


Public bChanginExp              As Boolean
Public iIDNpcSelected           As Integer
Public SelectedRespawnIndex     As Integer

Private Sub Area_DblClick()
    txtPos.Text = NumMapa & "-" & MouseX & "-" & MouseY
    
End Sub

Private Sub Area_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)

    MouseX = X
    MouseY = Y
    
    If Button = 1 Then
        If InClick = False Then
            Call GetCursorPos(ClickPos)
            ClickX = Area.Left
            ClickY = Area.Top
            InClick = True
            Debug.Print "Activado"
        End If
        
        Call GetCursorPos(TempPos)
        Area.Top = ClickY + TempPos.Y - ClickPos.Y
        Area.Left = ClickX + TempPos.X - ClickPos.X
        Debug.Print "Pos: " & X & "-" & Y

    Else
        Debug.Print "Falsee Pos: " & X & "-" & Y
        InClick = False
    End If
    
End Sub

Private Sub cmdAgregar_Click()
    NPCRespawnCount = NPCRespawnCount + 1
    ReDim Preserve NPCRespawn(NPCRespawnCount)
    lstNPCs.AddItem "(NONE)-" & lstNPCs.ListCount
    cmdGuardar.Enabled = True
End Sub

Private Sub cmdBuscar_Click()
    Dim NombreItem As String
    NombreItem = InputBox("Escribe el nombre del item que estas buscando.")
    
    Dim i As Long
    Dim EsTrue As Boolean
    Dim EnLoop As Boolean
    
    Dim min As Integer
    Dim Max As Integer
    min = ComboNPCS.ListIndex
    If min = -1 Then min = 0
    Max = NumFormatRespawn - 1
VolverHacer:
    For i = min To Max
        With FormatRespawn(i)
            If InStr(1, UCase$(.Drop), UCase$(NombreItem)) And i <> ComboNPCS.ListIndex Then
                EsTrue = True
                Exit For
            End If
        End With
    Next i
    If EsTrue = False And EnLoop = False Then
        min = 0
        Max = ComboNPCS.ListIndex - 1
        If Max = -1 Then Max = 0
        EnLoop = True
        GoTo VolverHacer
    End If
    
    If EsTrue Then
        ComboNPCS.ListIndex = i
    Else
        MsgBox "No se ha encontrado un NPC que tenga un item similar al que usted escribio."
    End If
End Sub

Private Sub cmdCopyRespawn_Click()

'FALTA TERMINAR!
    NPCRespawnCount = NPCRespawnCount + 1
    ReDim Preserve NPCRespawn(NPCRespawnCount)

    With NPCRespawn(NPCRespawnCount - 1)
    
        'iIDNpcSelected = NpcIndex
        'NpcIndex = .ID
        .ID = NPCRespawn(iIDNpcSelected).ID  'Val(txtNumero.Text)
        lstNPCs.AddItem NpcList(.ID).Name & "-" & NPCRespawn(iIDNpcSelected).ID & "-" & lstNPCs.ListCount  'Val(txtNumero.Text) & "-" & lstNPCs.ListCount
        .Pos.Map = NPCRespawn(iIDNpcSelected).Pos.Map 'ReadField(1, txtPos.Text, 45)
        .Pos.X = NPCRespawn(iIDNpcSelected).Pos.X  ' ReadField(2, txtPos.Text, 45)
        .Pos.Y = NPCRespawn(iIDNpcSelected).Pos.Y 'ReadField(3, txtPos.Text, 45)
        .AreaX = NPCRespawn(iIDNpcSelected).AreaX ' txtAreaX.Text
        .AreaY = NPCRespawn(iIDNpcSelected).AreaY ' txtAreaY.Text
        .Nivel = NPCRespawn(iIDNpcSelected).Nivel ' txtNPCLvl.Text
        .FactorMulExp = NPCRespawn(iIDNpcSelected).FactorMulExp 'txtFactor.Text
        .MinHour = NPCRespawn(iIDNpcSelected).MinHour 'txtMinHour.Text
        .MaxHour = NPCRespawn(iIDNpcSelected).MaxHour 'txtMaxHour.Text
        .WithCountUsers = NPCRespawn(iIDNpcSelected).WithCountUsers 'txtCountUsersRespawn.Text
        .RespawnTime = NPCRespawn(iIDNpcSelected).RespawnTime  'txtRespawnTime.Text
        .Count = NPCRespawn(iIDNpcSelected).Count 'txtCantidad.Text
        .Order = NPCRespawnCount
        
    End With
    
End Sub

Private Sub cmdGuardar_Click()
    
    Call lstNPCs_Click
    Call SaveNPCRespawn
    cmdGuardar.Enabled = False
    
End Sub

Private Sub cmdListar_Click()

Dim i As Long

    For i = 0 To NumFormatRespawn - 1
        With FormatRespawn(i)
            ComboNPCS.AddItem .Nombre & " - Mapa " & .Respawns(0).Pos.Map
        End With
    Next i

End Sub

Private Sub cmdUpdateOrder_Click()

Dim bFirstFound                 As Boolean
Dim i                           As Integer
Dim tmpNewOrder                 As Integer

    tmpNewOrder = Val(txtRespawnOrder.Text)
    tmptNPCRespawn = NPCRespawn
    bFirstFound = False

    If tmpNewOrder > UBound(NPCRespawn) Then
        MsgBox "El nuevo órden del npc no puede ser mayor al número de respawns totales existentes: " & UBound(NPCRespawn)
        Exit Sub
    End If
    
    For i = 0 To UBound(NPCRespawn)
        '¿Existe y no soy el que está modificado?
        If NPCRespawn(i).Order = tmpNewOrder And i <> tmpOrder Then
            NPCRespawn(i) = tmptNPCRespawn(tmpOrder)
            If bFirstFound Then
                Call SaveNPCRespawn
                Call lstNPCs.Clear
                Call LoadNPCs
                Exit Sub
            End If
        Else
            If Not bFirstFound Then
                NPCRespawn(tmpOrder) = tmptNPCRespawn(tmpNewOrder)
                bFirstFound = True
            End If
        End If
    Next i
    
End Sub

Private Sub ComboNPCS_Click()

Dim index                       As Integer
    index = ComboNPCS.ListIndex
    If index = -1 Then Exit Sub

    'RespawnIndex As Integer
    'RespawnIndex = ComboNPCS.ListIndex
    'If RespawnIndex = -1 Then Exit Sub

    With FormatRespawn(index)
        Me.lblInfoLvl.Caption = "Nivel de la criatura: " & .Nivel
        Me.lblInfoExp.Caption = "Experiencia: " & .Experiencia
        Me.lblInfoOro.Caption = "Oro: " & .Oro
        Me.lblInfoVida.Caption = "Vida: " & .Vida
        Me.lblInfoDrops.Caption = "Drops: " & .Drop
    '    Me.lblInfoMinHit.Caption = "Golpe: " & .MinHit & "/" & .MaxHit
    '    Me.lblInfoTimeRespawn.Caption = "Reparece en: " & .TiempoRespawn & " segundos."
    End With

End Sub

Private Sub cmdWizard_Click()

    Call modFormatRespawn.ProcessFormat
    Call modFormatRespawn.SaveFormatRespawn

End Sub

Private Sub Form_Load()
    
    Set cachePictures(1) = LoadPicture(App.Path & "\MAPS\MiniMapa1.jpg")
    Set cachePictures(2) = LoadPicture(App.Path & "\MAPS\MiniMapa2.jpg")
    Set cachePictures(3) = LoadPicture(App.Path & "\MAPS\MiniMapa3.jpg")
    Set cachePictures(4) = LoadPicture(App.Path & "\MAPS\MiniMapa4.jpg")
    frmMain.Caption = "V" & App.Major & "." & App.Minor & "." & App.Revision
End Sub
'
'Private Sub FindNpcByName(ByVal sName As String)
'
'Dim NpcIndex                    As Integer
'Dim i                           As Long
'Dim sNameNpc                    As String
'Dim IDRespawn                   As Long
'
'    sNameNpc = ReadField(1, sName, 45)
'    IDRespawn = Val(ReadField(3, sName, 45))
'
'    For i = 0 To UBound(NPCRespawn)
'        If NPCRespawn(i).ID > 0 Then
'            If StrComp(sNameNpc, NpcList(NPCRespawn(i).ID).Name) = 0 And IDRespawn = i Then
'                With NPCRespawn(i)
'
'                    '[/About] Indices generales:
'                    iIDNpcSelected = .ID
'                    iNpcIndexSelected = i
'
'                    NpcIndex = .ID
'                    Area.Top = -.Pos.Y + (picMain.Height / 2)
'                    Area.Left = -.Pos.X + (picMain.Width / 2)
'
'                    If Area.Top > 0 Then Area.Top = 0
'                    If Area.Left > 0 Then Area.Left = 0
'
'                    If Area.Top < -Area.Height + picMain.Height Then Area.Top = -Area.Height + picMain.Height
'                    If Area.Left < -Area.Width + picMain.Width Then Area.Left = -Area.Width + picMain.Width
'
'                    AreaNPC.Top = .Pos.Y - .AreaY / 2
'                    AreaNPC.Left = .Pos.X - .AreaX / 2
'                    AreaNPC.Width = .AreaX
'                    AreaNPC.Height = .AreaY
'                    AreaNPC.Visible = True
'
'                    If NumMapa <> .Pos.Map And .Pos.Map <> 0 And .Pos.Map >= 1 And .Pos.Map <= 3 Then
'                        Area.picture = cachePictures(.Pos.Map) 'LoadPicture(App.Path & "\MiniMapa" & .Pos.Map & ".jpg")
'                        NumMapa = .Pos.Map
'                    Else
'                        'MsgBox "Mapa inválido"
'                    End If
'
'                    txtNumero.Text = .ID
'                    txtPos.Text = .Pos.Map & "-" & .Pos.X & "-" & .Pos.Y
'                    txtRespawnTime.Text = .RespawnTime
'                    txtCantidad.Text = .Count
'                    txtAreaX.Text = .AreaX
'                    txtAreaY.Text = .AreaY
'                    txtNPCLvl.Text = .Nivel
'                    txtFactor.Text = .FactorMulExp
'
'                    Dim tExp As Double
'                    tExp = ((NpcList(.ID).STATS.MaxHP * 2) * .FactorMulExp)
'                    tExp = tExp + (tExp * ExpMul)
'                    txtExp.Text = Round(tExp, 0)
'                End With
'            End If
'        End If
'    Next i
'
'End Sub
Private Sub updateArea(ByVal RespawnIndex As Integer)
    With NPCRespawn(RespawnIndex)
        Area.Top = -.Pos.Y + (picMain.Height / 2)
        Area.Left = -.Pos.X + (picMain.Width / 2)

        If Area.Top > 0 Then Area.Top = 0
        If Area.Left > 0 Then Area.Left = 0

        If Area.Top < -Area.Height + picMain.Height Then Area.Top = -Area.Height + picMain.Height
        If Area.Left < -Area.Width + picMain.Width Then Area.Left = -Area.Width + picMain.Width

        AreaNPC.Top = .Pos.Y - .AreaY / 2
        AreaNPC.Left = .Pos.X - .AreaX / 2
        AreaNPC.Width = .AreaX
        AreaNPC.Height = .AreaY
        AreaNPC.Visible = True
    End With
End Sub

Private Sub lstNPCs_Click()

Dim NpcIndex                    As Integer
Dim RespawnIndex                As Integer
Dim NPCName                     As String

    On Error GoTo lstNPCs_Click_Error:

    frmMain.Caption = "Cargando..."
    lstNPCs.Enabled = False
    'DoEvents

    If lstNPCs.ListIndex = -1 Then Exit Sub
    
    RespawnIndex = ReadField(3, lstNPCs.List(lstNPCs.ListIndex), Asc("-"))
    txtRespawnOrder.Text = RespawnIndex
    'Call FindNpcByName(lstNPCs.List(RespawnIndex))
    
    With NPCRespawn(RespawnIndex)
        iIDNpcSelected = RespawnIndex ' NpcIndex
        NpcIndex = .ID
        
        SelectedRespawnIndex = RespawnIndex
        Call updateArea(RespawnIndex)
        
         If NumMapa <> .Pos.Map And .Pos.Map <> 0 And .Pos.Map >= 1 And .Pos.Map <= 4 Then
            Area.Picture = cachePictures(.Pos.Map)
            NumMapa = .Pos.Map
        Else
            'MsgBox "Mapa inválido"
            Debug.Print "Mapa Inválido: " & .Pos.Map & " " & .Pos.X & " " & .Pos.Y
        End If

        txtNumero.Text = .ID
        txtPos.Text = .Pos.Map & "-" & .Pos.X & "-" & .Pos.Y
        txtRespawnTime.Text = .RespawnTime
        txtCantidad.Text = .Count
        txtAreaX.Text = .AreaX
        txtAreaY.Text = .AreaY
        txtNPCLvl.Text = .Nivel
        txtFactor.Text = .FactorMulExp
        
        txtMinHour.Text = .MinHour
        txtMaxHour.Text = .MaxHour
        txtCountUsersRespawn.Text = .WithCountUsers

        If .ID > 0 Then
            Dim tExp As Double
            tExp = ((NpcList(.ID).STATS.MaxHP * 2) * .FactorMulExp)
            tExp = tExp + (tExp * ExpMul)
            txtExp.Text = Round(tExp, 0)
            NPCName = NpcList(.ID).Name
        Else
            txtExp.Text = ""
            NPCName = "NONE"
        End If
        
        lblHP.Caption = "Vida: " & NpcList(.ID).STATS.MaxHP

    End With
    
    lstNPCs.Enabled = True
    lstNPCs.SetFocus
    frmMain.Caption = "NPC Seleccionado: " & NPCName
    tmpOrder = Val(txtRespawnOrder.Text)

lstNPCs_Click_Error:
    Debug.Print "Error: " & Err.Number & " " & Err.Description & " Linea: " & Erl
    lstNPCs.Enabled = True

End Sub

Private Sub lstNPCs_DblClick()

'Dim NpcIndex                    As Integer
'Dim RespawnIndex                As Integer
'
'    frmMain.Caption = "Cargando..."
'    DoEvents
'
'    RespawnIndex = lstNPCs.ListIndex
'    If RespawnIndex = -1 Then Exit Sub
'
'    Call FindNpcByName(lstNPCs.List(RespawnIndex))
'
End Sub

Private Sub lstNPCs_KeyDown(KeyCode As Integer, Shift As Integer)

    If KeyCode = vbKeyF3 Then
        tmpBuscar = lastBuscar
        frmMain.Caption = "Buscando numero " & tmpBuscar
        timerBuscar.Enabled = False
        timerBuscar.Enabled = True
    End If
    
End Sub

Private Sub lstNPCs_KeyPress(KeyAscii As Integer)

    Debug.Print KeyAscii
    
    If KeyAscii >= 48 And KeyAscii <= 57 Then
        'Numeros
        tmpBuscar = tmpBuscar & Chr$(KeyAscii)
        frmMain.Caption = "Buscando numero " & tmpBuscar
        timerBuscar.Enabled = False
        timerBuscar.Enabled = True
    End If
    
End Sub

Private Sub txtCountUsersRespawn_Change()

    txtCountUsersRespawn.Text = Val(txtCountUsersRespawn.Text)
    
    Dim WithCountUsers As Integer
    WithCountUsers = Val(txtCountUsersRespawn.Text)
    
    NPCRespawn(SelectedRespawnIndex).WithCountUsers = WithCountUsers
    cmdGuardar.Enabled = True

End Sub

Private Sub txtExp_Change()

Dim tFactor As Single
Dim tExp As Double

    If bChanginExp Then
        If iIDNpcSelected <= UBound(NpcList) Then
            If Val(txtExp.Text) > 0 Then
                tFactor = Val(txtExp.Text) / (NpcList(iIDNpcSelected).STATS.MaxHP * 2)
                If tFactor > 0 Then
                    txtFactor.Text = tFactor
                End If
                bChanginExp = False
            End If
        End If
    End If
    
End Sub

Private Sub txtExp_KeyDown(KeyCode As Integer, Shift As Integer)
    bChanginExp = True
End Sub

Private Sub txtMaxHour_Change()
    txtMaxHour.Text = Val(txtMaxHour.Text)
    Dim MaxHour As Integer
    MaxHour = Val(txtMaxHour.Text)
    
    NPCRespawn(SelectedRespawnIndex).MaxHour = MaxHour
    cmdGuardar.Enabled = True
End Sub


Private Sub txtMinHour_Change()
    txtMinHour.Text = Val(txtMinHour.Text)
    Dim MinHour As Integer
    MinHour = Val(txtMinHour.Text)
    
    NPCRespawn(SelectedRespawnIndex).MinHour = MinHour
    cmdGuardar.Enabled = True
End Sub

Private Sub txtRespawnOrder_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    tmpOrder = Val(txtRespawnOrder.Text)
End Sub

Private Sub txtSearch_Change()

Dim i                           As Long
    
    If lstNPCs.ListCount > 0 Then
        lstNPCs.Clear
        For i = 0 To UBound(NPCRespawn)
            If NPCRespawn(i).ID > 0 Then
                If InStr(1, UCase$(NpcList(NPCRespawn(i).ID).Name), UCase$(txtSearch.Text)) Then
                    frmMain.lstNPCs.AddItem NpcList(NPCRespawn(i).ID).Name & "-" & NPCRespawn(i).ID & "-" & i
                    'frmMain.lstNPCs.ItemData(frmMain.lstNPCs.ListCount - 1) = i
                    Debug.Print "Clic en txtSearch: " & NpcList(NPCRespawn(i).ID).Name
                End If
            End If
        Next i
    Else
        Call LoadNPCs
    End If
    
End Sub

Private Sub timerBuscar_Timer()

    Dim i As Long
    Dim Found As Boolean
    Dim min As Long
    
    min = lstNPCs.ListIndex
    
    If min = -1 Then min = 0
    
    For i = min To NPCRespawnCount - 1
        With NPCRespawn(i)
            If .ID = Val(tmpBuscar) And i <> min Then
                lstNPCs.ListIndex = i
                Found = True
                Exit For
            End If
        End With
    Next i
    
    If Found = False Then
        For i = 0 To min - 1
            With NPCRespawn(i)
                If .ID = Val(tmpBuscar) And i <> min Then
                    lstNPCs.ListIndex = i
                    Found = True
                    Exit For
                End If
            End With
        Next i
    End If
    
    If Found Then
        frmMain.Caption = "Encontrado :D"
    Else
        frmMain.Caption = "No se ha encontrado."
    End If
    
    timerBuscar.Enabled = False
    lastBuscar = tmpBuscar
    tmpBuscar = vbNullString
    
End Sub

Private Sub txtAreaX_Change()

    txtAreaX.Text = Val(txtAreaX.Text)
    
    NPCRespawn(SelectedRespawnIndex).AreaX = Val(txtAreaX.Text)
    
    'If lstNPCs.Enabled Then Call lstNPCs_Click
    If lstNPCs.Enabled Then Call updateArea(SelectedRespawnIndex)
    cmdGuardar.Enabled = True
    
End Sub

Private Sub txtAreaY_Change()
    
    txtAreaY.Text = Val(txtAreaY.Text)
    
    NPCRespawn(SelectedRespawnIndex).AreaY = Val(txtAreaY.Text)
    
    'If lstNPCs.Enabled Then Call lstNPCs_Click
    If lstNPCs.Enabled Then Call updateArea(SelectedRespawnIndex)
    cmdGuardar.Enabled = True
    
End Sub

Private Sub txtCantidad_Change()
    
    txtCantidad.Text = Val(txtCantidad.Text)
    
    NPCRespawn(SelectedRespawnIndex).Count = Val(txtCantidad.Text)
    cmdGuardar.Enabled = True
    
End Sub

Private Sub txtFactor_Change()
    '
    Dim Factor As Single
    Factor = Val(Replace(txtFactor.Text, ",", "."))
    'txtFactor.Text = Factor
    
    NPCRespawn(SelectedRespawnIndex).FactorMulExp = Factor
    cmdGuardar.Enabled = True
    
End Sub

Private Sub txtNPCLvl_Change()

    txtNPCLvl.Text = Val(txtNPCLvl.Text)
    Dim Nivel As Integer
    Nivel = Val(txtNPCLvl.Text)
    
    NPCRespawn(SelectedRespawnIndex).Nivel = Nivel
    cmdGuardar.Enabled = True
    
End Sub

Private Sub txtNumero_Change()

    txtNumero.Text = Val(txtNumero.Text)
    
    Dim NpcIndex As Integer
    
    NpcIndex = Val(txtNumero.Text)
    
    If NpcIndex = 0 Then
        lstNPCs.List(SelectedRespawnIndex) = "(NONE)-0-" & lstNPCs.ListIndex
    Else
        If NpcList(NpcIndex).Active = 0 Then
            Call OpenNPC(NpcIndex, False)
        End If
        'lstNPCs.List(lstNPCs.ListIndex) = NpcList(NpcIndex).Name & "-" & NpcIndex & "-" & lstNPCs.ListIndex
        'lstNPCs.List(SelectedRespawnIndex) = NpcList(NpcIndex).Name & "-" & NpcIndex & "-" & iNpcIndexSelected
    End If
    
    NPCRespawn(SelectedRespawnIndex).ID = NpcIndex
    cmdGuardar.Enabled = True
    
    If lstNPCs.Enabled Then Call updateArea(SelectedRespawnIndex)
    cmdGuardar.Enabled = True
    
End Sub

Private Sub txtPos_Change()

    Static NoProcess As Boolean
    
    If NoProcess = True Then Exit Sub
    
    NoProcess = True
    
    Dim Map As Long
    Dim X As Long
    Dim Y As Long
    
    Map = Val(ReadField(1, txtPos.Text, Asc("-")))
    X = Val(ReadField(2, txtPos.Text, Asc("-")))
    Y = Val(ReadField(3, txtPos.Text, Asc("-")))
        
    NPCRespawn(SelectedRespawnIndex).Pos.Map = Map
    NPCRespawn(SelectedRespawnIndex).Pos.X = X
    NPCRespawn(SelectedRespawnIndex).Pos.Y = Y
    
    'Call lstNPCs_Click
    
    txtPos.Text = Map & "-" & X & "-" & Y
    
    NoProcess = False
    cmdGuardar.Enabled = True
    
    If lstNPCs.Enabled Then Call updateArea(SelectedRespawnIndex)
    cmdGuardar.Enabled = True
    
End Sub

Private Sub txtRespawnTime_Change()

    txtRespawnTime.Text = Val(txtRespawnTime.Text)

    NPCRespawn(SelectedRespawnIndex).RespawnTime = Val(txtRespawnTime.Text)
    cmdGuardar.Enabled = True
    
End Sub
