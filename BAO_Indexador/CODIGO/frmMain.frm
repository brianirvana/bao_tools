VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form frmMain 
   BackColor       =   &H00C0C0C0&
   Caption         =   "tX"
   ClientHeight    =   9270
   ClientLeft      =   120
   ClientTop       =   750
   ClientWidth     =   13935
   Enabled         =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   618
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   929
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame 
      Height          =   6375
      Left            =   120
      TabIndex        =   14
      Top             =   1440
      Visible         =   0   'False
      Width           =   2415
      Begin VB.TextBox txtEnum 
         Height          =   2175
         Left            =   120
         MultiLine       =   -1  'True
         TabIndex        =   26
         Top             =   3600
         Width           =   2175
      End
      Begin VB.ComboBox cmbEfectos 
         Height          =   315
         ItemData        =   "frmMain.frx":0000
         Left            =   1080
         List            =   "frmMain.frx":0002
         Style           =   2  'Dropdown List
         TabIndex        =   25
         Top             =   2520
         Width           =   1215
      End
      Begin VB.ComboBox cmbEscudos 
         Height          =   315
         ItemData        =   "frmMain.frx":0004
         Left            =   1080
         List            =   "frmMain.frx":0006
         Style           =   2  'Dropdown List
         TabIndex        =   24
         Top             =   2160
         Width           =   1215
      End
      Begin VB.ComboBox cmbCuerpos 
         Height          =   315
         ItemData        =   "frmMain.frx":0008
         Left            =   1080
         List            =   "frmMain.frx":000A
         Style           =   2  'Dropdown List
         TabIndex        =   23
         Top             =   1800
         Width           =   1215
      End
      Begin VB.ComboBox cmbCascos 
         Height          =   315
         ItemData        =   "frmMain.frx":000C
         Left            =   1080
         List            =   "frmMain.frx":000E
         Style           =   2  'Dropdown List
         TabIndex        =   22
         Top             =   1440
         Width           =   1215
      End
      Begin VB.ComboBox cmbCabezas 
         Height          =   315
         ItemData        =   "frmMain.frx":0010
         Left            =   1080
         List            =   "frmMain.frx":0012
         Style           =   2  'Dropdown List
         TabIndex        =   21
         Top             =   1080
         Width           =   1215
      End
      Begin VB.ComboBox cmbArmas 
         Height          =   315
         ItemData        =   "frmMain.frx":0014
         Left            =   1080
         List            =   "frmMain.frx":0016
         Style           =   2  'Dropdown List
         TabIndex        =   20
         Top             =   720
         Width           =   1215
      End
      Begin VB.ComboBox cmbTipo 
         Height          =   315
         ItemData        =   "frmMain.frx":0018
         Left            =   1080
         List            =   "frmMain.frx":002E
         Style           =   2  'Dropdown List
         TabIndex        =   16
         Top             =   3000
         Width           =   1215
      End
      Begin VB.ComboBox cmbFondo 
         Enabled         =   0   'False
         Height          =   315
         ItemData        =   "frmMain.frx":0065
         Left            =   1080
         List            =   "frmMain.frx":0067
         Style           =   2  'Dropdown List
         TabIndex        =   15
         Top             =   240
         Width           =   1215
      End
      Begin VB.Label lblResetTip 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Reset"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   720
         TabIndex        =   34
         Top             =   5760
         Width           =   735
      End
      Begin VB.Label lblSaveTip 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Save"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   1440
         TabIndex        =   33
         Top             =   5760
         Width           =   855
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Efectos:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   7
         Left            =   120
         TabIndex        =   32
         Top             =   2520
         Width           =   930
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Escudos:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   5
         Left            =   120
         TabIndex        =   31
         Top             =   2160
         Width           =   930
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Cuerpos:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   30
         Top             =   1800
         Width           =   930
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Cascos:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   29
         Top             =   1440
         Width           =   930
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Cabezas:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   28
         Top             =   1080
         Width           =   930
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Armas:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   27
         Top             =   720
         Width           =   930
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Tipo:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   19
         Top             =   3000
         Width           =   930
      End
      Begin VB.Label lblTipo 
         Alignment       =   2  'Center
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Cabeza"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   18
         Top             =   3360
         Width           =   2130
      End
      Begin VB.Label lblInfo 
         Alignment       =   1  'Right Justify
         Caption         =   "Fondo:"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Index           =   6
         Left            =   120
         TabIndex        =   17
         Top             =   240
         Width           =   930
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Auto Skins"
      Height          =   255
      Left            =   14520
      TabIndex        =   68
      Top             =   1680
      Width           =   1215
   End
   Begin VB.CommandButton cmdCopyBodiesPNGtoFolder 
      Caption         =   "Copy Bodies PNG to folder"
      Height          =   255
      Left            =   14520
      TabIndex        =   67
      Top             =   960
      Width           =   2295
   End
   Begin VB.TextBox txtFiltroPNG 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   120
      TabIndex        =   65
      Top             =   840
      Width           =   2415
   End
   Begin VB.Frame frmCrearTexturaPiso 
      Caption         =   "Crear Textura/Piso"
      Height          =   2295
      Left            =   9840
      TabIndex        =   55
      Top             =   480
      Width           =   3735
      Begin VB.TextBox Text1 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1560
         TabIndex        =   69
         Text            =   "4"
         Top             =   960
         Width           =   1935
      End
      Begin VB.OptionButton optHeads 
         Caption         =   "Cabeza"
         Height          =   255
         Left            =   1200
         TabIndex        =   64
         Top             =   240
         Value           =   -1  'True
         Width           =   855
      End
      Begin VB.OptionButton optTexture 
         Caption         =   "Textura"
         Height          =   255
         Left            =   240
         TabIndex        =   63
         Top             =   240
         Width           =   855
      End
      Begin VB.TextBox txtTextureWidth 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   360
         TabIndex        =   60
         Text            =   "8"
         Top             =   1320
         Width           =   855
      End
      Begin VB.TextBox txtTextureHeigth 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   360
         TabIndex        =   59
         Text            =   "4"
         Top             =   1920
         Width           =   855
      End
      Begin VB.TextBox txtPngNum 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   2520
         TabIndex        =   57
         Text            =   "6000"
         Top             =   1560
         Width           =   855
      End
      Begin VB.CommandButton cmdMadeTexture 
         Caption         =   "Crear"
         Height          =   255
         Left            =   2520
         TabIndex        =   56
         Top             =   1920
         Width           =   855
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Alias textura (Nombre WE)"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   720
         TabIndex        =   70
         Top             =   600
         Width           =   2775
      End
      Begin VB.Label lblCrearTexturasAlto 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Alto:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   120
         TabIndex        =   62
         Top             =   1680
         Width           =   1455
      End
      Begin VB.Label lblCrearTexturasAncho 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Ancho"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   120
         TabIndex        =   61
         Top             =   1080
         Width           =   1455
      End
      Begin VB.Label Label10 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "PNG:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2400
         TabIndex        =   58
         Top             =   1320
         Width           =   975
      End
   End
   Begin VB.TextBox txtAnimacionHasta 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   7800
      TabIndex        =   54
      Top             =   1320
      Width           =   855
   End
   Begin VB.CommandButton cmdCrearAnimacion 
      Caption         =   "Crear Animacion"
      Height          =   255
      Left            =   6840
      TabIndex        =   53
      Top             =   960
      Width           =   1575
   End
   Begin VB.TextBox txtAnimacionDesde 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   6600
      TabIndex        =   52
      Top             =   1320
      Width           =   855
   End
   Begin VB.TextBox txtFiltro 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   120
      TabIndex        =   50
      Top             =   360
      Width           =   2415
   End
   Begin VB.TextBox txtNumFrames 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   3720
      TabIndex        =   48
      Top             =   1920
      Width           =   615
   End
   Begin VB.TextBox txtVelocity 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   8280
      TabIndex        =   41
      Top             =   1920
      Width           =   855
   End
   Begin VB.TextBox txtYTo 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   7440
      TabIndex        =   40
      Top             =   1920
      Width           =   615
   End
   Begin VB.TextBox txtXTo 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   6840
      TabIndex        =   39
      Top             =   1920
      Width           =   615
   End
   Begin VB.TextBox txtYFrom 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   6120
      TabIndex        =   38
      Top             =   1920
      Width           =   615
   End
   Begin VB.TextBox txtXFrom 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   5520
      TabIndex        =   37
      Top             =   1920
      Width           =   615
   End
   Begin VB.TextBox txtNumPNG 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   4440
      TabIndex        =   36
      Top             =   1920
      Width           =   855
   End
   Begin VB.CheckBox chkTamano 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Mostrar Tamaños"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   2640
      TabIndex        =   11
      Top             =   720
      Width           =   2175
   End
   Begin VB.CommandButton cmdLiberar 
      Caption         =   "Free Mem"
      Height          =   255
      Left            =   8280
      TabIndex        =   9
      Top             =   2640
      Width           =   855
   End
   Begin VB.CheckBox chkEncuadrarGrafico 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Encuadrar Grafico"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   2640
      TabIndex        =   8
      Top             =   960
      Width           =   2655
   End
   Begin VB.TextBox txtGrh 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   360
      Left            =   3720
      TabIndex        =   5
      Top             =   2280
      Width           =   4500
   End
   Begin VB.CheckBox chkEncuadrarGrh 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      Caption         =   "Encuadrar Grh"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   2640
      TabIndex        =   3
      Top             =   1200
      Width           =   2415
   End
   Begin VB.PictureBox renderer 
      BackColor       =   &H00808080&
      BorderStyle     =   0  'None
      FillColor       =   &H00808080&
      Height          =   6240
      Left            =   2640
      ScaleHeight     =   416
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   734
      TabIndex        =   0
      Top             =   2880
      Width           =   11010
   End
   Begin MSComctlLib.Slider Escala 
      Height          =   375
      Left            =   2640
      TabIndex        =   35
      Top             =   240
      Width           =   6615
      _ExtentX        =   11668
      _ExtentY        =   661
      _Version        =   393216
      Min             =   1
      SelStart        =   3
      Value           =   3
   End
   Begin VB.ListBox lstGraphics 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00E0E0E0&
      Height          =   7440
      Left            =   0
      TabIndex        =   13
      Top             =   1200
      Width           =   2415
   End
   Begin VB.Label Label13 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Filtrar: (por num de PNG)"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   360
      TabIndex        =   66
      Top             =   630
      Width           =   1935
   End
   Begin VB.Label Label7 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Filtrar: (por num o Nulo)"
      BeginProperty Font 
         Name            =   "Calibri"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   51
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label lblNumFrames 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Num Frames"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3675
      TabIndex        =   49
      Top             =   1500
      Width           =   735
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Velocidad"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   8205
      TabIndex        =   47
      Top             =   1680
      Width           =   975
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "tY"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   7590
      TabIndex        =   46
      Top             =   1680
      Width           =   255
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "tX"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   6960
      TabIndex        =   45
      Top             =   1680
      Width           =   255
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   6270
      TabIndex        =   44
      Top             =   1680
      Width           =   255
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5685
      TabIndex        =   43
      Top             =   1680
      Width           =   255
   End
   Begin VB.Label lblNumPNG 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Num .PNG"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4440
      TabIndex        =   42
      Top             =   1500
      Width           =   615
   End
   Begin VB.Label lblSave 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Save"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   8760
      TabIndex        =   12
      Top             =   2280
      Width           =   615
   End
   Begin VB.Label lblOption 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Estilo 3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   2
      Left            =   5280
      TabIndex        =   10
      Top             =   2640
      Width           =   1335
   End
   Begin VB.Label lblReset 
      Alignment       =   1  'Right Justify
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Reset"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   8160
      TabIndex        =   7
      Top             =   2280
      Width           =   615
   End
   Begin VB.Label lblGrh 
      Alignment       =   1  'Right Justify
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   285
      Left            =   2640
      TabIndex        =   6
      Top             =   2280
      Width           =   1095
   End
   Begin VB.Label Label1 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Escala:"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2640
      TabIndex        =   4
      Top             =   0
      Width           =   855
   End
   Begin VB.Label lblOption 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Estilo 2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   1
      Left            =   3960
      TabIndex        =   2
      Top             =   2640
      Width           =   1335
   End
   Begin VB.Label lblOption 
      Alignment       =   2  'Center
      BackColor       =   &H000000FF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Estilo 1"
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
      Height          =   255
      Index           =   0
      Left            =   2640
      TabIndex        =   1
      Top             =   2640
      Width           =   1335
   End
   Begin VB.Menu lblArchivo 
      Caption         =   "Archivo"
      Begin VB.Menu cChangeDirectory 
         Caption         =   "Cambiar Directorios..."
      End
      Begin VB.Menu lblExportarTODO 
         Caption         =   "Exportar Graficos"
      End
      Begin VB.Menu lblIndexarTODO 
         Caption         =   "Indexar Graficos"
      End
      Begin VB.Menu SaveIndexs 
         Caption         =   "Guardar"
      End
   End
   Begin VB.Menu cmdTips 
      Caption         =   "Tips"
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'frmMain - Programado por MaTeO - 18:55hs 13/05/2012
'Changelog (ultima modificacion 13/05/2012):
'13/05/2012 - Primer release de esta clase, sera la interfaz del programa
Private SaveLine(40000)         As String
Public NoProcessTxt             As Boolean

