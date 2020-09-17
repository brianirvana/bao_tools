VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7365
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11505
   LinkTopic       =   "Form1"
   ScaleHeight     =   491
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   767
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Temporal 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   735
      Left            =   9840
      ScaleHeight     =   675
      ScaleWidth      =   1035
      TabIndex        =   2
      Top             =   1320
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.CommandButton Command 
      Height          =   495
      Left            =   5520
      TabIndex        =   1
      Top             =   6240
      Width           =   1815
   End
   Begin VB.PictureBox TestPicture 
      AutoRedraw      =   -1  'True
      Height          =   5895
      Left            =   240
      ScaleHeight     =   389
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   613
      TabIndex        =   0
      Top             =   240
      Width           =   9255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command_Click()

Dim Ruta                        As String
Dim X                           As Long
Dim Y                           As Long
Dim i                           As Long
Dim Escala                      As Integer

    Escala = 10
    Ruta = App.Path & "\..\ImagenesMundoBAO\"
    
    TestPicture.Width = 1580 / Escala * 12
    TestPicture.Height = 1580 / Escala * 12
    
    For X = 0 To 11
        For Y = 0 To 11
            If i < 145 Then
                i = i + 1
                Form1.Caption = i & "/144"
                Debug.Print "Ruta: " & Ruta
                Temporal.Picture = LoadPicture(Ruta & i & ".bmp")
        '        Temporal.Width = 1580 / Escala
                'Temporal.Height = 1580 / Escala
                Call TestPicture.PaintPicture(Temporal, X * 1580 / Escala, Y * 1580 / Escala, 1580 / Escala, 1580 / Escala)
            End If
        Next Y
    Next X
    
    SavePicture TestPicture.Image, Ruta & "Test.bmp"
    
End Sub

