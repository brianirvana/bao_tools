VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "Macro Recortar"
   ClientHeight    =   7245
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   13155
   LinkTopic       =   "Form1"
   ScaleHeight     =   483
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   877
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command 
      Caption         =   "Cascos"
      Height          =   375
      Left            =   9720
      TabIndex        =   6
      Top             =   6360
      Width           =   1935
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Armas"
      Height          =   375
      Left            =   7320
      TabIndex        =   5
      Top             =   6360
      Width           =   2295
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Escudos"
      Height          =   375
      Left            =   4920
      TabIndex        =   4
      Top             =   6360
      Width           =   2295
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cabezas"
      Height          =   375
      Left            =   2520
      TabIndex        =   3
      Top             =   6360
      Width           =   2295
   End
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   6135
      Left            =   6720
      ScaleHeight     =   6135
      ScaleWidth      =   6375
      TabIndex        =   2
      Top             =   120
      Width           =   6375
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Cuerpos"
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   6360
      Width           =   2295
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   6135
      Left            =   120
      ScaleHeight     =   409
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   425
      TabIndex        =   0
      Top             =   120
      Width           =   6375
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim pngClass                    As New LoadPNG
Private Declare Function SetPixel Lib "gdi32" (ByVal hDC As Long, _
                                               ByVal X As Long, ByVal Y As Long, _
                                               ByVal crColor As Long) As Long
Private Declare Function GetPixel Lib "gdi32" (ByVal hDC As Long, ByVal X As Long, ByVal Y As Long) As Long

Private Sub Filtrar()
Dim X                           As Long
Dim Y                           As Long
Dim Color                       As Long
    For X = 0 To Picture1.width
        For Y = 0 To Picture1.height
            Color = GetPixel(Picture1.hDC, X, Y)
            If Color = 0 Then
                Call SetPixel(Picture1.hDC, X, Y, RGB(255, 255, 255))
            ElseIf Color = RGB(255, 255, 255) Then
                Call SetPixel(Picture1.hDC, X, Y, RGB(254, 254, 254))
            End If
        Next Y
    Next X
End Sub

