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
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   1200
      TabIndex        =   42
      Text            =   "0"
      Top             =   6600
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
      Top             =   120
      Width           =   3255
      Begin VB.TextBox txtFactorOro 
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1080
         TabIndex        =   51
         Text            =   "0"
         Top             =   7560
         Width           =   735
      End
      Begin VB.CommandButton cmdCopyRespawn 
         Caption         =   "Add Copy Respawn"
         Height          =   375
         Left            =   120
         TabIndex        =   49
         Top             =   8160
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
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1080
         TabIndex        =   46
         Text            =   "0"
         Top             =   7200
         Width           =   2055
      End
      Begin VB.TextBox txtMaxHour 
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1080
         TabIndex        =   43
         Text            =   "0"
         Top             =   6840
         Width           =   2055
      End
      Begin VB.TextBox txtSearch 
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1200
         TabIndex        =   40
         Top             =   360
         Width           =   1815
      End
      Begin VB.TextBox txtExp 
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1080
         TabIndex        =   38
         Text            =   "0"
         Top             =   6120
         Width           =   2055
      End
      Begin VB.TextBox txtRespawnOrder 
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1080
         TabIndex        =   34
         Text            =   "0"
         Top             =   2880
         Width           =   1095
      End
      Begin VB.TextBox txtAreaY 
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1080
         TabIndex        =   30
         Text            =   "0"
         Top             =   3960
         Width           =   2055
      End
      Begin VB.TextBox txtFactor 
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1080
         TabIndex        =   28
         Text            =   "0"
         Top             =   5760
         Width           =   2055
      End
      Begin VB.TextBox txtNPCLvl 
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1080
         TabIndex        =   27
         Text            =   "0"
         Top             =   5400
         Width           =   2055
      End
      Begin VB.CommandButton cmdAgregar 
         Caption         =   "Add"
         Height          =   375
         Left            =   1080
         TabIndex        =   15
         Top             =   8160
         Width           =   975
      End
      Begin VB.CommandButton cmdGuardar 
         Caption         =   "Guardar"
         Enabled         =   0   'False
         Height          =   375
         Left            =   2040
         TabIndex        =   14
         Top             =   8160
         Width           =   1095
      End
      Begin VB.TextBox txtPos 
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1080
         TabIndex        =   13
         Text            =   "0-0-0"
         Top             =   5040
         Width           =   2055
      End
      Begin VB.TextBox txtCantidad 
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1080
         TabIndex        =   12
         Text            =   "0"
         Top             =   4680
         Width           =   2055
      End
      Begin VB.TextBox txtRespawnTime 
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1080
         TabIndex        =   11
         Text            =   "0"
         Top             =   4320
         Width           =   2055
      End
      Begin VB.TextBox txtAreaX 
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1080
         TabIndex        =   10
         Text            =   "0"
         Top             =   3600
         Width           =   2055
      End
      Begin VB.TextBox txtNumero 
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1080
         TabIndex        =   9
         Text            =   "0"
         Top             =   3240
         Width           =   2055
      End
      Begin VB.ListBox lstNPCs 
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   2010
         Left            =   120
         TabIndex        =   1
         Top             =   720
         Width           =   3015
      End
      Begin VB.Label lblGoldGive 
         BeginProperty Font 
            Name            =   "Calibri"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1800
         TabIndex        =   53
         Top             =   7560
         Width           =   1335
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Factor Oro*:"
         Height          =   255
         Index           =   16
         Left            =   120
         TabIndex        =   52
         Top             =   7560
         Width           =   855
      End
      Begin VB.Label lblHP 
         Height          =   255
         Left            =   1080
         TabIndex        =   50
         Top             =   7920
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

Private tmpOrder                As Integer

Private cachePictures(1 To 4)   As IPictureDisp

Private Type POINTAPI
    X                               As Long
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

    On Error GoTo Area_MouseMove_Error