Public txtEnumNoProcess         As String
Public txtEnumArgArmas          As String
Public txtEnumArgCabezas        As String
Public txtEnumArgCascos         As String
Public txtEnumArgCuerpos        As String
Public txtEnumArgEscudos        As String
Public txtEnumArgEfectos        As String

Private Sub cChangeDirectory_Click()
    frmDirectory.Show
End Sub


Private Sub chkEncuadrarGrafico_Click()
    If Not (TileEngine Is Nothing) Then
        TileEngine.EncuadrarGrafico = IIf(chkEncuadrarGrafico = vbChecked, True, False)
    End If
End Sub

Private Sub chkEncuadrarGrh_Click()
    If Not (TileEngine Is Nothing) Then
        TileEngine.Encuadrar = IIf(chkEncuadrarGrh = vbChecked, True, False)
    End If
End Sub


Private Sub chkTamano_Click()
    If Not (TileEngine Is Nothing) Then
        TileEngine.VerTamaño = IIf(chkTamano = vbChecked, True, False)
    End If
End Sub


Private Sub cmbAnim_Change()
    If lstGraphics.ListIndex <> -1 Then
        Call TileEngine.LoadGraphic(SP_Main, lstGraphics.ListIndex + 1)
    End If
End Sub

Private Sub ResetAnimations()
      Dim i                           As Long
   On Error GoTo ResetAnimations_Error

10        For i = 0 To 3
20            SP_Escudos(i).SetCurrentFrame = 1
30            SP_Cuerpos(i).SetCurrentFrame = 1
40            SP_Cascos(i).SetCurrentFrame = 1
50            SP_Cabezas(i).SetCurrentFrame = 1
60            SP_Armas(i).SetCurrentFrame = 1
70            SP_Efectos.SetCurrentFrame = 1
80        Next i

90        Call cmbTipo_Click

   On Error GoTo 0
   Exit Sub

ResetAnimations_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure ResetAnimations of Formulario frmMain Linea: " & Erl())
End Sub

Private Sub cmbArmas_Click()

   On Error GoTo cmbArmas_Click_Error

10        If cmbArmas.ListIndex = -1 Then Exit Sub

          Dim Index                   As Integer
          Dim i                       As Long

20        Index = cmbArmas.ListIndex
30        txtEnumArgArmas = vbNullString

          Dim MaxVar                  As Long

40        MaxVar = ResizeList(TipList.Armas, Index, NumWeaponAnims, cmbArmas)

50        If MaxVar Then
60            ReDim Preserve WeaponAnimData(1 To MaxVar)
70        End If

80        If Index = 0 Then
90            Call EraseArrayInteger(NumGraphic_Armas)
100           NumAnim_Armas = 0
110       Else
              'txtEnumArg = "[ARMA" & Index & "]"
120           NumAnim_Armas = Index
130           For i = 0 To 3
140               NumGraphic_Armas(i) = TileEngine.LoadGraphic(SP_Armas(i), WeaponAnimData(Index).WeaponWalk(i + 1).GrhIndex)
150               txtEnumArgArmas = txtEnumArgArmas & GetDirectionString(i) & "=" & WeaponAnimData(Index).WeaponWalk(i + 1).GrhIndex & vbCrLf
160           Next i
170       End If
180       Call ResetAnimations

   On Error GoTo 0
   Exit Sub

cmbArmas_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure cmbArmas_Click of Formulario frmMain Linea: " & Erl())
End Sub

