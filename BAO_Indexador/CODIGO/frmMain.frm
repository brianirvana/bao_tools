VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.2#0"; "MSCOMCTL.ocx"
Begin VB.Form frmMain 
   BackColor       =   &H00C0C0C0&
   Caption         =   "tX"
   ClientHeight    =   9750
   ClientLeft      =   120
   ClientTop       =   750
   ClientWidth     =   14205
   Enabled         =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   650
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   947
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtFiltroPNG 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   120
      TabIndex        =   69
      Top             =   840
      Width           =   2415
   End
   Begin VB.Frame frmCrearTexturaPiso 
      Caption         =   "Crear Textura/Piso"
      Height          =   2055
      Left            =   9840
      TabIndex        =   55
      Top             =   360
      Width           =   3735
      Begin VB.OptionButton Option1 
         Caption         =   "Cabeza"
         Height          =   255
         Left            =   1440
         TabIndex        =   68
         Top             =   240
         Width           =   975
      End
      Begin VB.OptionButton optTexture 
         Caption         =   "Textura"
         Height          =   255
         Left            =   240
         TabIndex        =   67
         Top             =   240
         Value           =   -1  'True
         Width           =   975
      End
      Begin VB.TextBox txtTextureFrom 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   240
         TabIndex        =   66
         Top             =   1035
         Width           =   855
      End
      Begin VB.TextBox txtTextureTo 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1320
         TabIndex        =   65
         Top             =   1035
         Width           =   855
      End
      Begin VB.TextBox txtTextureWidth 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   240
         TabIndex        =   62
         Top             =   1560
         Width           =   855
      End
      Begin VB.TextBox txtTextureHeigth 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   1320
         TabIndex        =   61
         Top             =   1560
         Width           =   855
      End
      Begin VB.TextBox txtPngNum 
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         ForeColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   2520
         TabIndex        =   59
         Top             =   1035
         Width           =   855
      End
      Begin VB.CommandButton cmdMadeTexture 
         Caption         =   "Crear"
         Height          =   255
         Left            =   2400
         TabIndex        =   58
         Top             =   1560
         Width           =   1095
      End
      Begin VB.Label Label12 
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
         Height          =   495
         Left            =   1200
         TabIndex        =   64
         Top             =   1320
         Width           =   975
      End
      Begin VB.Label Label11 
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
         Height          =   255
         Left            =   120
         TabIndex        =   63
         Top             =   1320
         Width           =   1095
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
         TabIndex        =   60
         Top             =   720
         Width           =   975
      End
      Begin VB.Label Label9 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Index hasta:"
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
         Left            =   1200
         TabIndex        =   57
         Top             =   600
         Width           =   975
      End
      Begin VB.Label Label8 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Index desde"
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
         Left            =   120
         TabIndex        =   56
         Top             =   600
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
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   3720
      TabIndex        =   5
      Top             =   2280
      Width           =   4335
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
      Left            =   120
      TabIndex        =   13
      Top             =   1200
      Width           =   2415
   End
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
      TabIndex        =   70
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
      Left            =   8640
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
      Left            =   8040
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
Private SaveLine(32000)         As String
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
    For i = 0 To 3
        SP_Escudos(i).SetCurrentFrame = 1
        SP_Cuerpos(i).SetCurrentFrame = 1
        SP_Cascos(i).SetCurrentFrame = 1
        SP_Cabezas(i).SetCurrentFrame = 1
        SP_Armas(i).SetCurrentFrame = 1
        SP_Efectos.SetCurrentFrame = 1
    Next i
    Static LastChange           As Integer
    'If LastChange <> cmbTipo.ListIndex + 1 Then
    Call cmbTipo_Click
    '    LastChange = cmbTipo.ListIndex + 1
    'End If
End Sub

Private Sub cmbArmas_Click()

    If cmbArmas.ListIndex = -1 Then Exit Sub

    Dim Index                   As Integer
    Dim i                       As Long

    Index = cmbArmas.ListIndex
    txtEnumArgArmas = vbNullString

    Dim MaxVar                  As Integer

    MaxVar = ResizeList(TipList.Armas, Index, NumWeaponAnims, cmbArmas)

    If MaxVar Then
        ReDim Preserve WeaponAnimData(1 To MaxVar)
    End If

    If Index = 0 Then
        Call EraseArrayInteger(NumGraphic_Armas)
        NumAnim_Armas = 0
    Else
        'txtEnumArg = "[ARMA" & Index & "]"
        NumAnim_Armas = Index
        For i = 0 To 3
            NumGraphic_Armas(i) = TileEngine.LoadGraphic(SP_Armas(i), WeaponAnimData(Index).WeaponWalk(i + 1).GrhIndex)
            txtEnumArgArmas = txtEnumArgArmas & GetDirectionString(i) & "=" & WeaponAnimData(Index).WeaponWalk(i + 1).GrhIndex & vbCrLf
        Next i
    End If
    Call ResetAnimations
