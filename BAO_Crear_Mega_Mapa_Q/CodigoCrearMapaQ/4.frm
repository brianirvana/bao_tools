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
   Begin VB.PictureBox TestPicture4 
      AutoRedraw      =   -1  'True
      Height          =   1695
      Left            =   5280
      ScaleHeight     =   109
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   109
      TabIndex        =   5
      Top             =   120
      Width           =   1695
   End
   Begin VB.PictureBox TestPicture3 
      AutoRedraw      =   -1  'True
      Height          =   1695
      Left            =   3480
      ScaleHeight     =   109
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   109
      TabIndex        =   4
      Top             =   120
      Width           =   1695
   End
   Begin VB.PictureBox TestPicture2 
      AutoRedraw      =   -1  'True
      Height          =   1695
      Left            =   1560
      ScaleHeight     =   109
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   109
      TabIndex        =   3
      Top             =   120
      Width           =   1695
   End
   Begin VB.PictureBox Temporal2 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   975
      Left            =   3360
      ScaleHeight     =   61
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   77
      TabIndex        =   2
      Top             =   3840
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.PictureBox Temporal 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   975
      Left            =   240
      ScaleHeight     =   61
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   77
      TabIndex        =   1
      Top             =   3840
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.PictureBox TestPicture 
      AutoRedraw      =   -1  'True
      Height          =   855
      Left            =   120
      ScaleHeight     =   53
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   77
      TabIndex        =   0
      Top             =   120
      Width           =   1215
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Sub CreateMap(ByVal sPath As String)

Dim X                           As Long
Dim Y                           As Long
Dim i                           As Long
Dim Escala                      As Integer    'Para armar bien los PSD del mapa del cliente. (1892)
Dim EscalaMiniMapa              As Single    'Del cliente
Dim EscalaMapaQ                 As Single    'Del cliente
Dim EscalaMiniMapaWE            As Integer    'Del WorldEditor
Dim C                           As cDIBSection


 On Error GoTo CreateMap_Error

    If bMap = 0 Then bMap = 1

    Escala = 1
    EscalaMiniMapa = 15.8
    EscalaMiniMapaWE = 178
    EscalaMapaQ = 33.35
    
    'TEST:
    If Debuggin Then
        'sPath = App.Path & "\..\BAO_WorldEditor\ImagenesMundoBAO\"
        'Stop
    End If

    TestPicture.Width = 1580 / Escala * 12
    TestPicture.Height = 1580 / Escala * 12

    TestPicture3.Width = 1580 / EscalaMiniMapa * 12
    TestPicture3.Height = 1580 / EscalaMiniMapa * 12

    TestPicture4.Width = 1580 / EscalaMapaQ * 12
    TestPicture4.Height = 1580 / EscalaMapaQ * 12

    If Not FileExist(sPath & 1 & ".bmp", vbArchive) And Not FileExist(sPath & 144 & ".bmp", vbArchive) Then
        MsgBox "No se encontraron las vistas previas (imagenes de desgloce del mapa). " & vbNewLine & " Deben generarse primero desde el WorldEditor. " & vbNewLine & "No se puede continuar."
        End
    End If

    For X = 0 To 11
        For Y = 0 To 11
            If i < 145 Then
                i = i + 1
                frmMain.Caption = i & "/144"
                Temporal.Picture = LoadPicture(sPath & i & ".bmp")
                'Temporal.Width = 1580 / Escala
                'Temporal.Height = 1580 / Escala
                Call TestPicture.PaintPicture(Temporal, X * 1580 / Escala, Y * 1580 / Escala, 1580 / Escala, 1580 / Escala)

                'Temporal2.Picture = LoadPicture(Ruta & i & ".bmp")
                Call TestPicture2.PaintPicture(Temporal, X * 1580 / EscalaMiniMapaWE, Y * 1580 / EscalaMiniMapaWE, 1580 / EscalaMiniMapaWE, 1580 / EscalaMiniMapaWE)

                'Temporal2.Picture = LoadPicture(Ruta & i & ".bmp")
                Call TestPicture4.PaintPicture(Temporal, X * 1580 / EscalaMapaQ, Y * 1580 / EscalaMapaQ, 1580 / EscalaMapaQ, 1580 / EscalaMapaQ)

                If Not Debuggin Then
                    Kill sPath & i & ".bmp"
                End If

            End If
        Next Y
    Next X

    SavePicture TestPicture.Image, sPath & "MapaToPSD" & bMap & ".bmp"
    SavePicture TestPicture2.Image, sPath & "MiniMapaWe" & bMap & ".jpg"
    SavePicture TestPicture4.Image, sPath & "Mapa" & bMap & ".jpg"

    MsgBox "Mapa " & bMap & " creado correctamnete en: " & sPath

    End

 On Error GoTo 0
 Exit Sub

CreateMap_Error:

 Call MsgBox("Error " & Err.Number & " (" & Err.Description & ") procedimiento CreateMap Formulario frmMain línea: " & Erl())

End Sub

Private Sub cmdCreateMap_Click()

    'Call CreateMap
    On Error GoTo 0
    Exit Sub

cmdCreateMap_Click_Error:

    MsgBox ("Error en " & App.EXEName & ".exe " & Err.Number & " (" & Err.Description & ") procedimiento cmdCreateMap_Click Formulario frmMain línea: " & Erl())

End Sub

Public Sub Click(ByVal sPath As String)
    Call CreateMap(sPath)
End Sub