Private Sub cmbCabezas_Click()
   On Error GoTo cmbCabezas_Click_Error

10        If cmbCabezas.ListIndex = -1 Then Exit Sub
          Dim Index                   As Integer
          Dim i                       As Long
20        Index = cmbCabezas.ListIndex
30        txtEnumArgCabezas = vbNullString

          Dim MaxVar                  As Long
40        MaxVar = ResizeList(TipList.Cabezas, Index, Numheads, cmbCabezas)

50        If MaxVar Then
60            ReDim Preserve HeadData(0 To MaxVar)
70        End If

80        If Index = 0 Then
90            Call EraseArrayInteger(NumGraphic_Cabezas)
100           NumAnim_Cabezas = 0
110       Else
              'txtEnumArg = "[HEAD" & Index & "]"
120           NumAnim_Cabezas = Index
130           For i = 0 To 3
140               NumGraphic_Cabezas(i) = TileEngine.LoadGraphic(SP_Cabezas(i), HeadData(Index).Head(i + 1).GrhIndex)
150               txtEnumArgCabezas = txtEnumArgCabezas & GetDirectionString(i) & "=" & HeadData(Index).Head(i + 1).GrhIndex & vbCrLf
160           Next i
170       End If
180       Call ResetAnimations

   On Error GoTo 0
   Exit Sub

cmbCabezas_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure cmbCabezas_Click of Formulario frmMain Linea: " & Erl())
End Sub

Private Sub cmbCascos_Click()
10  On Error GoTo cmbCascos_Click_Error

20  If cmbCascos.ListIndex = -1 Then Exit Sub
    Dim Index                   As Integer
    Dim i                       As Long
30  Index = cmbCascos.ListIndex
40  txtEnumArgCascos = vbNullString

    Dim MaxVar                  As Long
50  MaxVar = ResizeList(TipList.Cascos, Index, NumCascos, cmbCascos)

60  If MaxVar Then
70      ReDim Preserve CascoAnimData(0 To MaxVar)
80  End If

90  If Index = 0 Then
100     Call EraseArrayInteger(NumGraphic_Cascos)
110     NumAnim_Cascos = 0
120 Else
        'txtEnumArg = "[CASCO" & Index & "]"
130     NumAnim_Cascos = Index
140     For i = 0 To 3
150         NumGraphic_Cascos(i) = TileEngine.LoadGraphic(SP_Cascos(i), CascoAnimData(Index).Head(i + 1).GrhIndex)
160         txtEnumArgCascos = txtEnumArgCascos & GetDirectionString(i) & "=" & CascoAnimData(Index).Head(i + 1).GrhIndex & vbCrLf
170     Next i
180 End If
190 Call ResetAnimations

200 On Error GoTo 0
210 Exit Sub

cmbCascos_Click_Error:

220 Call LogError("Error " & err.Number & " (" & err.Description & ") en el procedimiento cmbCascos_Click del Formulario frmMain en la línea: " & Erl())

End Sub

Private Function ResizeList(ByVal Tip As Integer, ByRef Index As Integer, ByRef TempVar As Integer, cmbList As ComboBox, Optional ByVal bForceResize As Boolean = False, Optional ByVal bCantResize As Integer = 0) As Long

Dim IsTrue                      As Boolean

    On Error GoTo ResizeList_Error

    If cmbList Is Nothing Then
        Index = Index + 1
        IsTrue = (lstGraphics.ListCount + 1) = Index
    Else
        IsTrue = (cmbList.ListCount - 1) = Index
    End If

    If IsTrue Then
        Dim textInput           As String
        Dim AddResize           As Long
        Dim OldVar              As Long
        Dim i                   As Long

        If Not bForceResize Then

            textInput = InputBox("El actual valor es " & TempVar & vbCrLf & "¿Que valor desea setear?")

            If Left$(textInput, 1) = "+" Then
                textInput = Mid$(textInput, 2, Len(textInput) - 1)
                AddResize = Val(textInput) + Index - 2
            ElseIf Left$(textInput, 1) = "-" Then
                textInput = Mid$(textInput, 2, Len(textInput) - 1)
                AddResize = Index - 2 - Val(textInput)
            Else
                ' AddResize = Val(textInput)
                MsgBox "Para añadir un nuevo gráfico escriba: +1 (Agrega uno)" & vbNewLine & "Para borrar el último gráfico de la lista escriba: -1 (resta 1)."
                Exit Function
            End If

            If TempVar = AddResize Or AddResize = 0 Then
                Index = Index - 1
            ElseIf MsgBox("¿Estas seguro de redimencionar el valor de " & TempVar & " a " & AddResize & "?", vbYesNo) = vbNo Then
                Index = Index - 1
            Else
                OldVar = TempVar
                TempVar = AddResize

                If TempVar < OldVar Then
                    'Menor cantidad
                    Index = TempVar
                    For i = OldVar To TempVar + 1 Step -1
                        If cmbList Is Nothing Then
                            lstGraphics.RemoveItem i - 1
                        Else
                            cmbList.RemoveItem i
                        End If
                    Next i
                ElseIf TempVar > OldVar Then
                    'Mayor cantidad
                    For i = OldVar + 1 To TempVar
                        If cmbList Is Nothing Then
                            lstGraphics.List(i - 1) = i
                        Else
                            cmbList.List(i) = i
                        End If
                    Next i

                    If cmbList Is Nothing Then
                        lstGraphics.AddItem "Resize"
                    Else
                        cmbList.AddItem "Resize"
                    End If
                End If
                ResizeList = AddResize
            End If
        Else
            bCantResize = TempVar + bCantResize
            OldVar = TempVar
            TempVar = bCantResize

            If TempVar < OldVar Then
                'Menor cantidad
                Index = TempVar
                For i = OldVar To TempVar + 1 Step -1
                    If cmbList Is Nothing Then
                        lstGraphics.RemoveItem i - 1
                    Else
                        cmbList.RemoveItem i
                    End If
                Next i
            ElseIf TempVar > OldVar Then
                'Mayor cantidad
                For i = OldVar + 1 To TempVar
                    If cmbList Is Nothing Then
                        lstGraphics.List(i - 1) = i
                    Else
                        cmbList.List(i) = i
                    End If
                Next i

                If cmbList Is Nothing Then
                    lstGraphics.AddItem "Resize"
                Else
                    cmbList.AddItem "Resize"
                End If
            End If
            ResizeList = TempVar
            ReDim Preserve GrhData(1 To TempVar)
            
            If TempVar Then
                grhCount = TempVar
                Call WriteVar(AppExpo & "\Graficos.ini", "INIT", "CountGrh", CStr(grhCount))
            End If
        
        End If

    End If
    
    If cmbList Is Nothing Then
        Index = Index - 1
        lstGraphics.Refresh
    Else
        cmbList.Refresh
    End If
    
    On Error GoTo 0
    Exit Function

ResizeList_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure ResizeList of Formulario frmMain Linea: " & Erl())

End Function

Private Sub cmbCuerpos_Click()
10  On Error GoTo cmbCuerpos_Click_Error

20  If cmbCuerpos.ListIndex = -1 Then Exit Sub
    Dim Index                   As Integer
    Dim i                       As Long
30  Index = cmbCuerpos.ListIndex
40  txtEnumArgCuerpos = vbNullString

    Dim MaxVar                  As Long
50  MaxVar = ResizeList(TipList.Cuerpos, Index, NumBodies, cmbCuerpos)

60  If MaxVar Then
70      ReDim Preserve BodyData(0 To MaxVar)
80  End If

90  If Index = 0 Then
100     Call EraseArrayInteger(NumGraphic_Cuerpos)
110     NumAnim_Cuerpos = 0
120 Else
        'txtEnumArg = "[BODY" & Index & "]"
130     NumAnim_Cuerpos = Index
140     For i = 0 To 3
150         NumGraphic_Cuerpos(i) = TileEngine.LoadGraphic(SP_Cuerpos(i), BodyData(Index).Walk(i + 1).GrhIndex)
160         txtEnumArgCuerpos = txtEnumArgCuerpos & GetDirectionString(i) & "=" & BodyData(Index).Walk(i + 1).GrhIndex & vbCrLf
170     Next i
180     txtEnumArgCuerpos = txtEnumArgCuerpos & "OffSet=" & BodyData(Index).HeadOffset.X & "." & BodyData(Index).HeadOffset.Y
190 End If
200 Call ResetAnimations