End Sub

Private Sub cmbCabezas_Click()
    If cmbCabezas.ListIndex = -1 Then Exit Sub
    Dim Index                   As Integer
    Dim i                       As Long
    Index = cmbCabezas.ListIndex
    txtEnumArgCabezas = vbNullString

    Dim MaxVar                  As Integer
    MaxVar = ResizeList(TipList.Cabezas, Index, Numheads, cmbCabezas)

    If MaxVar Then
        ReDim Preserve HeadData(0 To MaxVar)
    End If

    If Index = 0 Then
        Call EraseArrayInteger(NumGraphic_Cabezas)
        NumAnim_Cabezas = 0
    Else
        'txtEnumArg = "[HEAD" & Index & "]"
        NumAnim_Cabezas = Index
        For i = 0 To 3
            NumGraphic_Cabezas(i) = TileEngine.LoadGraphic(SP_Cabezas(i), HeadData(Index).Head(i + 1).GrhIndex)
            txtEnumArgCabezas = txtEnumArgCabezas & GetDirectionString(i) & "=" & HeadData(Index).Head(i + 1).GrhIndex & vbCrLf
        Next i
    End If
    Call ResetAnimations
End Sub

Private Sub cmbCascos_Click()
10  On Error GoTo cmbCascos_Click_Error

20  If cmbCascos.ListIndex = -1 Then Exit Sub
    Dim Index                   As Integer
    Dim i                       As Long
30  Index = cmbCascos.ListIndex
40  txtEnumArgCascos = vbNullString

    Dim MaxVar                  As Integer
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

220 Call Error("Error " & err.Number & " (" & err.Description & ") en el procedimiento cmbCascos_Click del Formulario frmMain en la línea: " & Erl())
End Sub

Private Function ResizeList(ByVal Tip As Integer, ByRef Index As Integer, ByRef TempVar As Integer, cmbList As ComboBox) As Integer

Dim IsTrue                      As Boolean

    If cmbList Is Nothing Then
        Index = Index + 1
        IsTrue = (lstGraphics.ListCount + 1) = Index
    Else
        IsTrue = (cmbList.ListCount - 1) = Index
    End If

    If IsTrue Then
        Dim textInput           As String
        Dim AddResize           As Integer
        Dim OldVar              As Integer
        Dim i                   As Long

        textInput = InputBox("El actual valor es " & TempVar & vbCrLf & "¿Que valor desea setear?")

        If Left$(textInput, 1) = "+" Then
            textInput = Mid$(textInput, 2, Len(textInput) - 1)
            AddResize = Val(textInput) + Index - 2
        ElseIf Left$(textInput, 1) = "-" Then
            textInput = Mid$(textInput, 2, Len(textInput) - 1)
            AddResize = Index - 2 - Val(textInput)
        Else
            ' AddResize = Val(textInput)
            MsgBox "+1 Agrega uno, -1 resta 1."
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
    End If

    If cmbList Is Nothing Then
        Index = Index - 1
    End If

End Function

Private Sub cmbCuerpos_Click()
10  On Error GoTo cmbCuerpos_Click_Error

20  If cmbCuerpos.ListIndex = -1 Then Exit Sub
    Dim Index                   As Integer
    Dim i                       As Long
30  Index = cmbCuerpos.ListIndex
40  txtEnumArgCuerpos = vbNullString

    Dim MaxVar                  As Integer
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

230 Call Error("Error " & err.Number & " (" & err.Description & ") en el procedimiento cmbCuerpos_Click del Formulario frmMain en la línea: " & Erl())
End Sub

Private Sub cmbEfectos_Click()
    On Error GoTo cmbEfectos_Click_Error

10  If cmbEfectos.ListIndex = -1 Then Exit Sub
    Dim Index                   As Integer
    Dim i                       As Long
20  Index = cmbEfectos.ListIndex
30  txtEnumArgEfectos = vbNullString

    Dim MaxVar                  As Integer
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

    Call Error("Error " & err.Number & " (" & err.Description & ") en el procedimiento cmbEfectos_Click del Formulario frmMain en la línea: " & Erl())
End Sub

