VERSION 5.00
Begin VB.Form frmDibujarMapa 
   Caption         =   "Form1"
   ClientHeight    =   8985
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   14910
   LinkTopic       =   "Form1"
   ScaleHeight     =   599
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   994
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture2 
      AutoRedraw      =   -1  'True
      Height          =   1575
      Left            =   120
      ScaleHeight     =   101
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   101
      TabIndex        =   1
      Top             =   120
      Width           =   1575
   End
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      DrawStyle       =   5  'Transparent
      Height          =   15300
      Left            =   120
      ScaleHeight     =   1125.323
      ScaleMode       =   0  'User
      ScaleWidth      =   1118
      TabIndex        =   0
      Top             =   120
      Width           =   16830
   End
End
Attribute VB_Name = "frmDibujarMapa"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()

    With Mapas(97)
        .X = 0
        .Y = 2
    End With
    
    With Mapas(7)
        .X = 0
        .Y = 3
    End With
    
    With Mapas(96)
        .X = 0
        .Y = 4
    End With
    
    With Mapas(52)
        .X = 0
        .Y = 5
    End With
    
    With Mapas(53)
        .X = 0
        .Y = 6
    End With
    
    With Mapas(54)
        .X = 0
        .Y = 7
    End With
    
    With Mapas(55)
        .X = 0
        .Y = 8
    End With
    
    With Mapas(56)
        .X = 0
        .Y = 9
    End With
    
    With Mapas(57)
        .X = 0
        .Y = 10
    End With
    
    With Mapas(89)
        .X = 1
        .Y = 2
    End With
    
    With Mapas(88)
        .X = 1
        .Y = 3
    End With
    
    With Mapas(69)
        .X = 1
        .Y = 4
    End With
    
    With Mapas(14)
        .X = 1
        .Y = 5
    End With
    
    With Mapas(2)
        .X = 1
        .Y = 6
    End With
    
    With Mapas(60)
        .X = 1
        .Y = 7
    End With
    
    With Mapas(59)
        .X = 1
        .Y = 8
    End With
    
    With Mapas(85)
        .X = 1
        .Y = 9
    End With
    
    With Mapas(58)
        .X = 1
        .Y = 10
    End With
    
    With Mapas(47)
        .X = 2
        .Y = 0
    End With
    
    With Mapas(94)
        .X = 2
        .Y = 1
    End With
    
    With Mapas(84)
        .X = 2
        .Y = 2
    End With
    
    With Mapas(22)
        .X = 2
        .Y = 3
    End With
    
    With Mapas(21)
        .X = 2
        .Y = 4
    End With
    
    With Mapas(20)
        .X = 2
        .Y = 5
    End With
    
    With Mapas(1)
        .X = 2
        .Y = 6
    End With
    
    With Mapas(61)
        .X = 2
        .Y = 7
    End With
    
    With Mapas(62)
        .X = 2
        .Y = 8
    End With
    
    With Mapas(63)
        .X = 2
        .Y = 9
    End With
    
    With Mapas(48)
        .X = 3
        .Y = 0
    End With
    
    With Mapas(23)
        .X = 3
        .Y = 3
    End With
    
    With Mapas(83)
        .X = 3
        .Y = 4
    End With
    
    With Mapas(42)
        .X = 3
        .Y = 5
    End With
    
    With Mapas(6)
        .X = 3
        .Y = 6
    End With
    
    With Mapas(68)
        .X = 3
        .Y = 7
    End With
    
    With Mapas(66)
        .X = 3
        .Y = 8
    End With
    
    With Mapas(64)
        .X = 3
        .Y = 9
    End With
    
    With Mapas(80)
        .X = 4
        .Y = 0
    End With
    
    
    With Mapas(3)
        .X = 4
        .Y = 3
    End With
    
    
    With Mapas(35)
        .X = 4
        .Y = 6
    End With
    
    
    With Mapas(67)
        .X = 4
        .Y = 8
    End With
    
    
    With Mapas(65)
        .X = 4
        .Y = 9
    End With
    
    
    With Mapas(81)
        .X = 5
        .Y = 0
    End With
    
    
    With Mapas(82)
        .X = 5
        .Y = 1
    End With
    
    
    With Mapas(11)
        .X = 5
        .Y = 2
    End With
    
    
    With Mapas(4)
        .X = 5
        .Y = 3
    End With
    
    
    With Mapas(93)
        .X = 5
        .Y = 4
    End With
    
    
    With Mapas(92)
        .X = 5
        .Y = 5
    End With
    
    
    With Mapas(91)
        .X = 5
        .Y = 6
    End With
    
    
    With Mapas(90)
        .X = 5
        .Y = 7
    End With
    
    
    With Mapas(70)
        .X = 5
        .Y = 8
    End With
    
    
    With Mapas(71)
        .X = 5
        .Y = 9
    End With
    
    
    With Mapas(111)
        .X = 6
        .Y = 0
    End With
    
    
    With Mapas(28)
        .X = 6
        .Y = 2
    End With
    
    
    With Mapas(17)
        .X = 6
        .Y = 3
    End With
    
    
    With Mapas(86)
        .X = 6
        .Y = 4
    End With
    
    With Mapas(103)
        .X = 6
        .Y = 6
    End With
    
    With Mapas(72)
        .X = 6
        .Y = 9
    End With
    
    With Mapas(112)
        .X = 7
        .Y = 0
    End With
    
    With Mapas(9)
        .X = 7
        .Y = 2
    End With
    
    With Mapas(5)
        .X = 7
        .Y = 3
    End With
    
    With Mapas(87)
        .X = 7
        .Y = 4
    End With
    
    With Mapas(104)
        .X = 7
        .Y = 6
    End With
    
    With Mapas(73)
        .X = 7
        .Y = 9
    End With
    
    With Mapas(114)
        .X = 8
        .Y = 0
    End With
    
    With Mapas(19)
        .X = 8
        .Y = 3
    End With
    
    With Mapas(43)
        .X = 8
        .Y = 6
    End With
    
    With Mapas(74)
        .X = 8
        .Y = 9
    End With
    
    With Mapas(115)
        .X = 9
        .Y = 0
    End With
    
    With Mapas(26)
        .X = 9
        .Y = 2
    End With
    
    With Mapas(25)
        .X = 9
        .Y = 3
    End With
    
    With Mapas(27)
        .X = 9
        .Y = 4
    End With
    
    With Mapas(34)
        .X = 9
        .Y = 5
    End With
    
    With Mapas(37)
        .X = 9
        .Y = 6
    End With
    
    With Mapas(77)
        .X = 9
        .Y = 7
    End With
    
    With Mapas(76)
        .X = 9
        .Y = 8
    End With
    
    With Mapas(78)
        .X = 9
        .Y = 9
    End With
    
    With Mapas(100)
        .X = 9
        .Y = 10
    End With
    
    With Mapas(79)
        .X = 10
        .Y = 9
    End With
    
    With Mapas(101)
        .X = 10
        .Y = 10
    End With
    
End Sub

Private Sub Picture1_Click()

    Picture1.Picture = LoadPicture("")
    'Call DrawMundo(95 * 32 / 20, 95 * 32 / 25)
    Call DrawMundo(101, 107)
    
End Sub

Public Sub DrawMundo(ByVal EscalaX As Integer, ByVal EscalaY As Integer)

Dim i                           As Byte

    Picture1.Height = 10 * EscalaY
    Picture1.Width = 11 * EscalaX
    
    For i = 1 To 120
        If Mapas(i).X <> 0 Or Mapas(i).Y <> 0 Then
            Picture2.Picture = LoadPicture(App.Path & "\ImagenesMundoBAO\" & i & ".bmp")
            Call Picture1.PaintPicture(Picture2.Picture, Mapas(i).X * EscalaX, Mapas(i).Y * EscalaY)
            Picture1.Refresh
            frmDibujarMapa.Caption = "Mapa " & i
            DoEvents
        End If
    Next i
    
    Call SavePicture(Picture1.Image, App.Path & "\MundoAUTO.bmp")
End Sub