10  MouseX = X
20  MouseY = Y

30  If Button = 1 Then
40      If InClick = False Then
50          Call GetCursorPos(ClickPos)
60          ClickX = Area.Left
70          ClickY = Area.Top
80          InClick = True
90          Debug.Print "Activado"
100     End If

110     Call GetCursorPos(TempPos)
120     Area.Top = ClickY + TempPos.Y - ClickPos.Y
130     Area.Left = ClickX + TempPos.X - ClickPos.X
140     Debug.Print "Pos: " & X & "-" & Y

150 Else
160     Debug.Print "Falsee Pos: " & X & "-" & Y
170     InClick = False
180 End If

    On Error GoTo 0
    Exit Sub

Area_MouseMove_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure Area_MouseMove of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub cmdAgregar_Click()
    On Error GoTo cmdAgregar_Click_Error

10  NPCRespawnCount = NPCRespawnCount + 1
20  ReDim Preserve NPCRespawn(NPCRespawnCount)
30  lstNPCs.AddItem "(NONE)-" & lstNPCs.ListCount
40  cmdGuardar.Enabled = True

    On Error GoTo 0
    Exit Sub

cmdAgregar_Click_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure cmdAgregar_Click of Formulario frmMain Linea: " & Erl())
End Sub

Private Sub cmdBuscar_Click()
Dim NombreItem                  As String
    On Error GoTo cmdBuscar_Click_Error

10  NombreItem = InputBox("Escribe el nombre del item que estas buscando.")

    Dim i                       As Long
    Dim EsTrue                  As Boolean
    Dim EnLoop                  As Boolean

    Dim min                     As Integer
    Dim Max                     As Integer
20  min = ComboNPCS.ListIndex
30  If min = -1 Then min = 0
40  Max = NumFormatRespawn - 1
VolverHacer:
50  For i = min To Max
60      With FormatRespawn(i)
70          If InStr(1, UCase$(.Drop), UCase$(NombreItem)) And i <> ComboNPCS.ListIndex Then
80              EsTrue = True
90              Exit For
100         End If
110     End With
120 Next i
130 If EsTrue = False And EnLoop = False Then
140     min = 0
150     Max = ComboNPCS.ListIndex - 1
160     If Max = -1 Then Max = 0
170     EnLoop = True
180     GoTo VolverHacer
190 End If

200 If EsTrue Then
210     ComboNPCS.ListIndex = i
220 Else
230     MsgBox "No se ha encontrado un NPC que tenga un item similar al que usted escribio."
240 End If

    On Error GoTo 0
    Exit Sub

cmdBuscar_Click_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure cmdBuscar_Click of Formulario frmMain Linea: " & Erl())
End Sub

Private Sub cmdCopyRespawn_Click()

    'FALTA TERMINAR!
    On Error GoTo cmdCopyRespawn_Click_Error

10  NPCRespawnCount = NPCRespawnCount + 1
20  ReDim Preserve NPCRespawn(NPCRespawnCount)

30  With NPCRespawn(NPCRespawnCount - 1)

        'iIDNpcSelected = NpcIndex
        'NpcIndex = .ID