Private Sub cmbEscudos_Click()
    If cmbEfectos.ListIndex = -1 Then Exit Sub
    Dim Index                   As Integer
    Dim i                       As Long
    Index = cmbEscudos.ListIndex
    txtEnumArgEscudos = vbNullString

    Dim MaxVar                  As Integer
    MaxVar = ResizeList(TipList.Escudos, Index, NumEscudosAnims, cmbEscudos)

    If MaxVar Then
        ReDim Preserve ShieldAnimData(1 To MaxVar)
    End If

    If Index = 0 Then
        Call EraseArrayInteger(NumGraphic_Escudos)
        NumAnim_Escudos = 0
    Else
        'txtEnumArg = "[SHIELD" & Index & "]"
        NumAnim_Escudos = Index
        For i = 0 To 3
            NumGraphic_Escudos(i) = TileEngine.LoadGraphic(SP_Escudos(i), ShieldAnimData(Index).ShieldWalk(i + 1).GrhIndex)
            txtEnumArgEscudos = txtEnumArgEscudos & GetDirectionString(i) & "=" & ShieldAnimData(Index).ShieldWalk(i + 1).GrhIndex & vbCrLf
        Next i
    End If
End Sub

Private Sub cmbTipo_Click()

Static LastIndex                As Integer
Static NoProcess                As Boolean
    If NoProcess = True Then Exit Sub

    Dim i                       As Long
    If Not txtEnum.Text = txtEnumNoProcess Then
        Dim NewIndex            As Integer
        NewIndex = cmbTipo.ListIndex
        NoProcess = True
        cmbTipo.ListIndex = LastIndex
        Call lblSaveTip_Click
        cmbTipo.ListIndex = NewIndex
        NoProcess = False
    End If

    If cmbTipo.ListIndex <> -1 Then
        lblTipo.Caption = Left$(cmbTipo.List(cmbTipo.ListIndex), Len(cmbTipo.List(cmbTipo.ListIndex)) - 1)
        txtEnum.Text = txtEnumNoProcess
        txtEnumNoProcess = vbNullString
        Select Case cmbTipo.ListIndex
            Case 0             'Armas
                txtEnum.Text = txtEnumArgArmas
            Case 1             'Cabezas
                txtEnum.Text = txtEnumArgCabezas
            Case 2             'Cascos
                txtEnum.Text = txtEnumArgCascos
            Case 3             'Cuerpos
                txtEnum.Text = txtEnumArgCuerpos
            Case 4             'Escudos
                txtEnum.Text = txtEnumArgEscudos
            Case 5             'Efectos
                txtEnum.Text = txtEnumArgEfectos
        End Select

    End If

    LastIndex = cmbTipo.ListIndex
End Sub

Private Sub cmdCrearAnimacion_Click()

Dim i                           As Byte
Dim tCount                      As Long
Dim tLastCount                  As Long
Dim sStr                        As String

    If Val(txtAnimacionDesde.Text) > 0 And Val(txtAnimacionHasta.Text) > 0 Then
        tCount = Val(txtAnimacionHasta.Text) - Val(txtAnimacionDesde.Text)
        'Valor absoluto.
        tCount = Abs(tCount)
        tLastCount = tCount
        For i = 1 To tCount
            If Len(sStr) = 0 Then
                sStr = tCount & "." & Val(txtAnimacionDesde.Text)
            Else
                sStr = sStr & "." & Val(txtAnimacionDesde.Text) + tLastCount
            End If
            tLastCount = tLastCount + 1
            
            If i = tCount Then
                sStr = sStr & "." & "333,3333"
            End If
        Next i
        
        txtGrh.Text = sStr
    Else
        MsgBox "Debe completar Animación desde (y el número de índice de la lista) y Animación Hasta"
    End If

End Sub

Private Sub cmdLiberar_Click()
    If Not (TileEngine Is Nothing) Then
        Call TileEngine.LiberarMemoria
    End If
End Sub

Private Sub cmdTips_Click()
Dim Message                     As String
    Message = "Tips para PlusIndex" & vbCrLf & vbCrLf

    Message = Message & "Manteniendo apretado el CLICK IZQUIERDO puedes arrastras el grafico por el render." & vbCrLf
    Message = Message & "Manteniendo apretado el CLICK DERECHO y moviendo el mouse horizontalmente agregas y sacas zoom." & vbCrLf
    Message = Message & "Haciendo DOBLE CLICK DERECHO reinicias la posicion del grafico a la izquierda superior izquierda." & vbCrLf
    Message = Message & "Haciendo CLICK IZQUIERDO + CLICK DERECHO puedes encuadrar el frame que tienes seleccionado" & vbCrLf
    Message = Message & "Haciendo CLICK CENTRAL (ruedita) puedes encuadrar el grafico que tienes seleccionado" & vbCrLf

    MsgBox Message