210 On Error GoTo 0
220 Exit Sub

cmbCuerpos_Click_Error:

230 Call LogError("Error " & err.Number & " (" & err.Description & ") en el procedimiento cmbCuerpos_Click del Formulario frmMain en la línea: " & Erl())
End Sub

Private Sub cmbEfectos_Click()
    On Error GoTo cmbEfectos_Click_Error

10  If cmbEfectos.ListIndex = -1 Then Exit Sub
    Dim Index                   As Integer
    Dim i                       As Long
20  Index = cmbEfectos.ListIndex
30  txtEnumArgEfectos = vbNullString

    Dim MaxVar                  As Long
40  MaxVar = ResizeList(TipList.Efectos, Index, NumFxs, cmbEfectos)

50  If MaxVar Then
60      ReDim Preserve FxData(1 To MaxVar)
70  End If

80  If Index = 0 Then
90      NumGraphic_Efectos = 0
100     NumAnim_Efectos = 0
110 Else
        'txtEnumArg = "[FX" & Index & "]"
120     NumAnim_Efectos = Index
130     NumGraphic_Efectos = TileEngine.LoadGraphic(SP_Efectos, FxData(Index).Animacion)
140     txtEnumArgEfectos = txtEnumArgEfectos & "Anim=" & FxData(Index).Animacion & vbCrLf
150     txtEnumArgEfectos = txtEnumArgEfectos & "OffSet=" & FxData(Index).OffsetX & "." & FxData(Index).OffsetY
160 End If
170 Call ResetAnimations

    On Error GoTo 0
    Exit Sub

cmbEfectos_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en el procedimiento cmbEfectos_Click del Formulario frmMain en la línea: " & Erl())
End Sub

Private Sub cmbEscudos_Click()
   On Error GoTo cmbEscudos_Click_Error

10        If cmbEfectos.ListIndex = -1 Then Exit Sub
          Dim Index                   As Integer
          Dim i                       As Long
20        Index = cmbEscudos.ListIndex
30        txtEnumArgEscudos = vbNullString

          Dim MaxVar                  As Long
40        MaxVar = ResizeList(TipList.Escudos, Index, NumEscudosAnims, cmbEscudos)

50        If MaxVar Then
60            ReDim Preserve ShieldAnimData(1 To MaxVar)
70        End If

80        If Index = 0 Then
90            Call EraseArrayInteger(NumGraphic_Escudos)
100           NumAnim_Escudos = 0
110       Else
              'txtEnumArg = "[SHIELD" & Index & "]"
120           NumAnim_Escudos = Index
130           For i = 0 To 3
140               NumGraphic_Escudos(i) = TileEngine.LoadGraphic(SP_Escudos(i), ShieldAnimData(Index).ShieldWalk(i + 1).GrhIndex)
150               txtEnumArgEscudos = txtEnumArgEscudos & GetDirectionString(i) & "=" & ShieldAnimData(Index).ShieldWalk(i + 1).GrhIndex & vbCrLf
160           Next i
170       End If

   On Error GoTo 0
   Exit Sub

cmbEscudos_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure cmbEscudos_Click of Formulario frmMain Linea: " & Erl())
End Sub

Private Sub cmbTipo_Click()

      Static LastIndex                As Long
      Static NoProcess                As Boolean
   On Error GoTo cmbTipo_Click_Error

10        If NoProcess = True Then Exit Sub

          Dim i                       As Long
20        If Not txtEnum.Text = txtEnumNoProcess Then
              Dim NewIndex            As Long
30            NewIndex = cmbTipo.ListIndex
40            NoProcess = True
50            cmbTipo.ListIndex = LastIndex
60            Call lblSaveTip_Click
70            cmbTipo.ListIndex = NewIndex
80            NoProcess = False
90        End If

100       If cmbTipo.ListIndex <> -1 Then
110           lblTipo.Caption = Left$(cmbTipo.List(cmbTipo.ListIndex), Len(cmbTipo.List(cmbTipo.ListIndex)) - 1)
120           txtEnum.Text = txtEnumNoProcess
130           txtEnumNoProcess = vbNullString
140           Select Case cmbTipo.ListIndex
                  Case 0             'Armas
150                   txtEnum.Text = txtEnumArgArmas
160               Case 1             'Cabezas
170                   txtEnum.Text = txtEnumArgCabezas
180               Case 2             'Cascos
190                   txtEnum.Text = txtEnumArgCascos
200               Case 3             'Cuerpos
210                   txtEnum.Text = txtEnumArgCuerpos
220               Case 4             'Escudos
230                   txtEnum.Text = txtEnumArgEscudos
240               Case 5             'Efectos
250                   txtEnum.Text = txtEnumArgEfectos
260           End Select

270       End If

280       LastIndex = cmbTipo.ListIndex

   On Error GoTo 0
   Exit Sub

cmbTipo_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure cmbTipo_Click of Formulario frmMain Linea: " & Erl())
End Sub

Private Sub cmdCopyBodiesPNGtoFolder_Click()

'Dim i                           As Long
'Dim lastNum                     As Long
'Dim strTemp                     As String
'
'
'    For i = 1 To UBound(BodyData)
'
'        strTemp = BodyData(i).Walk(1).GrhIndex
'
'        If GrhData(BodyData(i).Walk(1).GrhIndex).FileNum > 0 And lastNum <> GrhData(BodyData(i).Walk(1).GrhIndex).FileNum Then
'            Debug.Print "strTemp: " & strTemp & " File PNG: " & GrhData(BodyData(i).Walk(1).GrhIndex).FileNum
'            lastNum = GrhData(BodyData(i).Walk(1).GrhIndex).FileNum
'        End If
'    Next i

End Sub

Private Sub cmdCrearAnimacion_Click()

      Dim i                           As Byte
      Dim tCount                      As Long
      Dim tLastCount                  As Long
      Dim sStr                        As String

   On Error GoTo cmdCrearAnimacion_Click_Error

10        If Val(txtAnimacionDesde.Text) > 0 And Val(txtAnimacionHasta.Text) > 0 Then
20            tCount = Val(txtAnimacionHasta.Text) - Val(txtAnimacionDesde.Text)
              'Valor absoluto.
30            tCount = Abs(tCount)
40            tLastCount = tCount
50            For i = 1 To tCount
60                If Len(sStr) = 0 Then
70                    sStr = tCount & "." & Val(txtAnimacionDesde.Text)
80                Else
90                    sStr = sStr & "." & Val(txtAnimacionDesde.Text) + tLastCount
100               End If
110               tLastCount = tLastCount + 1
                  
120               If i = tCount Then
130                   sStr = sStr & "." & "333,3333"
140               End If
150           Next i
              
160           txtGrh.Text = sStr
170       Else
180           MsgBox "Debe completar Animación desde (y el número de índice de la lista) y Animación Hasta"
190       End If

   On Error GoTo 0
   Exit Sub

cmdCrearAnimacion_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure cmdCrearAnimacion_Click of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub cmdLiberar_Click()
    If Not (TileEngine Is Nothing) Then
        Call TileEngine.LiberarMemoria
    End If
End Sub

Private Sub cmdTips_Click()
      Dim Message                     As String
   On Error GoTo cmdTips_Click_Error

10        Message = "Tips para PlusIndex" & vbCrLf & vbCrLf

20        Message = Message & "Manteniendo apretado el CLICK IZQUIERDO puedes arrastras el grafico por el render." & vbCrLf
30        Message = Message & "Manteniendo apretado el CLICK DERECHO y moviendo el mouse horizontalmente agregas y sacas zoom." & vbCrLf
40        Message = Message & "Haciendo DOBLE CLICK DERECHO reinicias la posicion del grafico a la izquierda superior izquierda." & vbCrLf
50        Message = Message & "Haciendo CLICK IZQUIERDO + CLICK DERECHO puedes encuadrar el frame que tienes seleccionado" & vbCrLf
60        Message = Message & "Haciendo CLICK CENTRAL (ruedita) puedes encuadrar el grafico que tienes seleccionado" & vbCrLf

70        MsgBox Message

   On Error GoTo 0
   Exit Sub

cmdTips_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure cmdTips_Click of Formulario frmMain Linea: " & Erl())
End Sub

Private Sub cmdMadeTexture_Click()