40      .ID = NPCRespawn(iIDNpcSelected).ID  'Val(txtNumero.Text)
50      lstNPCs.AddItem NpcList(.ID).Name & "-" & NPCRespawn(iIDNpcSelected).ID & "-" & lstNPCs.ListCount  'Val(txtNumero.Text) & "-" & lstNPCs.ListCount
60      .Pos.Map = NPCRespawn(iIDNpcSelected).Pos.Map    'ReadField(1, txtPos.Text, 45)
70      .Pos.X = NPCRespawn(iIDNpcSelected).Pos.X  ' ReadField(2, txtPos.Text, 45)
80      .Pos.Y = NPCRespawn(iIDNpcSelected).Pos.Y    'ReadField(3, txtPos.Text, 45)
90      .AreaX = NPCRespawn(iIDNpcSelected).AreaX    ' txtAreaX.Text
100     .AreaY = NPCRespawn(iIDNpcSelected).AreaY    ' txtAreaY.Text
110     .Nivel = NPCRespawn(iIDNpcSelected).Nivel    ' txtNPCLvl.Text
120     .FactorMulExp = NPCRespawn(iIDNpcSelected).FactorMulExp    'txtFactor.Text
130     .FactorMulGold = NPCRespawn(iIDNpcSelected).FactorMulGold    'txtFactor.Text
140     .MinHour = NPCRespawn(iIDNpcSelected).MinHour    'txtMinHour.Text
150     .MaxHour = NPCRespawn(iIDNpcSelected).MaxHour    'txtMaxHour.Text
160     .WithCountUsers = NPCRespawn(iIDNpcSelected).WithCountUsers    'txtCountUsersRespawn.Text
170     .RespawnTime = NPCRespawn(iIDNpcSelected).RespawnTime  'txtRespawnTime.Text
180     .Count = NPCRespawn(iIDNpcSelected).Count    'txtCantidad.Text
190     .Order = NPCRespawnCount

200 End With

    On Error GoTo 0
    Exit Sub

cmdCopyRespawn_Click_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure cmdCopyRespawn_Click of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub cmdGuardar_Click()

    On Error GoTo cmdGuardar_Click_Error

10  Call lstNPCs_Click
20  Call SaveNPCRespawn
30  cmdGuardar.Enabled = False

    On Error GoTo 0
    Exit Sub

cmdGuardar_Click_Error:

    Call MsgBox("Error " & Err.Number & " (" & Err.Description & ") procedimiento cmdGuardar_Click Formulario frmMain línea: " & Erl())

End Sub

Private Sub cmdListar_Click()

Dim i                           As Long

    On Error GoTo cmdListar_Click_Error

10  For i = 0 To NumFormatRespawn - 1
20      With FormatRespawn(i)
30          ComboNPCS.AddItem .Nombre & " - Mapa " & .Respawns(0).Pos.Map
40      End With
50  Next i

    On Error GoTo 0
    Exit Sub

cmdListar_Click_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure cmdListar_Click of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub cmdUpdateOrder_Click()

Dim bFirstFound                 As Boolean
Dim i                           As Integer
Dim tmpNewOrder                 As Integer
Static LastIndex                As Long


    On Error GoTo cmdUpdateOrder_Click_Error

10  LastIndex = lstNPCs.ListIndex

20  tmpNewOrder = Val(txtRespawnOrder.Text)
30  tmptNPCRespawn = NPCRespawn
40  bFirstFound = False

50  If tmpNewOrder > UBound(NPCRespawn) Then
60      MsgBox "El nuevo órden del npc no puede ser mayor al número de respawns totales existentes: " & UBound(NPCRespawn)
70      Exit Sub
80  End If

90  For i = 0 To UBound(NPCRespawn)
        '¿Existe y no soy el que está modificado?
100     If NPCRespawn(i).Order = tmpNewOrder And i <> tmpOrder Then

110         NPCRespawn(i) = tmptNPCRespawn(tmpOrder)
            'NPCRespawn(i).Order = tmpOrder

120         If bFirstFound Then
130             Call SaveNPCRespawn
140             Call lstNPCs.Clear
150             Call LoadNPCs
                '                        DoEvents
                '                      lstNPCs.Refresh
                '160                   DoEvents

170             lstNPCs.ListIndex = tmpNewOrder
180             Exit Sub
190         End If
200     Else
210         If Not bFirstFound Then
220             NPCRespawn(tmpOrder) = tmptNPCRespawn(tmpNewOrder)    'Ej tmpNewOrder = 5 (tmptNPCRespawn(5).Orden)
230             bFirstFound = True
240         End If
250     End If
260 Next i