End Sub

Private Sub cmdMadeTexture_Click()

Dim X                           As Integer
Dim Y                           As Integer
Dim LastX                       As Integer
Dim LastY                       As Integer
Dim i                           As Integer
Dim tCount                      As Integer
Dim sTmpGrh                     As String

    If Val(txtTextureFrom.Text) = 0 Then
        MsgBox "Ingrese un valor DESDE"
        Exit Sub
    End If

    If Val(txtTextureTo.Text) = 0 Then
        MsgBox "Ingrese un valor HASTA"
        Exit Sub
    End If
    
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
    
        If Val(txtTextureTo.Text) - Val(txtTextureFrom.Text) <> 16 Then
            MsgBox "La cantidad de índices libres debe ser 16 (4 ancho x 4 alto)"
            Exit Sub
        End If
        
        For X = 1 To Val(txtTextureFrom.Text)   'For X = 0 To Val(txtTextureFrom.Text) - 1
            For Y = 0 To Val(txtTextureTo.Text) - 1
                'Ej: 1.5534.32.32.32.32
                sTmpGrh = "1" & "-" & txtPngNum.Text & "-" & (32 * X) & "-" & (32 * Y) & "-" & "32" & "-" & "32" 'Ancho y alto
                txtGrh.Text = sTmpGrh
            Next Y
        Next X
    End If
    
    
End Sub

Public Sub Escala_Scroll()
    If Not (TileEngine Is Nothing) Then
        TileEngine.Escala = Escala.Value / 3
    End If
End Sub

Private Sub Form_Resize()
    If frmMain.WindowState <> 1 Then
        renderer.Width = frmMain.ScaleWidth - renderer.Left - 5
        renderer.Height = frmMain.ScaleHeight - renderer.Top - 5
        lstGraphics.Height = TransformMod13(frmMain.ScaleHeight - lstGraphics.Top - 2)
        Frame.Height = lstGraphics.Height
        If Not (TileEngine Is Nothing) Then
            Call TileEngine.Resize
        End If

    End If
End Sub
Private Function TransformMod13(ByVal Value As Single) As Integer
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
    For i = lblOption.LBound To lblOption.UBound
        lblOption(i).BackColor = &H8000000F
    Next i
    lblOption(Index).BackColor = vbRed

    Select Case Index
        Case 0, 1
            lstGraphics.Visible = True
            Frame.Visible = False
        Case 2
            lstGraphics.Visible = False
            Frame.Visible = True
    End Select

    If Not (TileEngine Is Nothing) Then
        Call TileEngine.ChangeRenderStyle(Index)
    End If
End Sub

Private Sub lblResetTip_Click()
    txtEnum.Text = txtEnumNoProcess
End Sub

Private Sub lblSave_Click()

Dim Line                        As String

    If lstGraphics.ListIndex > 0 Then
        Line = ProcessGraphicBinToLine(lstGraphics.ListIndex + 1)
        
        Line = ReadField(2, Line, Asc("="))
        SaveLine(lstGraphics.ListIndex + 1) = Line
        
        Call WriteVar(AppExpo & "\Graficos.ini", "GRAFICOS", "Grh" & lstGraphics.ListIndex + 1, txtGrh.Text)
        
        lblReset.BackColor = &H8000000F
        lblSave.BackColor = &H8000000F
    End If
    
End Sub

Public Sub ProcessLine(ByVal Index As Integer)

Dim Line                        As String

    lblGrh.Caption = "Grh" & Index & "="
    Line = ProcessGraphicBinToLine(Index)
    Line = ReadField(2, Line, Asc("="))

    If Len(SaveLine(Index)) = 0 Then SaveLine(Index) = Line

    NoProcessTxt = True
    txtGrh.Text = Line
    NoProcessTxt = False

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
    If cmbTipo.ListIndex <> -1 Then
        Select Case cmbTipo.ListIndex
            Case 0             'Armas
                Call Resource.SaveAnimArmas(AppInit & "\Armas.dat")
            Case 1             'Cabezas
                Call Resource.SaveCabezas(AppInit & "\Cabezas.ind")
            Case 2             'Cascos
                Call Resource.SaveCascos(AppInit & "\Cascos.ind")
            Case 3             'Cuerpos
                Call Resource.SaveCuerpos(AppInit & "\Personajes.ind")
            Case 4             'Escudos
                Call Resource.SaveAnimEscudos(AppInit & "\Escudos.dat")
            Case 5             'Efectos
                Call Resource.SaveFxs(AppInit & "\Fxs.ind")
        End Select
        txtEnumNoProcess = txtEnum.Text
        lblResetTip.BackColor = &H8000000F
        lblSaveTip.BackColor = &H8000000F
    End If