Dim bDone                       As Boolean
Dim X                           As Integer
Dim Y                           As Integer
Dim LastX                       As Integer
Dim LastY                       As Integer
Dim TempX                       As Integer
Dim TempY                       As Integer
Dim CountX                      As Integer
Dim CountY                      As Integer
Dim CountI                      As Integer
Dim i                           As Long
Dim tCount                      As Long
Dim sTmpGrh                     As String
Dim sValue                      As String

    On Error GoTo cmdMadeTexture_Click_Error

    '20  If Val(txtTextureFrom.Text) = 0 Then
    '30      MsgBox "Ingrese un valor DESDE"
    '40      Exit Sub
    '50  End If
    '
    '60  If Val(txtTextureTo.Text) = 0 Then
    '70      MsgBox "Ingrese un valor HASTA"
    '80      Exit Sub
    '90  End If

    If Val(txtPngNum.Text) = 0 Then
        MsgBox "Ingrese un número de PNG (de la carpeta /GRAFICOS/"
        Exit Sub
    End If

    If Val(txtTextureWidth.Text) = 0 Then
        MsgBox "Ingrese un valor de Ancho"
        Exit Sub
    End If

    If Val(txtTextureHeigth.Text) = 0 Then
        MsgBox "Ingrese un valor de Alto"
        Exit Sub
    End If

    If optTexture.Value = True Then
        
        i = UBound(GrhData)
        tCount = ResizeList(TipList.Graficos, lstGraphics.ListCount, CInt(grhCount), Nothing, True, Val(txtTextureWidth.Text) * Val(txtTextureHeigth.Text))
        LastX = 0
        LastY = 0
        
        For i = i + 1 To tCount
            CountI = CountI + 1
            sValue = "1" & Separator & Val(frmMain.txtPngNum.Text) & Separator & LastX & Separator & LastY & Separator & 32 & Separator & 32
            'txtGrh.Text = sValue    'Call ProcessGraphicLineToBin(sValue)
            Call ProcessGraphicLineToBin("GRH" & i & "=" & sValue)
            GrhData(i).FileNum = Val(frmMain.txtPngNum.Text)

            GrhData(i).sX = TempX + LastX
            GrhData(i).sY = TempY + LastY
            
            GrhData(i).pixelWidth = 32              'Ancho del gráfico
            GrhData(i).pixelHeight = 32             'Alto del gráfico
            GrhData(i).NumFrames = 1                'Cuadros por segundo
            GrhData(i).TileWidth = TempX + LastX    'Posición inicial X
            GrhData(i).TileHeight = TempY + LastY           'Posición inicial Y

            frmMain.lblGrh.Caption = i & "="
            LastX = LastX + 32
            
            If (CountI Mod 16 = 0) Then ' Or (CountI / 2 Mod 16 = 2) Or (CountI / 3 Mod 16 = 3) Or (CountI / 4 Mod 16 = 4) Then
                TempX = TempX + LastX
            End If
            
            If LastX / 4 = 32 Then
                LastX = 0
                LastY = LastY + 32
            End If
            
            If CountI Mod (Val(txtTextureWidth.Text) * Val(txtTextureHeigth.Text) / (txtTextureWidth.Text / 4)) = 0 Then
                TempY = TempY + LastY
                'LastY = 0
                TempX = 0
            End If

            If LastY / 4 = 32 Then
                LastY = 0
            End If
        Next i
        
    End If

    If frmMain.optHeads.Value = True Then
        i = UBound(GrhData)
        tCount = ResizeList(TipList.Graficos, lstGraphics.ListCount, CInt(grhCount), Nothing, True, 4)

        LastX = 0

        For i = i + 1 To tCount
            sValue = "1" & Separator & Val(frmMain.txtPngNum.Text) & Separator & "0" & Separator & "0" & Separator & Val(frmMain.txtTextureWidth.Text) & Separator & Val(frmMain.txtTextureHeigth.Text)
            txtGrh.Text = sValue    'Call ProcessGraphicLineToBin(sValue)
            GrhData(i).FileNum = Val(frmMain.txtPngNum.Text)
            GrhData(i).sX = LastX
            GrhData(i).sY = 0
            GrhData(i).pixelWidth = Val(frmMain.txtTextureWidth.Text)
            GrhData(i).pixelHeight = Val(frmMain.txtTextureHeigth.Text)
            GrhData(i).NumFrames = 1
            GrhData(i).TileWidth = Val(frmMain.txtTextureWidth.Text)
            GrhData(i).TileHeight = Val(frmMain.txtTextureHeigth.Text)

            frmMain.lblGrh.Caption = i & "="
            LastX = LastX + Val(frmMain.txtTextureWidth.Text)
        Next i

        Debug.Print "ASDASDASD"
    End If

    On Error GoTo 0
    Exit Sub

cmdMadeTexture_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure cmdMadeTexture_Click of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub Command1_Click()

      Dim i                       As Integer
      Dim J                       As Integer
      Dim tmpObj                  As Integer
      Dim BodyDatas               As BodyData

   On Error GoTo Command1_Click_Error

10        tmpObj = 1502
20        J = 1
30        For i = 519 To 685
40            BodyDatas = BodyData(i)
50            Call WriteVar(App.Path & "/OBJ.dat", "OBJ" & tmpObj, "NAME", "Skin " & J)
60            Call WriteVar(App.Path & "/OBJ.dat", "OBJ" & tmpObj, "ObjType", CStr(48))
70            Call WriteVar(App.Path & "/OBJ.dat", "OBJ" & tmpObj, "VALOR", CStr(10000))
80            Call WriteVar(App.Path & "/OBJ.dat", "OBJ" & tmpObj, "VALORDONANTE", CStr(2000))
90            Call WriteVar(App.Path & "/OBJ.dat", "OBJ" & tmpObj, "NumRopaje", CStr(i))
100           Call WriteVar(App.Path & "/OBJ.dat", "OBJ" & tmpObj, "GrhIndex", CStr(GrhData(BodyDatas.Walk(3).GrhIndex).Frames(1) & vbNewLine))
110           tmpObj = tmpObj + 1
120           J = J + 1
130       Next i

          MsgBox "Archivo OBJ.dat finalizado. Ruta: " & App.Path & "/OBJ.dat"
        
   On Error GoTo 0
   Exit Sub

Command1_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure Command1_Click of Formulario frmMain Linea: " & Erl())

End Sub

Public Sub Escala_Scroll()
    If Not (TileEngine Is Nothing) Then
        TileEngine.Escala = Escala.Value / 3
    End If
End Sub

Private Sub Form_Load()
    Call optHeads_Click
End Sub

Private Sub Form_Resize()
   On Error GoTo Form_Resize_Error

10        If frmMain.WindowState <> 1 Then
20            renderer.Width = frmMain.ScaleWidth - renderer.Left - 5
30            renderer.Height = frmMain.ScaleHeight - renderer.Top - 5
40            lstGraphics.Height = TransformMod13(frmMain.ScaleHeight - lstGraphics.Top - 2)
50            Frame.Height = lstGraphics.Height
60            If Not (TileEngine Is Nothing) Then
70                Call TileEngine.Resize
80            End If
90        End If

   On Error GoTo 0
   Exit Sub

Form_Resize_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure Form_Resize of Formulario frmMain Linea: " & Erl())
End Sub

Private Function TransformMod13(ByVal Value As Single) As Long
    TransformMod13 = Fix(Value / 13) * 13 + 4
End Function

Private Sub Form_Unload(Cancel As Integer)
    If Not FormsEnabled(Me) Then Call CloseProgram
End Sub

Private Sub lblReset_Click()
    txtGrh.Text = SaveLine(lstGraphics.ListIndex + 1)
    'lblReset.BackColor = &H8000000F
End Sub

Private Sub lblExportarTODO_Click()
    Call Resource.Index_To_Expo
End Sub

Private Sub lblIndexarTODO_Click()
    Call Resource.Expo_To_Index
End Sub

Private Sub lblOption_Click(Index As Integer)

      Dim i                           As Long

   On Error GoTo lblOption_Click_Error

10        For i = lblOption.LBound To lblOption.UBound
20            lblOption(i).BackColor = &H8000000F
30        Next i
          
40        lblOption(Index).BackColor = vbRed

50        Select Case Index
              Case 0, 1
60                lstGraphics.Visible = True
70                Frame.Visible = False
80            Case 2
90                lstGraphics.Visible = False
100               Frame.Visible = True
110       End Select

120       If Not (TileEngine Is Nothing) Then
130           Call TileEngine.ChangeRenderStyle(Index)
140       End If

   On Error GoTo 0
   Exit Sub