Private Sub Command_Click()
    On Error Resume Next
    Dim CurrentGrhIndex         As Integer
    Dim Grafico                 As Integer
    Dim i                       As Long
    For i = 1 To UBound(CascoAnimData)
        With CascoAnimData(i)
            Picture1.Cls
            Picture1.Refresh
            CurrentGrhIndex = GrhData(.Head(E_Heading.SOUTH).GrhIndex).Frames(1)
            Grafico = GrhData(CurrentGrhIndex).FileNum

            'Picture2.Picture = LoadPicture(App.Path & "\GRAFICOS\" & Grafico & ".bmp")
            Picture2.Picture = LoadPicture("")
            pngClass.PicBox = Picture2
            pngClass.SetToBkgrnd False, 0, 0    'set to Background (True or false), x and y
            pngClass.BackgroundPicture = Picture2    'same Backgroundpicture
            pngClass.SetAlpha = True    'when Alpha then alpha
            pngClass.SetTrans = True    'when transparent Color then transparent Color
            pngClass.OpenPNG App.Path & "\GRAFICOS\" & Grafico & ".png"

            Picture2.Refresh
            Picture1.height = GrhData(CurrentGrhIndex).pixelHeight
            Picture1.width = GrhData(CurrentGrhIndex).pixelWidth
            Call Picture1.PaintPicture(Picture2.Image, 0, 0, , , GrhData(CurrentGrhIndex).sX, GrhData(CurrentGrhIndex).sY, GrhData(CurrentGrhIndex).pixelWidth, GrhData(CurrentGrhIndex).pixelHeight)
            Picture1.Refresh
            Call Filtrar
            Call SavePicture(Picture1.Image, App.Path & "\Archivos\Helmet\" & i & ".bmp")
            DoEvents
        End With
    Next i
End Sub

Private Sub Command1_Click()
    On Error Resume Next
    Dim CurrentGrhIndex         As Integer
    Dim Grafico                 As Integer
    Dim i                       As Long
    For i = 1 To UBound(BodyData)
        With BodyData(i)
            Picture1.Cls
            Picture1.Refresh
            CurrentGrhIndex = GrhData(.Walk(E_Heading.SOUTH).GrhIndex).Frames(1)
            Grafico = GrhData(CurrentGrhIndex).FileNum

            'Picture2.Picture = LoadPicture(App.Path & "\GRAFICOS\" & Grafico & ".bmp")
            Picture2.Picture = LoadPicture("")
            pngClass.PicBox = Picture2
            pngClass.SetToBkgrnd False, 0, 0    'set to Background (True or false), x and y
            pngClass.BackgroundPicture = Picture2    'same Backgroundpicture
            pngClass.SetAlpha = True    'when Alpha then alpha
            pngClass.SetTrans = True    'when transparent Color then transparent Color
            pngClass.OpenPNG App.Path & "\GRAFICOS\" & Grafico & ".png"

            Picture2.Refresh
            Picture1.height = GrhData(CurrentGrhIndex).pixelHeight
            Picture1.width = GrhData(CurrentGrhIndex).pixelWidth
            Call Filtrar
            Call Picture1.PaintPicture(Picture2.Image, 0, 0, , , GrhData(CurrentGrhIndex).sX, GrhData(CurrentGrhIndex).sY, GrhData(CurrentGrhIndex).pixelWidth, GrhData(CurrentGrhIndex).pixelHeight)
            Picture1.Refresh
            Call Filtrar
            Call GuardarInt(App.Path & "\Archivos\Body\" & i & ".txt", CStr(.HeadOffset.Y))
            Call SavePicture(Picture1.Image, App.Path & "\Archivos\Body\" & i & ".bmp")
            DoEvents
        End With
    Next i
End Sub

Private Sub Command2_Click()
    On Error Resume Next
    Dim CurrentGrhIndex         As Integer
    Dim Grafico                 As Integer
    Dim i                       As Long
    For i = 1 To UBound(HeadData)
        With HeadData(i)
            Picture1.Cls
            Picture1.Refresh
            CurrentGrhIndex = GrhData(.Head(E_Heading.SOUTH).GrhIndex).Frames(1)
            Grafico = GrhData(CurrentGrhIndex).FileNum

            'Picture2.Picture = LoadPicture(App.Path & "\GRAFICOS\" & Grafico & ".bmp")
            Picture2.Picture = LoadPicture("")
            pngClass.PicBox = Picture2
            pngClass.SetToBkgrnd False, 0, 0    'set to Background (True or false), x and y
            pngClass.BackgroundPicture = Picture2    'same Backgroundpicture
            pngClass.SetAlpha = True    'when Alpha then alpha
            pngClass.SetTrans = True    'when transparent Color then transparent Color
            pngClass.OpenPNG App.Path & "\GRAFICOS\" & Grafico & ".png"

            Picture2.Refresh
            Picture1.height = GrhData(CurrentGrhIndex).pixelHeight
            Picture1.width = GrhData(CurrentGrhIndex).pixelWidth
            Call Picture1.PaintPicture(Picture2.Image, 0, 0, , , GrhData(CurrentGrhIndex).sX, GrhData(CurrentGrhIndex).sY, GrhData(CurrentGrhIndex).pixelWidth, GrhData(CurrentGrhIndex).pixelHeight)
            Picture1.Refresh
            Call Filtrar
            Call SavePicture(Picture1.Image, App.Path & "\Archivos\Head\" & i & ".bmp")
            DoEvents
        End With
    Next i
End Sub

Private Sub Command3_Click()
    On Error Resume Next
    Dim CurrentGrhIndex         As Integer
    Dim Grafico                 As Integer
    Dim i                       As Long
    For i = 1 To UBound(ShieldAnimData)
        With ShieldAnimData(i)
            Picture1.Cls
            Picture1.Refresh
            CurrentGrhIndex = GrhData(.ShieldWalk(E_Heading.SOUTH).GrhIndex).Frames(1)
            Grafico = GrhData(CurrentGrhIndex).FileNum


            'Picture2.Picture = LoadPicture(App.Path & "\GRAFICOS\" & Grafico & ".bmp")
            Picture2.Picture = LoadPicture("")
            pngClass.PicBox = Picture2
            pngClass.SetToBkgrnd False, 0, 0    'set to Background (True or false), x and y
            pngClass.BackgroundPicture = Picture2    'same Backgroundpicture
            pngClass.SetAlpha = True    'when Alpha then alpha
            pngClass.SetTrans = True    'when transparent Color then transparent Color
            pngClass.OpenPNG App.Path & "\GRAFICOS\" & Grafico & ".png"

            Picture2.Refresh
            Picture1.height = GrhData(CurrentGrhIndex).pixelHeight
            Picture1.width = GrhData(CurrentGrhIndex).pixelWidth
            Call Picture1.PaintPicture(Picture2.Image, 0, 0, , , GrhData(CurrentGrhIndex).sX, GrhData(CurrentGrhIndex).sY, GrhData(CurrentGrhIndex).pixelWidth, GrhData(CurrentGrhIndex).pixelHeight)
            Picture1.Refresh
            Call Filtrar
            Call SavePicture(Picture1.Image, App.Path & "\Archivos\Shield\" & i & ".bmp")
            DoEvents
        End With
    Next i
End Sub

Private Sub Command4_Click()
    On Error Resume Next
    Dim CurrentGrhIndex         As Integer
    Dim Grafico                 As Integer
    Dim i                       As Long
    For i = 1 To UBound(WeaponAnimData)
        With WeaponAnimData(i)

            ' Visualiza el Archivo en Picture1


            Picture1.Cls
            Picture1.Refresh
            CurrentGrhIndex = GrhData(.WeaponWalk(E_Heading.SOUTH).GrhIndex).Frames(1)
            Grafico = GrhData(CurrentGrhIndex).FileNum

            'Picture2.Picture = LoadPicture(App.Path & "\GRAFICOS\" & Grafico & ".bmp")
            Picture2.Picture = LoadPicture("")
            pngClass.PicBox = Picture2
            pngClass.SetToBkgrnd False, 0, 0    'set to Background (True or false), x and y
            pngClass.BackgroundPicture = Picture2    'same Backgroundpicture
            pngClass.SetAlpha = True    'when Alpha then alpha
            pngClass.SetTrans = True    'when transparent Color then transparent Color
            pngClass.OpenPNG App.Path & "\GRAFICOS\" & Grafico & ".png"

            Picture2.Refresh
            Picture1.height = GrhData(CurrentGrhIndex).pixelHeight
            Picture1.width = GrhData(CurrentGrhIndex).pixelWidth
            Call Picture1.PaintPicture(Picture2.Image, 0, 0, , , GrhData(CurrentGrhIndex).sX, GrhData(CurrentGrhIndex).sY, GrhData(CurrentGrhIndex).pixelWidth, GrhData(CurrentGrhIndex).pixelHeight)
            Picture1.Refresh
            Call Filtrar

            Call SavePicture(Picture1.Image, App.Path & "\Archivos\Weapon\" & i & ".bmp")
            'Call FImage.FILoad(App.Path & "\Archivos\Weapon\" & i & ".bmp")
            'Call FImage.FISave(App.Path & "\Archivos\Weapon\" & i & ".png", FIF_PNG)
            DoEvents

        End With
    Next i
End Sub

Private Sub Form_Load()

    If Not FileExist(App.Path & "\INIT", vbDirectory) Then MsgBox "Se requiere los INIT.": End
    If Not FileExist(App.Path & "\GRAFICOS", vbDirectory) Then MsgBox "Se requiere los GRAFICOS.": End
    Dim Temp                    As String
    Temp = App.Path & "\Archivos"
    If Not FileExist(Temp, vbDirectory) Then MkDir Temp
    Temp = App.Path & "\Archivos\Body"
    If Not FileExist(Temp, vbDirectory) Then MkDir Temp
    Temp = App.Path & "\Archivos\Head"
    If Not FileExist(Temp, vbDirectory) Then MkDir Temp
    Temp = App.Path & "\Archivos\Shield"
    If Not FileExist(Temp, vbDirectory) Then MkDir Temp
    Temp = App.Path & "\Archivos\Helmet"
    If Not FileExist(Temp, vbDirectory) Then MkDir Temp
    Temp = App.Path & "\Archivos\Weapon"
    If Not FileExist(Temp, vbDirectory) Then MkDir Temp
    Call modCargar.LoadGrhData
    Call modCargar.CargarCabezas
    Call modCargar.CargarCascos
    Call modCargar.CargarCuerpos
    Call modCargar.CargarAnimEscudos
    Call modCargar.CargarAnimArmas
    
End Sub

Private Sub GuardarInt(ByRef Ruta As String, ByRef Data As String)
Dim f                           As Integer
    f = FreeFile
    Open Ruta For Output As f
    Print #f, Data
    Close #f
End Sub