End Sub

Private Sub lstGraphics_Click()

Dim Index                       As Integer
Dim bCheck                      As Boolean

    Index = lstGraphics.ListIndex + 1

    If Index = lstGraphics.ListCount Then

        Dim MaxVar              As Integer

        NoProcessTxt = True
        MaxVar = ResizeList(TipList.Graficos, Index, CInt(grhCount), Nothing)

        If MaxVar Then
            grhCount = MaxVar
            ReDim Preserve GrhData(1 To grhCount)
            Call WriteVar(AppExpo & "\Graficos.ini", "INIT", "CountGrh", CStr(grhCount))
            bCheck = True
        End If

        NoProcessTxt = False
    Else
        bCheck = True
    End If

    If Index And bCheck Then   'And MaxVar <> 0 Then
        NumGraphic = TileEngine.LoadGraphic(SP_Main, Index)

        Dim i                   As Long
        ReDim SelectIndexs(0)
        numSelectIndexs = 0

        If GrhData(Index).NumFrames = 1 Then
            For i = 0 To lstGraphics.ListCount - 1
                If lstGraphics.Selected(i) = True Then
                    If i + 1 < grhCount Then
                        If GrhData(i + 1).FileNum = GrhData(Index).FileNum And GrhData(Index).FileNum > 0 Then
                            ReDim Preserve SelectIndexs(numSelectIndexs)
                            SelectIndexs(numSelectIndexs) = i + 1
                            numSelectIndexs = numSelectIndexs + 1
                        Else
                            lstGraphics.Selected(i) = False
                        End If
                    End If
                End If
            Next i
        Else
            For i = 0 To lstGraphics.ListCount - 1
                If lstGraphics.Selected(i) = True Then
                    If i + 1 < grhCount Then
                        If Index <> i + 1 Then
                            lstGraphics.Selected(i) = False
                        End If
                    End If
                End If
            Next i
            ReDim SelectIndexs(0)
            SelectIndexs(0) = Index
            numSelectIndexs = 1
        End If

        'Me.txtGrh.Enabled = numSelectIndexs = 1
        If numSelectIndexs = 1 Then
            Call ProcessLine(Index)    'TEST 24-04-2020
        Else
            txtGrh.Text = "1.0.0.0.32.32"
        End If

        If TileEngine.RenderStyle = 2 Then Call lblOption_Click(0)
    End If

    If FirstRun Then
        chkEncuadrarGrafico = vbChecked
        chkEncuadrarGrh = vbChecked
        chkTamano = vbChecked
    End If

End Sub

Private Sub renderer_KeyDown(KeyCode As Integer, Shift As Integer)

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
    TileEngine.RenderMouseX = X
    TileEngine.RenderMouseY = Y
End Sub

Private Sub renderer_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call TileEngine.MouseUp(Button, Shift, X, Y)
End Sub

Private Sub SaveIndexs_Click()
    Call Resource.Save_Indexs
End Sub

Private Sub txtFiltroPNG_Change()

    'Call searchPNG
    
End Sub

Sub searchPNG()

Dim i                           As Long
Static LastIndex                As Long
Dim sTmp                        As String


    If Len(txtFiltroPNG.Text) > 0 Then
        If IsNumeric(txtFiltroPNG.Text) Then
        
            If LastIndex <= lstGraphics.ListIndex + 1 And lstGraphics.ListIndex + 1 < lstGraphics.ListCount Then
                LastIndex = lstGraphics.ListIndex + 1
            Else
                LastIndex = 1
            End If
            
            For i = LastIndex To lstGraphics.ListCount - 1
                If GrhData(i).FileNum > 0 And LastIndex <> i Then
                    If GrhData(i).FileNum = Val(txtFiltroPNG.Text) Then
                        lstGraphics.Selected(i - 1) = True
                        LastIndex = i - 1
                        Exit For
                    End If
                End If
                LastIndex = i - 1
            Next i
        Else
            MsgBox "Coloque el número únicamente, de .png en la carpeta GRAFICOS, sin la extensión .png"
        End If
    
    End If
    
End Sub

Private Sub txtEnum_Change()
    On Error GoTo err:

Dim Index                       As Integer
Dim i                           As Long

    Select Case cmbTipo.ListIndex
        Case 0                 'Armas
            Index = cmbArmas.ListIndex
        Case 1                 'Cabezas
            Index = cmbCabezas.ListIndex
        Case 2                 'Cascos
            Index = cmbCascos.ListIndex
        Case 3                 'Cuerpos
            Index = cmbCuerpos.ListIndex
        Case 4                 'Escudos
            Index = cmbEscudos.ListIndex
        Case 5                 'Efectos
            Index = cmbEfectos.ListIndex
    End Select

    Dim Linea()                 As String
    If Len(txtEnum.Text) = 0 Then Exit Sub
    Linea = Split(txtEnum.Text, vbCrLf)
    Dim Nums(5)                 As Integer

    Dim txtEnumArg              As String
    If cmbTipo.ListIndex <> 5 Then
        Nums(0) = Val(ReadField(2, Linea(0), Asc("=")))
        Nums(1) = Val(ReadField(2, Linea(1), Asc("=")))
        Nums(2) = Val(ReadField(2, Linea(2), Asc("=")))
        Nums(3) = Val(ReadField(2, Linea(3), Asc("=")))

        txtEnumArg = txtEnumArg & "Norte=" & Nums(0) & vbCrLf
        txtEnumArg = txtEnumArg & "Este=" & Nums(1) & vbCrLf
        txtEnumArg = txtEnumArg & "Sur=" & Nums(2) & vbCrLf
        txtEnumArg = txtEnumArg & "Oeste=" & Nums(3)
    End If

    Select Case cmbTipo.ListIndex
        Case 0                 'Armas
            For i = 0 To 3
                WeaponAnimData(Index).WeaponWalk(i + 1).GrhIndex = Nums(i)
                NumGraphic_Armas(i) = TileEngine.LoadGraphic(SP_Armas(i), WeaponAnimData(Index).WeaponWalk(i + 1).GrhIndex)
            Next i
        Case 1                 'Cabezas
            For i = 0 To 3
                HeadData(Index).Head(i + 1).GrhIndex = Nums(i)
                NumGraphic_Cabezas(i) = TileEngine.LoadGraphic(SP_Cabezas(i), HeadData(Index).Head(i + 1).GrhIndex)
            Next i
            frmMain.cmbCabezas.List(Index) = Index & IIf(HeadData(Index).Head(1).GrhIndex = 0, " (Libre)", "")
        Case 2                 'Cascos
            For i = 0 To 3
                CascoAnimData(Index).Head(i + 1).GrhIndex = Nums(i)
                NumGraphic_Cascos(i) = TileEngine.LoadGraphic(SP_Cascos(i), CascoAnimData(Index).Head(i + 1).GrhIndex)
            Next i
        Case 3                 'Cuerpos
            Nums(4) = Val(ReadField(1, ReadField(2, Linea(4), Asc("=")), Asc(".")))
            Nums(5) = Val(ReadField(2, ReadField(2, Linea(4), Asc("=")), Asc(".")))

            txtEnumArg = txtEnumArg & vbCrLf & "OffSet=" & Nums(4) & "." & Nums(5)


            For i = 0 To 3
                BodyData(Index).Walk(i + 1).GrhIndex = Nums(i)
                BodyData(Index).HeadOffset.X = Nums(4)
                BodyData(Index).HeadOffset.Y = Nums(5)
                NumGraphic_Cuerpos(i) = TileEngine.LoadGraphic(SP_Cuerpos(i), BodyData(Index).Walk(i + 1).GrhIndex)
            Next i
        Case 4                 'Escudos
            For i = 0 To 3
                ShieldAnimData(Index).ShieldWalk(i + 1).GrhIndex = Nums(i)
                NumGraphic_Escudos(i) = TileEngine.LoadGraphic(SP_Escudos(i), ShieldAnimData(Index).ShieldWalk(i + 1).GrhIndex)
            Next i
        Case 5                 'Efectos
            Nums(0) = Val(ReadField(2, Linea(0), Asc("=")))
            Nums(1) = Val(ReadField(1, ReadField(2, Linea(1), Asc("=")), Asc(".")))
            Nums(2) = Val(ReadField(2, ReadField(2, Linea(1), Asc("=")), Asc(".")))
            FxData(Index).Animacion = Nums(0)
            FxData(Index).OffsetX = Nums(1)
            FxData(Index).OffsetY = Nums(2)

            NumGraphic_Efectos = TileEngine.LoadGraphic(SP_Efectos, FxData(Index).Animacion)

            txtEnumArg = "Anim=" & Nums(0) & vbCrLf
            txtEnumArg = txtEnumArg & "Offset=" & Nums(1) & "." & Nums(2) & vbCrLf
    End Select

    'txtEnum.Text = txtEnumArg

    If Len(txtEnumNoProcess) = 0 Then txtEnumNoProcess = txtEnum.Text

    If txtEnum.Text = txtEnumNoProcess Then
        lblResetTip.BackColor = &H8000000F
        lblSaveTip.BackColor = &H8000000F
    Else
        lblResetTip.BackColor = vbRed
        lblSaveTip.BackColor = vbRed
    End If

    Select Case cmbTipo.ListIndex
        Case 0                 'Armas
            txtEnumArgArmas = txtEnumArg
        Case 1                 'Cabezas
            txtEnumArgCabezas = txtEnumArg
        Case 2                 'Cascos
            txtEnumArgCascos = txtEnumArg
        Case 3                 'Cuerpos
            txtEnumArgCuerpos = txtEnumArg
        Case 4                 'Escudos
            txtEnumArgEscudos = txtEnumArg
        Case 5                 'Efectos
            txtEnumArgEfectos = txtEnumArg
    End Select
    Exit Sub