lblOption_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure lblOption_Click of Formulario frmMain Linea: " & Erl())
          
End Sub

Private Sub lblResetTip_Click()
    txtEnum.Text = txtEnumNoProcess
End Sub

Private Sub lblSave_Click()

      Dim Line                        As String

   On Error GoTo lblSave_Click_Error

10        If lstGraphics.ListIndex > 0 Then
20            Line = ProcessGraphicBinToLine(lstGraphics.ListIndex + 1)
              
30            Line = ReadField(2, Line, Asc("="))
40            SaveLine(lstGraphics.ListIndex + 1) = Line
              
50            Call WriteVar(AppExpo & "\Graficos.ini", "GRAFICOS", "Grh" & lstGraphics.ListIndex + 1, txtGrh.Text)
              
60            lblReset.BackColor = &H8000000F
70            lblSave.BackColor = &H8000000F
80        End If

   On Error GoTo 0
   Exit Sub

lblSave_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure lblSave_Click of Formulario frmMain Linea: " & Erl())
          
End Sub

'---------------------------------------------------------------------------------------
' Procedure : ProcessLine
' Author    : bsabatier
' Date      : 24/12/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Public Sub ProcessLine(ByVal Index As Long)

      Dim Line                        As String

   On Error GoTo ProcessLine_Error

10        lblGrh.Caption = "Grh" & Index & "="
20        Line = ProcessGraphicBinToLine(Index)
30        Line = ReadField(2, Line, Asc("="))

40        If Len(SaveLine(Index)) = 0 Then SaveLine(Index) = Line

50        NoProcessTxt = True
60        txtGrh.Text = Line
70        NoProcessTxt = False

   On Error GoTo 0
   Exit Sub

ProcessLine_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure ProcessLine of Formulario frmMain Linea: " & Erl())

End Sub

'Private Sub lblSaveAll_Click()
'Dim i As Long
'For i = 1 To 32000
'    Dim Line As String
'    Line = ProcessGraphicBinToLine(i)
'    Line = ReadField(2, Line, Asc("="))
'    SaveLine(lstGraphics.ListIndex + 1) = Line
'    Call WriteVar(AppExpo & "\Graficos.ini", "GRAFICOS", "Grh" & i + 1, Line)
'    lblReset.BackColor = &H8000000F
'    lblSave.BackColor = &H8000000F
'Next i
'End Sub

Private Sub lblSaveTip_Click()
   On Error GoTo lblSaveTip_Click_Error

10        If cmbTipo.ListIndex <> -1 Then
20            Select Case cmbTipo.ListIndex
                  Case 0             'Armas
30                    Call Resource.SaveAnimArmas(AppInit & "\Armas.dat")
40                Case 1             'Cabezas
50                    Call Resource.SaveCabezas(AppInit & "\Cabezas.ind")
60                Case 2             'Cascos
70                    Call Resource.SaveCascos(AppInit & "\Cascos.ind")
80                Case 3             'Cuerpos
90                    Call Resource.SaveCuerpos(AppInit & "\Personajes.ind")
100               Case 4             'Escudos
110                   Call Resource.SaveAnimEscudos(AppInit & "\Escudos.dat")
120               Case 5             'Efectos
130                   Call Resource.SaveFxs(AppInit & "\Fxs.ind")
140           End Select
150           txtEnumNoProcess = txtEnum.Text
160           lblResetTip.BackColor = &H8000000F
170           lblSaveTip.BackColor = &H8000000F
180       End If

   On Error GoTo 0
   Exit Sub

lblSaveTip_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure lblSaveTip_Click of Formulario frmMain Linea: " & Erl())
End Sub

Private Sub GraphicsChange()

      Dim Index                       As Integer
      Dim bCheck                      As Boolean

   On Error GoTo GraphicsChange_Error

10        Index = lstGraphics.ListIndex + 1

20        If Index = lstGraphics.ListCount Then

              Dim MaxVar              As Long

30            NoProcessTxt = True
40            MaxVar = ResizeList(TipList.Graficos, Index, CInt(grhCount), Nothing)

50            If MaxVar Then
60                grhCount = MaxVar
70                ReDim Preserve GrhData(1 To grhCount)
80                Call WriteVar(AppExpo & "\Graficos.ini", "INIT", "CountGrh", CStr(grhCount))
90                bCheck = True
100           End If

110           NoProcessTxt = False
120       Else
130           bCheck = True
140       End If

150       If Index And bCheck Then   'And MaxVar <> 0 Then
160           NumGraphic = TileEngine.LoadGraphic(SP_Main, Index)

              Dim i                   As Long
170           ReDim SelectIndexs(0)
180           numSelectIndexs = 0

190           If GrhData(Index).NumFrames = 1 Then
200               For i = 0 To lstGraphics.ListCount - 1
210                   If lstGraphics.Selected(i) = True Then
220                       If i + 1 <= grhCount Then
230                           If GrhData(i + 1).FileNum = GrhData(Index).FileNum And GrhData(Index).FileNum > 0 Then
240                               ReDim Preserve SelectIndexs(numSelectIndexs)
250                               SelectIndexs(numSelectIndexs) = i + 1
260                               numSelectIndexs = numSelectIndexs + 1
270                           Else
280                               lstGraphics.Selected(i) = False
290                           End If
300                       End If
310                   End If
320               Next i
330           Else
340               For i = 0 To lstGraphics.ListCount - 1
350                   If lstGraphics.Selected(i) = True Then
360                       If i + 1 < grhCount Then
370                           If Index <> i + 1 Then
380                               lstGraphics.Selected(i) = False
390                           End If
400                       End If
410                   End If
420               Next i
430               ReDim SelectIndexs(0)
440               SelectIndexs(0) = Index
450               numSelectIndexs = 1
460           End If

              'Me.txtGrh.Enabled = numSelectIndexs = 1
470           If numSelectIndexs = 1 Then
480               Call ProcessLine(Index)    'TEST 24-04-2020
490           Else
500               txtGrh.Text = "1.1.0.0.32.32"
510           End If

520           If TileEngine.RenderStyle = 2 Then Call lblOption_Click(0)
530       End If

540       If FirstRun Then
550           chkEncuadrarGrafico = vbChecked
560           chkEncuadrarGrh = vbChecked
570           chkTamano = vbChecked
580       End If

   On Error GoTo 0
   Exit Sub

GraphicsChange_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure GraphicsChange of Formulario frmMain Linea: " & Erl())
    
End Sub

Private Sub lstGraphics_KeyUp(KeyCode As Integer, Shift As Integer)
    Call GraphicsChange
End Sub

Private Sub lstGraphics_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)

    Call GraphicsChange
    
End Sub

Private Sub optHeads_Click()
    txtTextureWidth.Text = 17
    txtTextureHeigth.Text = 50
    lblCrearTexturasAncho.Caption = "Ancho (Pixels)"
    lblCrearTexturasAlto.Caption = "Alto (Pixels)"
    txtPngNum.Text = 2083
End Sub

Private Sub optTexture_Click()
    txtTextureWidth.Text = 4
    txtTextureHeigth.Text = 4
    lblCrearTexturasAncho.Caption = "Ancho (Tiles)"
    lblCrearTexturasAlto.Caption = "Alto (Tiles)"
    txtPngNum.Text = 6000
End Sub

Private Sub renderer_KeyUp(KeyCode As Integer, Shift As Integer)

    On Error Resume Next
    Me.lstGraphics.SetFocus

End Sub

Private Sub renderer_KeyPress(KeyAscii As Integer)
    Me.lstGraphics.SetFocus
End Sub

Private Sub renderer_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call TileEngine.MouseDown(Button, Shift, X, Y)
End Sub

Private Sub renderer_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
10  On Error GoTo renderer_MouseMove_Error

20  If X = 0 And Y = 0 Then
30      TileEngine.RenderMouseX = 1
40      TileEngine.RenderMouseY = 1
50  Else
60      TileEngine.RenderMouseX = X
70      TileEngine.RenderMouseY = Y
80  End If
90  On Error GoTo 0
100 Exit Sub

renderer_MouseMove_Error:

110 Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure renderer_MouseMove of Formulario frmMain Linea: " & Erl())
End Sub

Private Sub renderer_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    On Error GoTo renderer_MouseUp_Error

10  Call TileEngine.MouseUp(Button, Shift, X, Y)

    On Error GoTo 0
    Exit Sub