270 DoEvents
280 lstNPCs.ListIndex = tmpOrder

    On Error GoTo 0
    Exit Sub

cmdUpdateOrder_Click_Error:

    Call MsgBox("Error " & Err.Number & " (" & Err.Description & ") procedimiento cmdUpdateOrder_Click Formulario frmMain línea: " & Erl())

End Sub

Private Sub ComboNPCS_Click()

Dim Index                       As Integer
    On Error GoTo ComboNPCS_Click_Error

10  Index = ComboNPCS.ListIndex
20  If Index = -1 Then Exit Sub

    'RespawnIndex As Integer
    'RespawnIndex = ComboNPCS.ListIndex
    'If RespawnIndex = -1 Then Exit Sub

30  With FormatRespawn(Index)
40      Me.lblInfoLvl.Caption = "Nivel de la criatura: " & .Nivel
50      Me.lblInfoExp.Caption = "Experiencia: " & .Experiencia
60      Me.lblInfoOro.Caption = "Oro: " & .Oro
70      Me.lblInfoVida.Caption = "Vida: " & .Vida
80      Me.lblInfoDrops.Caption = "Drops: " & .Drop
        '    Me.lblInfoMinHit.Caption = "Golpe: " & .MinHit & "/" & .MaxHit
        '    Me.lblInfoTimeRespawn.Caption = "Reparece en: " & .TiempoRespawn & " segundos."
90  End With

    On Error GoTo 0
    Exit Sub

ComboNPCS_Click_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure ComboNPCS_Click of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub cmdWizard_Click()

    On Error GoTo cmdWizard_Click_Error

10  Call modFormatRespawn.ProcessFormat
20  Call modFormatRespawn.SaveFormatRespawn

    On Error GoTo 0
    Exit Sub

cmdWizard_Click_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure cmdWizard_Click of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub Form_Load()

    On Error GoTo Form_Load_Error

10  Set cachePictures(1) = LoadPicture(App.Path & "\MAPS\MiniMapa1.jpg")
20  Set cachePictures(2) = LoadPicture(App.Path & "\MAPS\MiniMapa2.jpg")
30  Set cachePictures(3) = LoadPicture(App.Path & "\MAPS\MiniMapa3.jpg")
40  Set cachePictures(4) = LoadPicture(App.Path & "\MAPS\MiniMapa4.jpg")
50  frmMain.Caption = "V" & App.Major & "." & App.Minor & "." & App.Revision

    On Error GoTo 0
    Exit Sub

Form_Load_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Formulario frmMain Linea: " & Erl())
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
    On Error GoTo updateArea_Error

10  With NPCRespawn(RespawnIndex)
20      Area.Top = -.Pos.Y + (picMain.Height / 2)
30      Area.Left = -.Pos.X + (picMain.Width / 2)

40      If Area.Top > 0 Then Area.Top = 0
50      If Area.Left > 0 Then Area.Left = 0

60      If Area.Top < -Area.Height + picMain.Height Then Area.Top = -Area.Height + picMain.Height
70      If Area.Left < -Area.Width + picMain.Width Then Area.Left = -Area.Width + picMain.Width

80      AreaNPC.Top = .Pos.Y - .AreaY / 2
90      AreaNPC.Left = .Pos.X - .AreaX / 2
100     AreaNPC.Width = .AreaX
110     AreaNPC.Height = .AreaY
120     AreaNPC.Visible = True
130 End With

    On Error GoTo 0
    Exit Sub

updateArea_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure updateArea of Formulario frmMain Linea: " & Erl())
End Sub

Private Sub lstNPCs_Click()

Dim NpcIndex                    As Integer
Dim RespawnIndex                As Integer
Dim NPCName                     As String

    On Error GoTo lstNPCs_Click_Error:

10  frmMain.Caption = "Cargando..."
20  lstNPCs.Enabled = False
    'DoEvents

30  If lstNPCs.ListIndex = -1 Then Exit Sub