err:
End Sub

Private Sub txtFiltro_Change()
    
    If Len(txtFiltro.Text) > 0 Then
        If IsNumeric(txtFiltro.Text) Then
            If (Val(txtFiltro.Text) - 1 <= lstGraphics.ListCount) Then
                lstGraphics.Selected(Val(txtFiltro.Text) - 1) = True
            End If
        Else
            Dim i As Long
            
            For i = 1 To lstGraphics.ListCount - 1
                If InStrB(1, i + 1 & " " & txtFiltro.Text, lstGraphics.List(i)) > 0 Then
                'If StrComp(i + 1 & " " & txtFiltro.Text, lstGraphics.List(i)) = 0 Then
                    lstGraphics.Selected(i) = True
                    Exit For
                End If
            Next i
        End If
    End If
    
End Sub

Private Sub txtFiltro_KeyUp(KeyCode As Integer, Shift As Integer)

    If KeyCode = 13 Then
    
        If Len(txtFiltro.Text) > 0 Then
            If IsNumeric(txtFiltro.Text) Then
                If (Val(txtFiltro.Text) - 1 <= lstGraphics.ListCount) Then
                    lstGraphics.Selected(Val(txtFiltro.Text) - 1) = True
                End If
            Else
                Dim i As Long
                
                For i = lstGraphics.ListIndex + 1 To lstGraphics.ListCount - 1
                    If InStrB(1, lstGraphics.List(i), UCase$(txtFiltro.Text), vbBinaryCompare) > 0 Then
                    'If StrComp(i + 1 & " " & txtFiltro.Text, lstGraphics.List(i)) = 0 Then
                        lstGraphics.Selected(i) = True
                        Exit For
                    End If
                Next i
            End If
        End If
    End If
    
End Sub

Private Sub txtFiltroPNG_KeyUp(KeyCode As Integer, Shift As Integer)
    If KeyCode = 13 Then
        Call searchPNG
    End If
End Sub

Private Sub txtGrh_Change()

Dim i                           As Long

 On Error GoTo txtGrh_Change_Error
    
    If lstGraphics.ListIndex < 1 Then Exit Sub
    
    For i = 0 To numSelectIndexs - 1

        If StrComp(txtGrh.Text, SaveLine(SelectIndexs(i))) <> 0 Then
            lblReset.BackColor = vbRed
            lblSave.BackColor = vbRed
        Else
            lblReset.BackColor = &H8000000F
            lblSave.BackColor = &H8000000F
        End If

        If Not NoProcessTxt Then
            Call ProcessGraphicLineToBin("Grh" & SelectIndexs(i) & "=" & txtGrh.Text)
            If SelectIndexs(i) <> NumGraphic Then
                NumGraphic = TileEngine.LoadGraphic(SP_Main, SelectIndexs(i))
            End If
            lstGraphics.List(SelectIndexs(i) - 1) = NameLineGraphic(CLng(SelectIndexs(i)))
            'cmbFondo.List(selectindexs(i)) = NameLineGraphic(selectindexs(i))
        End If

    Next i

    Call lstGraphics_Click

    '    If lstGraphics.ListIndex <> -1 Then
    '        If StrComp(txtGrh.Text, SaveLine(lstGraphics.ListIndex + 1)) <> 0 Then
    '            lblReset.BackColor = vbRed
    '            lblSave.BackColor = vbRed
    '        Else
    '            lblReset.BackColor = &H8000000F
    '            lblSave.BackColor = &H8000000F
    '        End If
    '        If NoProcessTxt = False Then
    '            Call ProcessGraphicLineToBin("Grh" & lstGraphics.ListIndex + 1 & "=" & txtGrh.Text)
    '            NumGraphic = TileEngine.LoadGraphic(SP_Main, lstGraphics.ListIndex + 1)
    '            lstGraphics.List(lstGraphics.ListIndex) = NameLineGraphic(lstGraphics.ListIndex + 1)
    '            'cmbFondo.List(lstGraphics.ListIndex + 1) = NameLineGraphic(lstGraphics.ListIndex + 1)
    '        End If
    '    End If


 On Error GoTo 0
 Exit Sub