renderer_MouseUp_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure renderer_MouseUp of Formulario frmMain Linea: " & Erl())
End Sub

Private Sub SaveIndexs_Click()
    Call Resource.Save_Indexs
End Sub

Private Sub txtFiltroPNG_Change()

    'Call searchPNG
    
End Sub

Sub searchPNG()

Dim bFound                      As Boolean
Dim i                           As Long
Static LastIndex                As Long
Dim sTmp                        As String

10  On Error GoTo searchPNG_Error

20  If Len(txtFiltroPNG.Text) > 0 Then
30      If IsNumeric(txtFiltroPNG.Text) Then

40          If LastIndex <= lstGraphics.ListIndex + 1 And lstGraphics.ListIndex + 1 < lstGraphics.ListCount Then
50              LastIndex = lstGraphics.ListIndex + 1
60          Else
70              LastIndex = 1
80          End If
90          For i = LastIndex To lstGraphics.ListCount - 1
100             If GrhData(i).FileNum > 0 And LastIndex <> i Then
110                 If GrhData(i).FileNum = Val(txtFiltroPNG.Text) Then
120                     lstGraphics.Selected(i - 1) = True
130                     LastIndex = i - 1
140                     bFound = True
150                     lstGraphics.ListIndex = LastIndex
160                     Call GraphicsChange
170                     Exit For
180                 End If
190             End If
200             LastIndex = i - 1
210         Next i
220         If Not bFound Then
230             MsgBox "No se encontraron resultados para el número de .PNG " & txtFiltroPNG.Text
240         End If
250     Else
260         MsgBox "Coloque el número únicamente, de .png en la carpeta GRAFICOS, sin la extensión .png"
270     End If

280 End If

290 On Error GoTo 0
300 Exit Sub

searchPNG_Error:

310 Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure searchPNG of Formulario frmMain Linea: " & Erl())

End Sub

Private Sub txtEnum_Change()
   On Error GoTo txtEnum_Change_Error

      Dim Index                       As Long
      Dim i                           As Long

10        Select Case cmbTipo.ListIndex
              Case 0                 'Armas
20                Index = cmbArmas.ListIndex
30            Case 1                 'Cabezas
40                Index = cmbCabezas.ListIndex
50            Case 2                 'Cascos
60                Index = cmbCascos.ListIndex
70            Case 3                 'Cuerpos
80                Index = cmbCuerpos.ListIndex
90            Case 4                 'Escudos
100               Index = cmbEscudos.ListIndex
110           Case 5                 'Efectos
120               Index = cmbEfectos.ListIndex
130       End Select

          Dim Linea()                 As String
140       If Len(txtEnum.Text) = 0 Then Exit Sub
150       Linea = Split(txtEnum.Text, vbCrLf)
          Dim Nums(5)                 As Long

          Dim txtEnumArg              As String
160       If cmbTipo.ListIndex <> 5 Then
170           Nums(0) = Val(ReadField(2, Linea(0), Asc("=")))
180           Nums(1) = Val(ReadField(2, Linea(1), Asc("=")))
190           Nums(2) = Val(ReadField(2, Linea(2), Asc("=")))
200           Nums(3) = Val(ReadField(2, Linea(3), Asc("=")))

210           txtEnumArg = txtEnumArg & "Norte=" & Nums(0) & vbCrLf
220           txtEnumArg = txtEnumArg & "Este=" & Nums(1) & vbCrLf
230           txtEnumArg = txtEnumArg & "Sur=" & Nums(2) & vbCrLf
240           txtEnumArg = txtEnumArg & "Oeste=" & Nums(3)
250       End If

260       Select Case cmbTipo.ListIndex
              Case 0                 'Armas
270               For i = 0 To 3
280                   WeaponAnimData(Index).WeaponWalk(i + 1).GrhIndex = Nums(i)
290                   NumGraphic_Armas(i) = TileEngine.LoadGraphic(SP_Armas(i), WeaponAnimData(Index).WeaponWalk(i + 1).GrhIndex)
300               Next i
310           Case 1                 'Cabezas
320               For i = 0 To 3
330                   HeadData(Index).Head(i + 1).GrhIndex = Nums(i)
340                   NumGraphic_Cabezas(i) = TileEngine.LoadGraphic(SP_Cabezas(i), HeadData(Index).Head(i + 1).GrhIndex)
350               Next i
360               frmMain.cmbCabezas.List(Index) = Index & IIf(HeadData(Index).Head(1).GrhIndex = 0, " (Libre)", "")
370           Case 2                 'Cascos
380               For i = 0 To 3
390                   CascoAnimData(Index).Head(i + 1).GrhIndex = Nums(i)
400                   NumGraphic_Cascos(i) = TileEngine.LoadGraphic(SP_Cascos(i), CascoAnimData(Index).Head(i + 1).GrhIndex)
410               Next i
420           Case 3                 'Cuerpos
430               Nums(4) = Val(ReadField(1, ReadField(2, Linea(4), Asc("=")), Asc(".")))
440               Nums(5) = Val(ReadField(2, ReadField(2, Linea(4), Asc("=")), Asc(".")))

450               txtEnumArg = txtEnumArg & vbCrLf & "OffSet=" & Nums(4) & "." & Nums(5)


460               For i = 0 To 3
470                   BodyData(Index).Walk(i + 1).GrhIndex = Nums(i)
480                   BodyData(Index).HeadOffset.X = Nums(4)
490                   BodyData(Index).HeadOffset.Y = Nums(5)
500                   NumGraphic_Cuerpos(i) = TileEngine.LoadGraphic(SP_Cuerpos(i), BodyData(Index).Walk(i + 1).GrhIndex)
510               Next i
520           Case 4                 'Escudos
530               For i = 0 To 3
540                   ShieldAnimData(Index).ShieldWalk(i + 1).GrhIndex = Nums(i)
550                   NumGraphic_Escudos(i) = TileEngine.LoadGraphic(SP_Escudos(i), ShieldAnimData(Index).ShieldWalk(i + 1).GrhIndex)
560               Next i
570           Case 5                 'Efectos
580               Nums(0) = Val(ReadField(2, Linea(0), Asc("=")))
590               Nums(1) = Val(ReadField(1, ReadField(2, Linea(1), Asc("=")), Asc(".")))
600               Nums(2) = Val(ReadField(2, ReadField(2, Linea(1), Asc("=")), Asc(".")))
610               FxData(Index).Animacion = Nums(0)
620               FxData(Index).OffsetX = Nums(1)
630               FxData(Index).OffsetY = Nums(2)

640               NumGraphic_Efectos = TileEngine.LoadGraphic(SP_Efectos, FxData(Index).Animacion)

650               txtEnumArg = "Anim=" & Nums(0) & vbCrLf
660               txtEnumArg = txtEnumArg & "Offset=" & Nums(1) & "." & Nums(2) & vbCrLf
670       End Select

          'txtEnum.Text = txtEnumArg

680       If Len(txtEnumNoProcess) = 0 Then txtEnumNoProcess = txtEnum.Text

690       If txtEnum.Text = txtEnumNoProcess Then
700           lblResetTip.BackColor = &H8000000F
710           lblSaveTip.BackColor = &H8000000F
720       Else
730           lblResetTip.BackColor = vbRed
740           lblSaveTip.BackColor = vbRed
750       End If

760       Select Case cmbTipo.ListIndex
              Case 0                 'Armas
770               txtEnumArgArmas = txtEnumArg
780           Case 1                 'Cabezas
790               txtEnumArgCabezas = txtEnumArg
800           Case 2                 'Cascos
810               txtEnumArgCascos = txtEnumArg
820           Case 3                 'Cuerpos
830               txtEnumArgCuerpos = txtEnumArg
840           Case 4                 'Escudos
850               txtEnumArgEscudos = txtEnumArg
860           Case 5                 'Efectos
870               txtEnumArgEfectos = txtEnumArg
880       End Select

   On Error GoTo 0
   Exit Sub

txtEnum_Change_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure txtEnum_Change of Formulario frmMain Linea: " & Erl())
End Sub

Private Sub txtFiltro_Change()
          
   On Error GoTo txtFiltro_Change_Error

10        If Len(txtFiltro.Text) > 0 Then
20            If IsNumeric(txtFiltro.Text) Then
30                If (Val(txtFiltro.Text) - 1 <= lstGraphics.ListCount) Then
40                    lstGraphics.Selected(Val(txtFiltro.Text) - 1) = True
50                End If
60            Else
                  Dim i As Long
                  