40  RespawnIndex = ReadField(3, lstNPCs.List(lstNPCs.ListIndex), Asc("-"))
50  txtRespawnOrder.Text = RespawnIndex
    'Call FindNpcByName(lstNPCs.List(RespawnIndex))

60  With NPCRespawn(RespawnIndex)
70      iIDNpcSelected = RespawnIndex    ' NpcIndex
80      NpcIndex = .ID

90      SelectedRespawnIndex = RespawnIndex
100     Call updateArea(RespawnIndex)

110     If NumMapa <> .Pos.Map And .Pos.Map <> 0 And .Pos.Map >= 1 And .Pos.Map <= 4 Then
120         Area.Picture = cachePictures(.Pos.Map)
130         NumMapa = .Pos.Map
140     Else
            'MsgBox "Mapa inválido"
150         Debug.Print "Mapa Inválido: " & .Pos.Map & " " & .Pos.X & " " & .Pos.Y
160     End If

170     txtNumero.Text = .ID
180     txtPos.Text = .Pos.Map & "-" & .Pos.X & "-" & .Pos.Y
190     txtRespawnTime.Text = .RespawnTime
200     txtCantidad.Text = .Count
210     txtAreaX.Text = .AreaX
220     txtAreaY.Text = .AreaY
230     txtNPCLvl.Text = .Nivel
240     txtFactor.Text = .FactorMulExp
250     txtFactorOro.Text = .FactorMulGold

260     If .FactorMulGold > 0 Then
270         lblGoldGive.Caption = Round(NpcList(NPCRespawn(SelectedRespawnIndex).ID).GiveGLD * NPCRespawn(SelectedRespawnIndex).FactorMulGold, 0)
280     Else
290         If NPCRespawn(SelectedRespawnIndex).ID > 0 Then
300             lblGoldGive.Caption = NpcList(NPCRespawn(SelectedRespawnIndex).ID).GiveGLD
310         End If
320     End If

330     txtMinHour.Text = .MinHour
340     txtMaxHour.Text = .MaxHour
350     txtCountUsersRespawn.Text = .WithCountUsers

360     If .ID > 0 Then
            Dim tExp            As Double
370         tExp = ((NpcList(.ID).STATS.MaxHP * 2) * .FactorMulExp)
380         tExp = tExp + (tExp * ExpMul)
390         txtExp.Text = Round(tExp, 0)
400         NPCName = NpcList(.ID).Name
410     Else
420         txtExp.Text = ""
430         NPCName = "NONE"
440     End If

450     If .ID > 0 Then
460         lblHP.Caption = "Vida: " & NpcList(.ID).STATS.MaxHP
470     End If

480 End With

490 lstNPCs.Enabled = True
500 lstNPCs.SetFocus
510 frmMain.Caption = "NPC Seleccionado: " & NPCName
520 tmpOrder = Val(txtRespawnOrder.Text)

530 On Error GoTo 0
540 Exit Sub
lstNPCs_Click_Error:
550 Debug.Print "Error: " & Err.Number & " " & Err.Description & " Linea: " & Erl
560 lstNPCs.Enabled = True
570 Call MsgBox("Error " & Err.Number & " (" & Err.Description & ") procedimiento lstNPCs_Click Formulario frmMain línea: " & Erl())

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

10  On Error GoTo lstNPCs_KeyDown_Error

20  If KeyCode = vbKeyF3 Then
30      tmpBuscar = lastBuscar
40      frmMain.Caption = "Buscando numero " & tmpBuscar
50      timerBuscar.Enabled = False
60      timerBuscar.Enabled = True
70  End If

    On Error GoTo 0
    Exit Sub

lstNPCs_KeyDown_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure lstNPCs_KeyDown of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub lstNPCs_KeyPress(KeyAscii As Integer)

10  On Error GoTo lstNPCs_KeyPress_Error

20  Debug.Print KeyAscii

