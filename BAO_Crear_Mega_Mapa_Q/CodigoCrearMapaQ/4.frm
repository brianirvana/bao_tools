VERSION 5.00
Begin VB.Form frmMain 
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
   Begin VB.PictureBox TestPicture2 
      AutoRedraw      =   -1  'True
      Height          =   1695
      Left            =   1440
      ScaleHeight     =   109
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   109
      TabIndex        =   4
      Top             =   2280
      Width           =   1695
   End
   Begin VB.PictureBox Temporal2 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   975
      Left            =   3240
      ScaleHeight     =   107
      ScaleMode       =   0  'User
      ScaleWidth      =   107
      TabIndex        =   3
      Top             =   2160
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.PictureBox Temporal 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   975
      Left            =   3240
      ScaleHeight     =   107
      ScaleMode       =   0  'User
      ScaleWidth      =   107
      TabIndex        =   2
      Top             =   1080
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.CommandButton cmdCreateMap 
      Height          =   495
      Left            =   5520
      TabIndex        =   1
      Top             =   6240
      Width           =   1815
   End
   Begin VB.PictureBox TestPicture 
      AutoRedraw      =   -1  'True
      Height          =   855
      Left            =   1680
      ScaleHeight     =   53
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   77
      TabIndex        =   0
      Top             =   1320
      Width           =   1215
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdCreateMap_Click()

Dim Ruta                        As String
Dim X                           As Long
Dim Y                           As Long
Dim i                           As Long
Dim Escala                      As Integer
Dim C                           As cDIBSection

10  On Error GoTo cmdCreateMap_Click_Error

20  If bMap = 0 Then bMap = 1

30  Escala = 10
    'TEST:
40  If Debuggin Then
50      Ruta = App.Path & "\..\BAO_WorldEditor\ImagenesMundoBAO\"
60  Else
70      Ruta = App.Path & "\ImagenesMundoBAO\"
80  End If

90  TestPicture.Width = 1580 / Escala * 12
100 TestPicture.Height = 1580 / Escala * 12

110 If Not FileExist(Ruta & 1 & ".bmp", vbArchive) And Not FileExist(Ruta & 144 & ".bmp", vbArchive) Then
120     MsgBox "No se encontraron las vistas previas (imagenes de desgloce del mapa). Deben generarse primero desde el WorldEditor. " & vbNewLine & "No se puede continuar."
130     End
140 End If

150 For X = 0 To 11
160     For Y = 0 To 11
170         If i < 145 Then
180             i = i + 1
190             frmMain.Caption = i & "/144"
                'Debug.Print "Ruta: " & Ruta
200             Temporal.Picture = LoadPicture(Ruta & i & ".bmp")
                '        Temporal.Width = 1580 / Escala
                'Temporal.Height = 1580 / Escala
210             Call TestPicture.PaintPicture(Temporal, X * 1580 / Escala, Y * 1580 / Escala, 1580 / Escala, 1580 / Escala)
220         End If
230     Next Y
240 Next X

250 SavePicture TestPicture.Image, Ruta & "Mapa" & bMap & ".bmp"

260 Escala = 178               '107 pixeles de ancho x 107 pixles de alto (Para el minimapa del WE)
270 i = 0

280 TestPicture.Width = 1580 / Escala * 12
290 TestPicture.Height = 1580 / Escala * 12
300 TestPicture.Refresh
310 frmMain.Caption = "CREANDO MINIMAPA"

    'CREAR MINIMAPA PARA EL WE
320 For X = 0 To 11
330     For Y = 0 To 11
340         If i < 145 Then
350             i = i + 1
360             frmMain.Caption = i & "/144"
370             Temporal2.Picture = LoadPicture(Ruta & i & ".bmp")
380             Call TestPicture2.PaintPicture(Temporal2, X * 1580 / Escala, Y * 1580 / Escala, 1580 / Escala, 1580 / Escala)
390             DoEvents
400         End If
410     Next Y
420 Next X

430 SavePicture TestPicture2.Image, Ruta & "MiniMapa" & bMap & ".jpg"

    '430 Set C = New cDIBSection
    '440 C.CreateFromPicture frmMain.Picture
    '450 Call SaveJPG(C, Ruta & "\MiniMap" & bMap & ".jpg")
    '460 Set C = Nothing

440 If Not Debuggin Then
450     For i = 1 To 144
460         If FileExist(Ruta & i & ".bmp", vbArchive) Then
470             Kill Ruta & i & ".bmp"
480         End If
490     Next i
500 End If

510 MsgBox "Mapa " & bMap & " creado correctamnete."

520 End

530 On Error GoTo 0
540 Exit Sub

cmdCreateMap_Click_Error:

550 MsgBox ("Error en " & App.EXEName & ".exe " & Err.Number & " (" & Err.Description & ") procedimiento cmdCreateMap_Click Formulario frmMain línea: " & Erl())

End Sub

Public Sub Click()
    Call cmdCreateMap_Click
End Sub