70                For i = 1 To lstGraphics.ListCount - 1
80                    If InStrB(1, i + 1 & " " & txtFiltro.Text, lstGraphics.List(i)) > 0 Then
                      'If StrComp(i + 1 & " " & txtFiltro.Text, lstGraphics.List(i)) = 0 Then
90                        lstGraphics.Selected(i) = True
100                       Exit For
110                   End If
120               Next i
130           End If
140       End If

   On Error GoTo 0
   Exit Sub

txtFiltro_Change_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure txtFiltro_Change of Formulario frmMain Linea: " & Erl())
          
End Sub

Private Sub txtFiltro_KeyUp(KeyCode As Integer, Shift As Integer)

   On Error GoTo txtFiltro_KeyUp_Error

10        If KeyCode = 13 Then
          
20            If Len(txtFiltro.Text) > 0 Then
30                If IsNumeric(txtFiltro.Text) Then
40                    If (Val(txtFiltro.Text) - 1 <= lstGraphics.ListCount) Then
50                        lstGraphics.Selected(Val(txtFiltro.Text) - 1) = True
60                    End If
70                Else
                      Dim i As Long
                      
80                    For i = lstGraphics.ListIndex + 1 To lstGraphics.ListCount - 1
90                        If InStrB(1, lstGraphics.List(i), UCase$(txtFiltro.Text), vbBinaryCompare) > 0 Then
                          'If StrComp(i + 1 & " " & txtFiltro.Text, lstGraphics.List(i)) = 0 Then
100                           lstGraphics.Selected(i) = True
110                           Exit For
120                       End If
130                   Next i
140               End If
150           End If
160       End If

   On Error GoTo 0
   Exit Sub

txtFiltro_KeyUp_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure txtFiltro_KeyUp of Formulario frmMain Linea: " & Erl())
          
End Sub

Private Sub txtFiltroPNG_KeyUp(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Call searchPNG
    End If
End Sub

Private Sub txtGrh_Change()

Dim i                           As Long

10  On Error GoTo txtGrh_Change_Error

20  If lstGraphics.ListIndex < 1 Then Exit Sub

30  For i = 0 To numSelectIndexs - 1

40      If StrComp(txtGrh.Text, SaveLine(SelectIndexs(i))) <> 0 Then
50          lblReset.BackColor = vbRed
60          lblSave.BackColor = vbRed
70      Else
80          lblReset.BackColor = &H8000000F
90          lblSave.BackColor = &H8000000F
100     End If

110     If Not NoProcessTxt Then
120         Call ProcessGraphicLineToBin("Grh" & SelectIndexs(i) & "=" & txtGrh.Text)
130         If SelectIndexs(i) <> NumGraphic Then
140             NumGraphic = TileEngine.LoadGraphic(SP_Main, SelectIndexs(i))
150         End If
160         lstGraphics.List(SelectIndexs(i) - 1) = NameLineGraphic(CLng(SelectIndexs(i)))
            'cmbFondo.List(selectindexs(i)) = NameLineGraphic(selectindexs(i))
170     End If
180 Next i

190 Call GraphicsChange

200 If lstGraphics.ListIndex <> -1 Then
210     If StrComp(txtGrh.Text, SaveLine(lstGraphics.ListIndex + 1)) <> 0 Then
220         lblReset.BackColor = vbRed
230         lblSave.BackColor = vbRed
240     Else
250         lblReset.BackColor = &H8000000F
260         lblSave.BackColor = &H8000000F
270     End If
280     If NoProcessTxt = False Then
290         Call ProcessGraphicLineToBin("Grh" & lstGraphics.ListIndex + 1 & "=" & txtGrh.Text)
300         NumGraphic = TileEngine.LoadGraphic(SP_Main, lstGraphics.ListIndex + 1)
310         lstGraphics.List(lstGraphics.ListIndex) = NameLineGraphic(lstGraphics.ListIndex + 1)
            'cmbFondo.List(lstGraphics.ListIndex + 1) = NameLineGraphic(lstGraphics.ListIndex + 1)
320     End If
330 End If

340 On Error GoTo 0
350 Exit Sub

txtGrh_Change_Error:

360 Call LogError("Error " & err.Number & " (" & err.Description & ") procedimiento txtGrh_Change Formulario frmMain línea: " & Erl())

End Sub

Private Sub txtGrh_KeyUp(KeyCode As Integer, Shift As Integer)

   On Error GoTo txtGrh_KeyUp_Error

10        If Shift > 0 Then
20            Select Case KeyCode
                  Case vbKeyRight, vbKeyLeft, vbKeyDown, vbKeyUp
30                    Exit Sub
40            End Select
50        End If

60        If Shift = 0 Then
70            If KeyCode = vbKeyUp Then
80                If lstGraphics.ListIndex > 0 Then
                      'lstGraphics.SetFocus
90                    lstGraphics.ListIndex = lstGraphics.ListIndex - 1
                      'lstGraphics.Refresh
100               End If
110           ElseIf KeyCode = vbKeyDown Then
120               If lstGraphics.ListIndex <= lstGraphics.ListCount Then
                      'lstGraphics.SetFocus
130                   lstGraphics.ListIndex = lstGraphics.ListIndex + 1
                      'lstGraphics.Refresh
140               End If
150           End If
160       Else
              Dim Index               As Long
170           Index = lstGraphics.ListIndex + 1
180           If Index > 0 And Index <= grhCount Then
190               If GrhData(Index).NumFrames = 1 Then
200                   With GrhData(Index)
210                       If KeyCode = vbKeyUp Then
220                           .sY = .sY - .pixelHeight
230                       ElseIf KeyCode = vbKeyDown Then
240                           .sY = .sY + .pixelHeight
250                       ElseIf KeyCode = vbKeyLeft Then
260                           .sX = .sX - .pixelWidth
270                       ElseIf KeyCode = vbKeyRight Then
280                           .sX = .sX + .pixelWidth
290                       End If
300                   End With
310                   Call ProcessLine(Index)
320               End If
330           End If
340       End If

   On Error GoTo 0
   Exit Sub

txtGrh_KeyUp_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure txtGrh_KeyUp of Formulario frmMain Linea: " & Erl())
End Sub

Private Sub txtGrh_KeyPress(KeyAscii As Integer)
    Debug.Print KeyAscii
End Sub

Private Sub txtNumGrhs_KeyUp(KeyCode As Integer, Shift As Integer)
    Call ProcessTxtsChanges
End Sub


Private Sub txtNumFrames_KeyUp(KeyCode As Integer, Shift As Integer)
    Call ProcessTxtsChanges
End Sub

Private Sub txtNumPNG_KeyUp(KeyCode As Integer, Shift As Integer)
    Call ProcessTxtsChanges
End Sub

Private Sub txtVelocity_KeyUp(KeyCode As Integer, Shift As Integer)
    Call ProcessTxtsChanges
End Sub

Private Sub txtXFrom_KeyUp(KeyCode As Integer, Shift As Integer)
    Call ProcessTxtsChanges
End Sub

Private Sub txtXTo_KeyUp(KeyCode As Integer, Shift As Integer)
    Call ProcessTxtsChanges
End Sub

Private Sub txtYFrom_KeyUp(KeyCode As Integer, Shift As Integer)
    Call ProcessTxtsChanges
End Sub

Private Sub txtYTo_KeyUp(KeyCode As Integer, Shift As Integer)
    Call ProcessTxtsChanges
End Sub

Sub ProcessTxtsChanges()

      Dim i                           As Long
      Dim sValue                      As String

   On Error GoTo ProcessTxtsChanges_Error

10        If Val(ReadField(2, frmMain.lblGrh.Caption & Val(frmMain.txtNumFrames.Text), Asc("="))) > 0 Then
20            sValue = Val(frmMain.txtNumFrames.Text) & Separator & Val(frmMain.txtNumPNG.Text) & Separator & Val(frmMain.txtXFrom.Text) & Separator & Val(frmMain.txtYFrom.Text) & Separator & Val(frmMain.txtXTo.Text) & Separator & Val(frmMain.txtYTo.Text)
30            txtGrh.Text = sValue 'Call ProcessGraphicLineToBin(sValue)
40        End If

   On Error GoTo 0
   Exit Sub

ProcessTxtsChanges_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure ProcessTxtsChanges of Formulario frmMain Linea: " & Erl())
          
End Sub
