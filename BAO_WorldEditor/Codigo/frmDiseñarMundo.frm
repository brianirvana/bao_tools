VERSION 5.00
Begin VB.Form frmDiseñarMundo 
   Caption         =   "Diseñar Mundo"
   ClientHeight    =   1035
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4725
   LinkTopic       =   "Form1"
   ScaleHeight     =   69
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   315
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Dibujar"
      Height          =   255
      Left            =   3600
      TabIndex        =   6
      Top             =   120
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Set"
      Height          =   255
      Left            =   2640
      TabIndex        =   5
      Top             =   120
      Width           =   975
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   1920
      TabIndex        =   2
      Text            =   "1"
      Top             =   120
      Width           =   615
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   720
      TabIndex        =   1
      Text            =   "1"
      Top             =   120
      Width           =   615
   End
   Begin VB.Label Label 
      Caption         =   "Alto:"
      Height          =   255
      Index           =   1
      Left            =   1440
      TabIndex        =   4
      Top             =   120
      Width           =   615
   End
   Begin VB.Label Label 
      Caption         =   "Ancho:"
      Height          =   255
      Index           =   0
      Left            =   120
      TabIndex        =   3
      Top             =   120
      Width           =   615
   End
   Begin VB.Label Dis 
      Alignment       =   2  'Center
      BackColor       =   &H00FFFFFF&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   480
      Index           =   0
      Left            =   120
      TabIndex        =   0
      Top             =   480
      Width           =   480
   End
End
Attribute VB_Name = "frmDiseñarMundo"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim StartX                      As Integer
Dim StartY                      As Integer
    StartX = Dis(0).Left
    StartY = Dis(0).Top
    Dim MaxX                    As Long
    Dim MaxY                    As Long
    MaxX = Text1.Text
    MaxY = Text2.Text
    Dim X                       As Integer
    Dim Y                       As Integer
    Dim Num                     As Integer
    If Dis.Count - 1 <> 0 Then
        For Num = 1 To Dis.Count - 1
            If LabelExist(Num) Then
                Unload Dis(Num)
            End If
        Next Num
    End If
    For X = 0 To MaxX
        For Y = 0 To MaxY
            If Num <> 0 Then
                If Not LabelExist(Num) Then
                    Load Dis(Num)
                End If
                With Dis(Num)
                    .Visible = True
                    .Width = 32
                    .Left = 32
                    .Font = Dis(0).Font
                    .ForeColor = vbBlack
                    .BorderStyle = 1
                    .Caption = ""
                    .BackColor = vbWhite
                    .Top = Y * 32 + StartY
                    .Left = X * 32 + StartX
                    .DataField = X & "-" & Y
                End With
            End If
            Num = Num + 1
        Next Y
    Next X
    If Dis(Num - 1).Left + 42 < Command2.Left + Command2.Width Then
        frmDiseñarMundo.Width = (Command2.Left + Command2.Width + 10) * Screen.TwipsPerPixelX
        Debug.Print (Command2.Left + Command2.Width + 10) * Screen.TwipsPerPixelX
    Else
        frmDiseñarMundo.Width = (Dis(Num - 1).Left + 42) * Screen.TwipsPerPixelX
    End If
    frmDiseñarMundo.Height = (Dis(Num - 1).Top + 69) * Screen.TwipsPerPixelY

End Sub
Private Function LabelExist(ByVal Num As Integer) As Boolean
    On Error GoTo err:
    Dis(Num).Caption = ""
    LabelExist = True
    Exit Function
err:
    LabelExist = False
End Function

Private Sub Command2_Click()
    frmDibujarMapa.Show
    Dim nfile                   As Integer
    nfile = FreeFile
    Dim Tamaño                  As Position
    Tamaño.X = Text1.Text
    Tamaño.Y = Text2.Text
    Open App.Path & "\Maps.maps" For Binary As #nfile
    Put #nfile, , Tamaño
    Put #nfile, , Mapas
    Close #nfile
    On Error GoTo err:
    Dim i                       As Integer
    Dim Escala                  As Single
    Escala = CSng(InputBox("¿Escala de dibujo (mas de 5 si o si)"))
    'If Escala <= 5 Then MsgBox "¡Mas de 5 bldo!": Exit Sub
    For i = 1 To 121
        'If Mapas(i).X <> 0 And Mapas(i).Y <> 0 Then
        MapaActual = i
        RenderToPicture Escala, True
        DoEvents
        Call frmMain.MapPest_Click(5)
        DoEvents
        frmDiseñarMundo.Caption = "Mapa " & i
        'End If
    Next i
    Call frmDibujarMapa.DrawMundo(95 * 32 / Escala, 95 * 32 / Escala)
    Exit Sub
err:
    MsgBox "¡Error! ¡Algo metiste mal!"
End Sub

Private Sub Dis_Click(index As Integer)
'On Error GoTo err:
    Dis(index).Caption = InputBox("¿Que numero de mapa desea?")
    If Dis(index).Caption = vbNullString Then Exit Sub
    If index <> 0 Then
        Debug.Print index
        Mapas(Dis(index).Caption).X = ReadField(1, Dis(index).DataField, Asc("-"))
        Mapas(Dis(index).Caption).Y = ReadField(2, Dis(index).DataField, Asc("-"))
        Mapas(Dis(index).Caption).index = index
    End If
    Exit Sub
err:
    Dis(index).Caption = ""
    MsgBox "¡Error! Algo pusiste mal en el numero de mapa." & err.Description
End Sub

Private Sub Form_Load()
'Dim nfile As Integer
'Dim Tamaño As Position
'nfile = FreeFile
'Open App.Path & "\Maps.maps" For Binary As #nfile
'    Get #nfile, , Tamaño
'    Get #nfile, , Mapas
'Close #nfile
'Text1.Text = Tamaño.X
'Text2.Text = Tamaño.Y
'Call Command1_Click
'Debug.Print "Ubound: " & Dis.Count
'DoEvents
'Dim i As Integer
'For i = 1 To 122
'    If Mapas(i).index <> 0 Then
'        Dis(Mapas(i).index).Caption = i
'    End If
'Next i
End Sub
