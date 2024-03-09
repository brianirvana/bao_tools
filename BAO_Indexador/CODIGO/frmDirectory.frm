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
Public Continue As Boolean
Private cBFolder As clsCBFolder


Private Sub cmdExaminarExpo_Click()
          Dim Ret As VbMsgBoxResult
   On Error GoTo cmdExaminarExpo_Click_Error

10        If FileExist(Me.txtIndex.Text, vbDirectory) And Len(Me.txtIndex.Text) <> 0 Then
20            Ret = MsgBox("¿Desea crear una carpeta de exportación llamada ""Expo"" en la carpeta de indexación?", vbYesNo)
30        Else
40            Ret = vbNo
50        End If
60        If Ret = vbYes Then
70            If Not FileExist(Me.txtIndex.Text & "\Expo", vbDirectory) Then MkDir Me.txtIndex.Text & "\Expo"
80            txtExpo.Text = Me.txtIndex.Text & "\Expo"
90        Else
100           With cBFolder
110               .ShowButton = True
                  Dim sPath As String
120               sPath = .BrowseForFolder(Me, App.Path, "Seleccionar una carpeta de exportación...")
                  
130               txtExpo.Text = sPath
140           End With
150       End If

   On Error GoTo 0
   Exit Sub

cmdExaminarExpo_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure cmdExaminarExpo_Click of Formulario frmDirectory Linea: " & Erl())
End Sub

Private Sub cmdExaminarGraficos_Click()

   On Error GoTo cmdExaminarGraficos_Click_Error

10        With cBFolder
20            .ShowButton = True
              Dim sPath As String
30            sPath = .BrowseForFolder(Me, App.Path, "Seleccionar una carpeta para los graficos...")
              
40            txtGraficos.Text = sPath
50        End With

   On Error GoTo 0
   Exit Sub

cmdExaminarGraficos_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure cmdExaminarGraficos_Click of Formulario frmDirectory Linea: " & Erl())
End Sub

Private Sub cmdExaminarInit_Click()
   On Error GoTo cmdExaminarInit_Click_Error

10        With cBFolder
20            .ShowButton = True
              Dim sPath As String
30            sPath = .BrowseForFolder(Me, App.Path, "Seleccionar una carpeta para los init's...")
              
40            txtIndex.Text = sPath
50        End With

   On Error GoTo 0
   Exit Sub

cmdExaminarInit_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure cmdExaminarInit_Click of Formulario frmDirectory Linea: " & Erl())
End Sub

Private Sub cmdAplicar_Click()
   On Error GoTo cmdAplicar_Click_Error

10        AppGraficos = txtGraficos.Text
20        AppInit = txtIndex.Text
30        AppExpo = txtExpo.Text
40        AppPNG = OptPNG1.Value
          
50        Call Save_Settings("AppPNG", IIf(AppPNG, "1", "0"))
60        Call Save_Settings("AppGraficos", AppGraficos)
70        Call Save_Settings("AppInit", AppInit)
80        Call Save_Settings("AppExpo", AppExpo)
          
90        If Not FileExist(AppExpo, vbDirectory) Then
100           MkDir AppExpo
110       End If
          
120       Continue = True
          
      '[INICIALIZAMOS VARIABLES]
130       frmCargando.Show
140       Unload Me
150       frmCargando.lblLoading.Caption = "Inicializando el motor gráfico..."
          'Iniciamos el TileEngine
          'Set TileEngine = Nothing
          'Set TileEngine = New clsTileEngine
          'Call TileEngine.Initialize
          
160       Set Resource = New clsRecursosBender
170       Resource.Initialize
          
      '[/INICIALIZAMOS VARIABLES]
180       Unload frmCargando
190       Load frmMain
200       If Not frmMain.Visible Then
210           frmMain.Show
220       End If
230       frmMain.Enabled = True

   On Error GoTo 0
   Exit Sub

cmdAplicar_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure cmdAplicar_Click of Formulario frmDirectory Linea: " & Erl())
End Sub

Private Sub Command1_Click()
   On Error GoTo Command1_Click_Error