30  If KeyAscii >= 48 And KeyAscii <= 57 Then
        'Numeros
40      tmpBuscar = tmpBuscar & Chr$(KeyAscii)
50      frmMain.Caption = "Buscando numero " & tmpBuscar
60      timerBuscar.Enabled = False
70      timerBuscar.Enabled = True
80  End If

90  On Error GoTo 0
100 Exit Sub

lstNPCs_KeyPress_Error:

110 Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure lstNPCs_KeyPress of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub txtCountUsersRespawn_Change()

    On Error GoTo txtCountUsersRespawn_Change_Error

    txtCountUsersRespawn.Text = Val(txtCountUsersRespawn.Text)

    Dim WithCountUsers          As Integer
    WithCountUsers = Val(txtCountUsersRespawn.Text)

    NPCRespawn(SelectedRespawnIndex).WithCountUsers = WithCountUsers
    cmdGuardar.Enabled = True

    On Error GoTo 0
    Exit Sub

txtCountUsersRespawn_Change_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure txtCountUsersRespawn_Change of Formulario frmMain Linea: " & Erl())

End Sub

'---------------------------------------------------------------------------------------
' Procedure : txtExp_Change
' Author    : bsabatier
' Date      : 14/01/2024
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub txtExp_Change()

Dim tFactor                     As Single
Dim tExp                        As Double

    On Error GoTo txtExp_Change_Error

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

    On Error GoTo 0
    Exit Sub

txtExp_Change_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure txtExp_Change of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub txtExp_KeyDown(KeyCode As Integer, Shift As Integer)
    bChanginExp = True
End Sub

Private Sub txtMaxHour_Change()
    On Error GoTo txtMaxHour_Change_Error

10  txtMaxHour.Text = Val(txtMaxHour.Text)
    Dim MaxHour                 As Integer
20  MaxHour = Val(txtMaxHour.Text)

30  NPCRespawn(SelectedRespawnIndex).MaxHour = MaxHour
40  cmdGuardar.Enabled = True

    On Error GoTo 0
    Exit Sub

txtMaxHour_Change_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure txtMaxHour_Change of Formulario frmMain Linea: " & Erl())
End Sub


Private Sub txtMinHour_Change()
    On Error GoTo txtMinHour_Change_Error

10  txtMinHour.Text = Val(txtMinHour.Text)
    Dim MinHour                 As Integer
20  MinHour = Val(txtMinHour.Text)

30  NPCRespawn(SelectedRespawnIndex).MinHour = MinHour
40  cmdGuardar.Enabled = True

    On Error GoTo 0
    Exit Sub

txtMinHour_Change_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure txtMinHour_Change of Formulario frmMain Linea: " & Erl())
End Sub

Private Sub txtRespawnOrder_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    tmpOrder = Val(txtRespawnOrder.Text)
End Sub

Private Sub txtSearch_Change()

Dim i                           As Long

10  On Error GoTo txtSearch_Change_Error

20  If lstNPCs.ListCount > 0 Then
30      lstNPCs.Clear
40      For i = 0 To UBound(NPCRespawn)
50          If NPCRespawn(i).ID > 0 Then
60              If InStr(1, UCase$(NpcList(NPCRespawn(i).ID).Name), UCase$(txtSearch.Text)) Then
70                  frmMain.lstNPCs.AddItem NpcList(NPCRespawn(i).ID).Name & "-" & NPCRespawn(i).ID & "-" & i
                    'frmMain.lstNPCs.ItemData(frmMain.lstNPCs.ListCount - 1) = i
80                  Debug.Print "Clic en txtSearch: " & NpcList(NPCRespawn(i).ID).Name
90              End If
100         End If
110     Next i
120 Else
130     Call LoadNPCs
140 End If

150 On Error GoTo 0
160 Exit Sub

txtSearch_Change_Error:

