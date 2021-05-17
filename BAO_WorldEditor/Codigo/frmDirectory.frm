VERSION 5.00
Begin VB.Form frmDirectory 
   ClientHeight    =   1800
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   9255
   BeginProperty Font 
      Name            =   "MS Sans Serif"
      Size            =   8.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   1800
   ScaleWidth      =   9255
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtExpo 
      BackColor       =   &H000000FF&
      Height          =   285
      Left            =   2520
      TabIndex        =   4
      Top             =   840
      Width           =   6015
   End
   Begin VB.TextBox txtIndex 
      BackColor       =   &H000000FF&
      Height          =   285
      Left            =   2520
      TabIndex        =   5
      Top             =   480
      Width           =   6015
   End
   Begin VB.TextBox txtGraficos 
      BackColor       =   &H000000FF&
      Height          =   285
      Left            =   2520
      TabIndex        =   3
      Top             =   120
      Width           =   6015
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Resetear Directorios"
      Height          =   495
      Left            =   3720
      TabIndex        =   12
      Top             =   1200
      Width           =   2655
   End
   Begin VB.OptionButton OptPNG2 
      Caption         =   "BMP"
      Height          =   375
      Left            =   1320
      TabIndex        =   11
      Top             =   1320
      Width           =   975
   End
   Begin VB.OptionButton OptPNG1 
      Caption         =   "PNG"
      Height          =   375
      Left            =   240
      TabIndex        =   10
      Top             =   1320
      Value           =   -1  'True
      Width           =   975
   End
   Begin VB.CommandButton cmdAplicar 
      Caption         =   "Aplicar y Guardar"
      Height          =   495
      Left            =   6480
      TabIndex        =   9
      Top             =   1200
      Width           =   2655
   End
   Begin VB.CommandButton cmdExaminarInit 
      Caption         =   "..."
      Height          =   255
      Left            =   8640
      TabIndex        =   8
      Top             =   480
      Width           =   495
   End
   Begin VB.CommandButton cmdExaminarExpo 
      Caption         =   "..."
      Height          =   255
      Left            =   8640
      TabIndex        =   7
      Top             =   840
      Width           =   495
   End
   Begin VB.CommandButton cmdExaminarGraficos 
      Caption         =   "..."
      Height          =   255
      Left            =   8640
      TabIndex        =   6
      Top             =   120
      Width           =   495
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      Caption         =   "Carpeta de Indexación:"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   480
      Width           =   2295
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Caption         =   "Carpeta de Exportación:"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   840
      Width           =   2295
   End
   Begin VB.Label lblInfo 
      Alignment       =   1  'Right Justify
      Caption         =   "Carpeta de Graficos:"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   2295
   End
End
Attribute VB_Name = "frmDirectory"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'Variable para saber si se toco el boton "Continue"
Public Continue                 As Boolean
Private cBFolder                As clsCBFolder


Private Sub cmdExaminarExpo_Click()

Dim Ret                         As VbMsgBoxResult
    
    If FileExist(Me.txtIndex.Text, vbDirectory) And Len(Me.txtIndex.Text) <> 0 Then
        Ret = MsgBox("¿Desea crear una carpeta de exportación llamada ""Expo"" en la carpeta de indexación?", vbYesNo)
    Else
        Ret = vbNo
    End If
    
    If Ret = vbYes Then
        If Not FileExist(Me.txtIndex.Text & "\Expo", vbDirectory) Then MkDir Me.txtIndex.Text & "\Expo"
        txtExpo.Text = Me.txtIndex.Text & "\Expo"
    Else
        With cBFolder
            .ShowButton = True
            Dim sPath           As String
            sPath = .BrowseForFolder(Me, App.Path, "Seleccionar una carpeta de exportación...")

            txtExpo.Text = sPath
        End With
    End If
    
End Sub

Private Sub cmdExaminarGraficos_Click()

    With cBFolder
        .ShowButton = True
        Dim sPath               As String
        sPath = .BrowseForFolder(Me, App.Path, "Seleccionar una carpeta para los graficos...")

        txtGraficos.Text = sPath
    End With
    
End Sub