10        AppGraficos = vbNullString
20        AppInit = vbNullString
30        AppExpo = vbNullString
          
40        Call Display_Directorys

   On Error GoTo 0
   Exit Sub

Command1_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure Command1_Click of Formulario frmDirectory Linea: " & Erl())
End Sub

Private Sub Form_Activate()
    Continue = False
    
    Call Display_Directorys
End Sub
Private Sub Display_Directorys()
   On Error GoTo Display_Directorys_Error

10        If AppPNG Then
20            OptPNG1.Value = True
30            OptPNG2.Value = False
40        Else
50            OptPNG1.Value = False
60            OptPNG2.Value = True
70        End If
80        txtGraficos.Text = AppGraficos
90        txtIndex.Text = AppInit
100       txtExpo.Text = AppExpo

   On Error GoTo 0
   Exit Sub

Display_Directorys_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure Display_Directorys of Formulario frmDirectory Linea: " & Erl())
End Sub

Private Sub Form_Load()

   On Error GoTo Form_Load_Error

10        Set cBFolder = New clsCBFolder

   On Error GoTo 0
   Exit Sub

Form_Load_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure Form_Load of Formulario frmDirectory Linea: " & Erl())
End Sub

Private Sub Form_Unload(Cancel As Integer)
   
   On Error GoTo Form_Unload_Error

10        Set cBFolder = Nothing
20        If Not FormsEnabled(Me) Then Call CloseProgram

   On Error GoTo 0
   Exit Sub

Form_Unload_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure Form_Unload of Formulario frmDirectory Linea: " & Erl())
End Sub

Private Sub Check_TextBox(ByRef Text As TextBox)
   On Error GoTo Check_TextBox_Error

10        If FileExist(Text.Text, vbDirectory) And Len(Text.Text) <> 0 Then
20            Text.BackColor = vbGreen
30        Else
40            Text.BackColor = vbRed
50        End If

   On Error GoTo 0
   Exit Sub

Check_TextBox_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure Check_TextBox of Formulario frmDirectory Linea: " & Erl())
End Sub

Private Sub OptPNG1_Click()
   On Error GoTo OptPNG1_Click_Error

10        AppPNG = True
20        Call txtGraficos_Change

   On Error GoTo 0
   Exit Sub

OptPNG1_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure OptPNG1_Click of Formulario frmDirectory Linea: " & Erl())
End Sub

Private Sub OptPNG2_Click()
   On Error GoTo OptPNG2_Click_Error

10        AppPNG = False
20        Call txtGraficos_Change

   On Error GoTo 0
   Exit Sub

OptPNG2_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure OptPNG2_Click of Formulario frmDirectory Linea: " & Erl())
End Sub

Private Sub txtExpo_Change()
   On Error GoTo txtExpo_Change_Error

10        Call Check_TextBox(txtExpo)
20        If txtExpo.BackColor = vbRed Then
30            txtExpo.BackColor = vbYellow
40        End If

   On Error GoTo 0
   Exit Sub

txtExpo_Change_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure txtExpo_Change of Formulario frmDirectory Linea: " & Erl())
End Sub

Private Sub txtGraficos_Change()
   On Error GoTo txtGraficos_Change_Error

10        Call Check_TextBox(txtGraficos)
20        If Not FileExist(txtGraficos.Text & "\1." & IIf(AppPNG = True, "png", "bmp"), vbArchive) And txtGraficos.BackColor = vbGreen Then
30            txtGraficos.BackColor = vbYellow
40        End If

   On Error GoTo 0
   Exit Sub

txtGraficos_Change_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure txtGraficos_Change of Formulario frmDirectory Linea: " & Erl())
End Sub

Private Sub txtIndex_Change()
   On Error GoTo txtIndex_Change_Error

10        Call Check_TextBox(txtIndex)
20        If Not FileExist(txtIndex.Text & "\Graficos.ind", vbArchive) And txtIndex.BackColor = vbGreen Then
30            txtIndex.BackColor = vbYellow
40        End If

   On Error GoTo 0
   Exit Sub

txtIndex_Change_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure txtIndex_Change of Formulario frmDirectory Linea: " & Erl())
End Sub