170 Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure txtSearch_Change of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub timerBuscar_Timer()

Dim i                           As Long
Dim Found                       As Boolean
Dim min                         As Long

10  On Error GoTo timerBuscar_Timer_Error

20  min = lstNPCs.ListIndex

30  If min = -1 Then min = 0

40  For i = min To NPCRespawnCount - 1
50      With NPCRespawn(i)
60          If .ID = Val(tmpBuscar) And i <> min Then
70              lstNPCs.ListIndex = i
80              Found = True
90              Exit For
100         End If
110     End With
120 Next i

130 If Found = False Then
140     For i = 0 To min - 1
150         With NPCRespawn(i)
160             If .ID = Val(tmpBuscar) And i <> min Then
170                 lstNPCs.ListIndex = i
180                 Found = True
190                 Exit For
200             End If
210         End With
220     Next i
230 End If

240 If Found Then
250     frmMain.Caption = "Encontrado :D"
260 Else
270     frmMain.Caption = "No se ha encontrado."
280 End If

290 timerBuscar.Enabled = False
300 lastBuscar = tmpBuscar
310 tmpBuscar = vbNullString

320 On Error GoTo 0
330 Exit Sub

timerBuscar_Timer_Error:

340 Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure timerBuscar_Timer of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub txtAreaX_Change()

    On Error GoTo txtAreaX_Change_Error

10  txtAreaX.Text = Val(txtAreaX.Text)

20  NPCRespawn(SelectedRespawnIndex).AreaX = Val(txtAreaX.Text)

    'If lstNPCs.Enabled Then Call lstNPCs_Click
30  If lstNPCs.Enabled Then Call updateArea(SelectedRespawnIndex)
40  cmdGuardar.Enabled = True

    On Error GoTo 0
    Exit Sub

txtAreaX_Change_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure txtAreaX_Change of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub txtAreaY_Change()

    On Error GoTo txtAreaY_Change_Error

10  txtAreaY.Text = Val(txtAreaY.Text)

20  NPCRespawn(SelectedRespawnIndex).AreaY = Val(txtAreaY.Text)

    'If lstNPCs.Enabled Then Call lstNPCs_Click
30  If lstNPCs.Enabled Then Call updateArea(SelectedRespawnIndex)
40  cmdGuardar.Enabled = True

    On Error GoTo 0
    Exit Sub

txtAreaY_Change_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure txtAreaY_Change of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub txtCantidad_Change()

    On Error GoTo txtCantidad_Change_Error

10  txtCantidad.Text = Val(txtCantidad.Text)

20  NPCRespawn(SelectedRespawnIndex).Count = Val(txtCantidad.Text)
30  cmdGuardar.Enabled = True

    On Error GoTo 0
    Exit Sub

txtCantidad_Change_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure txtCantidad_Change of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub txtFactor_Change()
    '
Dim Factor                      As Single
10  On Error GoTo txtFactor_Change_Error

20  Factor = Val(Replace(txtFactor.Text, ",", "."))
    'txtFactor.Text = Factor

30  NPCRespawn(SelectedRespawnIndex).FactorMulExp = Factor
40  cmdGuardar.Enabled = True

50  On Error GoTo 0
60  Exit Sub

txtFactor_Change_Error:

70  Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure txtFactor_Change of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub txtFactorOro_Change()
    '
Dim Factor                      As Single
10  On Error GoTo txtFactorOro_Change_Error

20  Factor = Val(Replace(txtFactorOro.Text, ",", "."))
    'txtFactor.Text = Factor

30  NPCRespawn(SelectedRespawnIndex).FactorMulGold = Factor
40  cmdGuardar.Enabled = True