txtGrh_Change_Error:

 Call LogError("Error " & err.Number & " (" & err.Description & ") procedimiento txtGrh_Change Formulario frmMain línea: " & Erl())

End Sub

Private Sub txtGrh_KeyDown(KeyCode As Integer, Shift As Integer)

    If Shift > 0 Then
        Select Case KeyCode
            Case vbKeyRight, vbKeyLeft, vbKeyDown, vbKeyUp
                Exit Sub
        End Select
    End If

    If Shift = 0 Then
        If KeyCode = vbKeyUp Then
            If lstGraphics.ListIndex > 0 Then
                'lstGraphics.SetFocus
                lstGraphics.ListIndex = lstGraphics.ListIndex - 1
                'lstGraphics.Refresh
            End If
        ElseIf KeyCode = vbKeyDown Then
            If lstGraphics.ListIndex <= lstGraphics.ListCount Then
                'lstGraphics.SetFocus
                lstGraphics.ListIndex = lstGraphics.ListIndex + 1
                'lstGraphics.Refresh
            End If
        End If
    Else
        Dim Index               As Integer
        Index = lstGraphics.ListIndex + 1
        If Index > 0 And Index <= grhCount Then
            If GrhData(Index).NumFrames = 1 Then
                With GrhData(Index)
                    If KeyCode = vbKeyUp Then
                        .sY = .sY - .pixelHeight
                    ElseIf KeyCode = vbKeyDown Then
                        .sY = .sY + .pixelHeight
                    ElseIf KeyCode = vbKeyLeft Then
                        .sX = .sX - .pixelWidth
                    ElseIf KeyCode = vbKeyRight Then
                        .sX = .sX + .pixelWidth
                    End If
                End With
                Call ProcessLine(Index)
            End If
        End If
    End If
End Sub

Private Sub txtGrh_KeyPress(KeyAscii As Integer)
    Debug.Print KeyAscii
End Sub

Private Sub txtNumGrhs_KeyDown(KeyCode As Integer, Shift As Integer)
    Call ProcessTxtsChanges
End Sub


Private Sub txtNumFrames_KeyDown(KeyCode As Integer, Shift As Integer)
    Call ProcessTxtsChanges
End Sub

Private Sub txtNumPNG_KeyDown(KeyCode As Integer, Shift As Integer)
    Call ProcessTxtsChanges
End Sub

Private Sub txtVelocity_KeyDown(KeyCode As Integer, Shift As Integer)
    Call ProcessTxtsChanges
End Sub

Private Sub txtXFrom_KeyDown(KeyCode As Integer, Shift As Integer)
    Call ProcessTxtsChanges
End Sub

Private Sub txtXTo_KeyDown(KeyCode As Integer, Shift As Integer)
    Call ProcessTxtsChanges
End Sub

Private Sub txtYFrom_KeyDown(KeyCode As Integer, Shift As Integer)
    Call ProcessTxtsChanges
End Sub

Private Sub txtYTo_KeyDown(KeyCode As Integer, Shift As Integer)
    Call ProcessTxtsChanges
End Sub

Sub ProcessTxtsChanges()

Dim i                           As Long
Dim sValue                      As String

    If Val(ReadField(2, frmMain.lblGrh.Caption & Val(frmMain.txtNumFrames.Text), Asc("="))) > 0 Then
        sValue = Val(frmMain.txtNumFrames.Text) & Separator & Val(frmMain.txtNumPNG.Text) & Separator & Val(frmMain.txtXFrom.Text) & Separator & Val(frmMain.txtYFrom.Text) & Separator & Val(frmMain.txtXTo.Text) & Separator & Val(frmMain.txtYTo.Text)
        txtGrh.Text = sValue 'Call ProcessGraphicLineToBin(sValue)
    End If
    
End Sub