Private Sub cmdExaminarInit_Click()

    With cBFolder
        .ShowButton = True
        Dim sPath               As String
        sPath = .BrowseForFolder(Me, App.Path, "Seleccionar una carpeta para los init's...")

        txtIndex.Text = sPath
    End With
    
End Sub

Private Sub cmdAplicar_Click()

    AppGraficos = txtGraficos.Text
    
    AppInit = txtIndex.Text
    AppExpo = txtExpo.Text
    AppPNG = OptPNG1.Value

    Call Save_Settings("AppPNG", IIf(AppPNG, "1", "0"))
    Call Save_Settings("AppGraficos", AppGraficos)
    Call Save_Settings("AppInit", AppInit)
    Call Save_Settings("AppExpo", AppExpo)

    If Not FileExist(AppExpo, vbDirectory) Then
        MkDir AppExpo
    End If

    Continue = True

    '[INICIALIZAMOS VARIABLES]
    'frmCargando.Show
    Unload Me
    
    'Iniciamos el TileEngine
    'Set TileEngine = Nothing
    'Set TileEngine = New clsTileEngine
    'Call TileEngine.Initialize

    'Set Resource = New clsRecursosBender
    'Resource.Initialize

    '[/INICIALIZAMOS VARIABLES]
    Unload frmCargando
    Load frmMain
    If Not frmMain.Visible Then
        frmMain.Show
    End If
    frmMain.Enabled = True
End Sub

Private Sub Command1_Click()
    AppGraficos = vbNullString
    AppInit = vbNullString
    AppExpo = vbNullString

    Call Display_Directorys
End Sub

Private Sub Form_Activate()
    Continue = False

    Call Display_Directorys
End Sub
Private Sub Display_Directorys()
    If AppPNG Then
        OptPNG1.Value = True
        OptPNG2.Value = False
    Else
        OptPNG1.Value = False
        OptPNG2.Value = True
    End If
    txtGraficos.Text = AppGraficos
    txtIndex.Text = AppInit
    txtExpo.Text = AppExpo
End Sub

Private Sub Form_Load()
    Set cBFolder = New clsCBFolder
End Sub
Private Sub Form_Unload(Cancel As Integer)
    Set cBFolder = Nothing
    If Not FormsEnabled(Me) Then Call CloseProgram
End Sub

Public Sub CloseProgram()

    Call UnloadAllForms
    End
End Sub

Public Function FormsEnabled(localform As Form) As Boolean
    Dim mifrm As Form
    For Each mifrm In Forms
        If mifrm.Visible And localform.Name <> mifrm.Name Then
            FormsEnabled = True
            Exit For
        End If
    Next
End Function

Public Function UnloadAllForms() As Boolean
    Dim mifrm As Form
    
    For Each mifrm In Forms
        Unload mifrm
    Next
End Function

Private Sub Check_TextBox(ByRef Text As TextBox)
    If FileExist(Text.Text, vbDirectory) And Len(Text.Text) <> 0 Then
        Text.BackColor = vbGreen
    Else
        Text.BackColor = vbRed
    End If
End Sub

Private Sub OptPNG1_Click()
    AppPNG = True
    Call txtGraficos_Change
End Sub

Private Sub OptPNG2_Click()
    AppPNG = False
    Call txtGraficos_Change
End Sub

Private Sub txtExpo_Change()
    Call Check_TextBox(txtExpo)
    If txtExpo.BackColor = vbRed Then
        txtExpo.BackColor = vbYellow
    End If
End Sub

Private Sub txtGraficos_Change()
    Call Check_TextBox(txtGraficos)
    If Not FileExist(txtGraficos.Text & "\1." & IIf(AppPNG = True, "png", "bmp"), vbArchive) And txtGraficos.BackColor = vbGreen Then
        txtGraficos.BackColor = vbYellow
    End If
End Sub

Private Sub txtIndex_Change()
    Call Check_TextBox(txtIndex)
    If Not FileExist(txtIndex.Text & "\Graficos.ind", vbArchive) And txtIndex.BackColor = vbGreen Then
        txtIndex.BackColor = vbYellow
    End If
End Sub