50  If Factor > 0 Then
60      lblGoldGive.Caption = "Oro: " & Round(NpcList(NPCRespawn(SelectedRespawnIndex).ID).GiveGLD * NPCRespawn(SelectedRespawnIndex).FactorMulGold, 0)
70  Else
80      If NPCRespawn(SelectedRespawnIndex).ID > 0 Then
90          lblGoldGive.Caption = "Oro: " & NpcList(NPCRespawn(SelectedRespawnIndex).ID).GiveGLD
100     End If
110 End If

120 On Error GoTo 0
130 Exit Sub

txtFactorOro_Change_Error:

140 Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure txtFactorOro_Change of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub txtNPCLvl_Change()

10  On Error GoTo txtNPCLvl_Change_Error

20  txtNPCLvl.Text = Val(txtNPCLvl.Text)
    Dim Nivel                   As Integer
30  Nivel = Val(txtNPCLvl.Text)

40  NPCRespawn(SelectedRespawnIndex).Nivel = Nivel
50  cmdGuardar.Enabled = True

60  On Error GoTo 0
70  Exit Sub

txtNPCLvl_Change_Error:

80  Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure txtNPCLvl_Change of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub txtNumero_Change()

10  On Error GoTo txtNumero_Change_Error

20  txtNumero.Text = Val(txtNumero.Text)

    Dim NpcIndex                As Integer

30  NpcIndex = Val(txtNumero.Text)

40  If NpcIndex = 0 Then
50      lstNPCs.List(SelectedRespawnIndex) = "(NONE)-0-" & lstNPCs.ListIndex
60  Else
70      If NpcList(NpcIndex).Active = 0 Then
80          Call OpenNPC(NpcIndex, False)
90      End If
        'lstNPCs.List(lstNPCs.ListIndex) = NpcList(NpcIndex).Name & "-" & NpcIndex & "-" & lstNPCs.ListIndex
        'lstNPCs.List(SelectedRespawnIndex) = NpcList(NpcIndex).Name & "-" & NpcIndex & "-" & iNpcIndexSelected
100 End If

110 NPCRespawn(SelectedRespawnIndex).ID = NpcIndex
120 cmdGuardar.Enabled = True

130 If lstNPCs.Enabled Then Call updateArea(SelectedRespawnIndex)
140 cmdGuardar.Enabled = True

150 On Error GoTo 0
160 Exit Sub

txtNumero_Change_Error:

170 Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure txtNumero_Change of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub txtPos_Change()

Static NoProcess                As Boolean

10  On Error GoTo txtPos_Change_Error

20  If NoProcess = True Then Exit Sub

30  NoProcess = True

    Dim Map                     As Long
    Dim X                       As Long
    Dim Y                       As Long

40  Map = Val(ReadField(1, txtPos.Text, Asc("-")))
50  X = Val(ReadField(2, txtPos.Text, Asc("-")))
60  Y = Val(ReadField(3, txtPos.Text, Asc("-")))

70  NPCRespawn(SelectedRespawnIndex).Pos.Map = Map
80  NPCRespawn(SelectedRespawnIndex).Pos.X = X
90  NPCRespawn(SelectedRespawnIndex).Pos.Y = Y

    'Call lstNPCs_Click

100 txtPos.Text = Map & "-" & X & "-" & Y

110 NoProcess = False
120 cmdGuardar.Enabled = True

130 If lstNPCs.Enabled Then Call updateArea(SelectedRespawnIndex)
140 cmdGuardar.Enabled = True

150 On Error GoTo 0
160 Exit Sub

txtPos_Change_Error:

170 Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure txtPos_Change of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub txtRespawnTime_Change()

10  On Error GoTo txtRespawnTime_Change_Error

20  txtRespawnTime.Text = Val(txtRespawnTime.Text)

30  NPCRespawn(SelectedRespawnIndex).RespawnTime = Val(txtRespawnTime.Text)
40  cmdGuardar.Enabled = True

50  On Error GoTo 0
60  Exit Sub

txtRespawnTime_Change_Error:

70  Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure txtRespawnTime_Change of Formulario frmMain Linea: " & Erl())

End Sub
