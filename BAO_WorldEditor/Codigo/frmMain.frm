VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "ComDlg32.OCX"
Begin VB.Form frmMain 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "WorldEditor"
   ClientHeight    =   13140
   ClientLeft      =   390
   ClientTop       =   840
   ClientWidth     =   23385
   Icon            =   "frmMain.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   ScaleHeight     =   876
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   1559
   StartUpPosition =   1  'CenterOwner
   Visible         =   0   'False
   WindowState     =   2  'Maximized
   Begin VB.PictureBox tp2 
      BackColor       =   &H0000C000&
      Height          =   255
      Index           =   0
      Left            =   19560
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   13
      TabIndex        =   140
      Top             =   480
      Width           =   255
      Begin VB.Shape Shape5 
         BackColor       =   &H00FF0000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00FF0000&
         Height          =   225
         Left            =   0
         Top             =   0
         Width           =   105
      End
      Begin VB.Shape Shape13 
         BackColor       =   &H00FF0000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00FF0000&
         Height          =   105
         Left            =   0
         Top             =   0
         Width           =   210
      End
   End
   Begin VB.PictureBox tp2 
      BackColor       =   &H0000C000&
      Height          =   255
      Index           =   1
      Left            =   19800
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   13
      TabIndex        =   139
      Top             =   480
      Width           =   255
      Begin VB.Shape Shape12 
         BackColor       =   &H00FF0000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00FF0000&
         Height          =   105
         Left            =   0
         Top             =   0
         Width           =   210
      End
   End
   Begin VB.PictureBox tp2 
      BackColor       =   &H0000C000&
      Height          =   255
      Index           =   2
      Left            =   20040
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   13
      TabIndex        =   138
      Top             =   480
      Width           =   255
      Begin VB.Shape Shape9 
         BackColor       =   &H00FF0000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00FF0000&
         Height          =   225
         Left            =   90
         Top             =   0
         Width           =   105
      End
      Begin VB.Shape Shape14 
         BackColor       =   &H00FF0000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00FF0000&
         Height          =   105
         Left            =   0
         Top             =   0
         Width           =   210
      End
   End
   Begin VB.PictureBox tp2 
      BackColor       =   &H0000C000&
      Height          =   255
      Index           =   3
      Left            =   19560
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   13
      TabIndex        =   137
      Top             =   720
      Width           =   255
      Begin VB.Shape Shape7 
         BackColor       =   &H00FF0000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00FF0000&
         Height          =   225
         Left            =   0
         Top             =   0
         Width           =   105
      End
   End
   Begin VB.PictureBox tp2 
      BackColor       =   &H0000C000&
      Height          =   255
      Index           =   4
      Left            =   19800
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   13
      TabIndex        =   136
      Top             =   720
      Width           =   255
   End
   Begin VB.PictureBox tp2 
      BackColor       =   &H0000C000&
      Height          =   255
      Index           =   5
      Left            =   20040
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   13
      TabIndex        =   135
      Top             =   720
      Width           =   255
      Begin VB.Shape Shape10 
         BackColor       =   &H00FF0000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00FF0000&
         Height          =   225
         Left            =   90
         Top             =   0
         Width           =   105
      End
   End
   Begin VB.PictureBox tp2 
      BackColor       =   &H0000C000&
      Height          =   255
      Index           =   6
      Left            =   19560
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   13
      TabIndex        =   134
      Top             =   960
      Width           =   255
      Begin VB.Shape Shape8 
         BackColor       =   &H00FF0000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00FF0000&
         Height          =   225
         Left            =   0
         Top             =   0
         Width           =   105
      End
      Begin VB.Shape Shape16 
         BackColor       =   &H00FF0000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00FF0000&
         Height          =   105
         Left            =   0
         Top             =   90
         Width           =   210
      End
   End
   Begin VB.PictureBox tp2 
      BackColor       =   &H0000C000&
      Height          =   255
      Index           =   7
      Left            =   19800
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   13
      TabIndex        =   133
      Top             =   960
      Width           =   255
      Begin VB.Shape Shape15 
         BackColor       =   &H00FF0000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00FF0000&
         Height          =   105
         Left            =   0
         Top             =   90
         Width           =   210
      End
   End
   Begin VB.PictureBox tp2 
      BackColor       =   &H0000C000&
      Height          =   255
      Index           =   8
      Left            =   20040
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   13
      TabIndex        =   132
      Top             =   960
      Width           =   255
      Begin VB.Shape Shape11 
         BackColor       =   &H00FF0000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00FF0000&
         Height          =   225
         Left            =   90
         Top             =   0
         Width           =   105
      End
      Begin VB.Shape Shape17 
         BackColor       =   &H00FF0000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H00FF0000&
         Height          =   105
         Left            =   0
         Top             =   90
         Width           =   210
      End
   End
   Begin VB.PictureBox tp1 
      BackColor       =   &H00FF0000&
      Height          =   255
      Index           =   0
      Left            =   18720
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   13
      TabIndex        =   131
      Tag             =   "102"
      Top             =   480
      Width           =   255
      Begin VB.Shape Shape20 
         BackColor       =   &H0000C000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H0000C000&
         Height          =   225
         Left            =   0
         Top             =   0
         Width           =   105
      End
      Begin VB.Shape Shape26 
         BackColor       =   &H0000C000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H0000C000&
         Height          =   105
         Left            =   0
         Top             =   0
         Width           =   210
      End
   End
   Begin VB.PictureBox tp1 
      BackColor       =   &H00FF0000&
      Height          =   255
      Index           =   1
      Left            =   18960
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   13
      TabIndex        =   130
      Top             =   480
      Width           =   255
      Begin VB.Shape Shape24 
         BackColor       =   &H0000C000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H0000C000&
         Height          =   105
         Left            =   0
         Top             =   0
         Width           =   210
      End
   End
   Begin VB.PictureBox tp1 
      BackColor       =   &H00FF0000&
      Height          =   255
      Index           =   2
      Left            =   19200
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   13
      TabIndex        =   129
      Top             =   480
      Width           =   255
      Begin VB.Shape Shape23 
         BackColor       =   &H0000C000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H0000C000&
         Height          =   225
         Left            =   120
         Top             =   0
         Width           =   105
      End
      Begin VB.Shape Shape27 
         BackColor       =   &H0000C000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H0000C000&
         Height          =   105
         Left            =   0
         Top             =   0
         Width           =   210
      End
   End
   Begin VB.PictureBox tp1 
      BackColor       =   &H00FF0000&
      Height          =   255
      Index           =   3
      Left            =   18720
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   13
      TabIndex        =   128
      Top             =   720
      Width           =   255
      Begin VB.Shape Shape18 
         BackColor       =   &H0000C000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H0000C000&
         Height          =   225
         Left            =   0
         Top             =   0
         Width           =   105
      End
   End
   Begin VB.PictureBox tp1 
      BackColor       =   &H00FF0000&
      Height          =   255
      Index           =   4
      Left            =   18960
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   13
      TabIndex        =   127
      Top             =   720
      Width           =   255
   End
   Begin VB.PictureBox tp1 
      BackColor       =   &H00FF0000&
      Height          =   255
      Index           =   6
      Left            =   18720
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   13
      TabIndex        =   126
      Top             =   960
      Width           =   255
      Begin VB.Shape Shape19 
         BackColor       =   &H0000C000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H0000C000&
         Height          =   225
         Left            =   0
         Top             =   0
         Width           =   105
      End
      Begin VB.Shape Shape28 
         BackColor       =   &H0000C000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H0000C000&
         Height          =   105
         Left            =   0
         Top             =   90
         Width           =   210
      End
   End
   Begin VB.PictureBox tp1 
      BackColor       =   &H00FF0000&
      Height          =   255
      Index           =   7
      Left            =   18960
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   13
      TabIndex        =   125
      Top             =   960
      Width           =   255
      Begin VB.Shape Shape25 
         BackColor       =   &H0000C000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H0000C000&
         Height          =   105
         Left            =   0
         Top             =   90
         Width           =   210
      End
   End
   Begin VB.PictureBox tp1 
      BackColor       =   &H00FF0000&
      Height          =   255
      Index           =   5
      Left            =   19200
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   13
      TabIndex        =   124
      Top             =   720
      Width           =   255
      Begin VB.Shape Shape22 
         BackColor       =   &H0000C000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H0000C000&
         Height          =   225
         Left            =   90
         Top             =   0
         Width           =   105
      End
   End
   Begin VB.PictureBox tp1 
      BackColor       =   &H00FF0000&
      Height          =   255
      Index           =   8
      Left            =   19200
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   13
      TabIndex        =   123
      Top             =   960
      Width           =   255
      Begin VB.Shape Shape21 
         BackColor       =   &H0000C000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H0000C000&
         Height          =   225
         Left            =   120
         Top             =   0
         Width           =   105
      End
      Begin VB.Shape Shape29 
         BackColor       =   &H0000C000&
         BackStyle       =   1  'Opaque
         BorderColor     =   &H0000C000&
         Height          =   105
         Left            =   0
         Top             =   90
         Width           =   210
      End
   End
   Begin VB.OptionButton Option3 
      BackColor       =   &H00000000&
      Caption         =   "Nie"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   19200
      TabIndex        =   122
      Top             =   240
      Width           =   615
   End
   Begin VB.OptionButton Option2 
      BackColor       =   &H00000000&
      Caption         =   "De"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   19800
      TabIndex        =   121
      Top             =   240
      Width           =   615
   End
   Begin VB.OptionButton Option1 
      BackColor       =   &H00000000&
      Caption         =   "Ti"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   18720
      TabIndex        =   120
      Top             =   240
      Value           =   -1  'True
      Width           =   495
   End
   Begin VB.CheckBox Check1 
      BackColor       =   &H00000000&
      Caption         =   "Pintar Rect"
      ForeColor       =   &H00FFFFFF&
      Height          =   195
      Left            =   20400
      TabIndex        =   119
      Top             =   960
      Width           =   1215
   End
   Begin VB.CheckBox chkCostas 
      BackColor       =   &H00000000&
      Caption         =   "Auto-Costas"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   20400
      TabIndex        =   118
      Top             =   600
      Width           =   1215
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Mapa3"
      Height          =   255
      Left            =   17520
      TabIndex        =   117
      Top             =   840
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Mapa2"
      Height          =   255
      Left            =   17520
      TabIndex        =   116
      Top             =   480
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Mapa1"
      Height          =   255
      Left            =   17520
      TabIndex        =   115
      Top             =   120
      Width           =   1095
   End
   Begin VB.Frame FraOpciones 
      BackColor       =   &H00000000&
      Caption         =   "Opciones"
      BeginProperty Font 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000B&
      Height          =   1335
      Left            =   15120
      TabIndex        =   106
      Top             =   0
      Width           =   2295
      Begin WorldEditor.lvButtons_H LvBOpcion 
         Height          =   375
         Index           =   0
         Left            =   240
         TabIndex        =   107
         Top             =   360
         Width           =   375
         _ExtentX        =   661
         _ExtentY        =   661
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         Image           =   "frmMain.frx":628A
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H LvBOpcion 
         Height          =   375
         Index           =   1
         Left            =   720
         TabIndex        =   108
         Top             =   360
         Width           =   375
         _ExtentX        =   661
         _ExtentY        =   661
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         Image           =   "frmMain.frx":6EDC
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H LvBOpcion 
         Height          =   375
         Index           =   2
         Left            =   1200
         TabIndex        =   109
         Top             =   360
         Width           =   375
         _ExtentX        =   661
         _ExtentY        =   661
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         Image           =   "frmMain.frx":7B2E
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H LvBOpcion 
         Height          =   375
         Index           =   3
         Left            =   1680
         TabIndex        =   110
         Top             =   360
         Width           =   375
         _ExtentX        =   661
         _ExtentY        =   661
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         Image           =   "frmMain.frx":8780
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H LvBOpcion 
         Height          =   375
         Index           =   4
         Left            =   240
         TabIndex        =   111
         Top             =   840
         Width           =   375
         _ExtentX        =   661
         _ExtentY        =   661
         Caption         =   "1"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H LvBOpcion 
         Height          =   375
         Index           =   5
         Left            =   720
         TabIndex        =   112
         Top             =   840
         Width           =   375
         _ExtentX        =   661
         _ExtentY        =   661
         Caption         =   "2"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H LvBOpcion 
         Height          =   375
         Index           =   6
         Left            =   1200
         TabIndex        =   113
         Top             =   840
         Width           =   375
         _ExtentX        =   661
         _ExtentY        =   661
         Caption         =   "3"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H LvBOpcion 
         Height          =   375
         Index           =   7
         Left            =   1680
         TabIndex        =   114
         Top             =   840
         Width           =   375
         _ExtentX        =   661
         _ExtentY        =   661
         Caption         =   "4"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Tahoma"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
   End
   Begin VB.CommandButton cmdDM 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   0
      Left            =   14400
      Picture         =   "frmMain.frx":93D2
      Style           =   1  'Graphical
      TabIndex        =   105
      Top             =   240
      Width           =   240
   End
   Begin VB.CommandButton cmdDM 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   1
      Left            =   14160
      Picture         =   "frmMain.frx":96C4
      Style           =   1  'Graphical
      TabIndex        =   104
      Top             =   480
      Width           =   240
   End
   Begin VB.CommandButton cmdDM 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   2
      Left            =   14640
      Picture         =   "frmMain.frx":99B4
      Style           =   1  'Graphical
      TabIndex        =   103
      Top             =   480
      Width           =   240
   End
   Begin VB.CommandButton cmdDM 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   3
      Left            =   14400
      Picture         =   "frmMain.frx":9CA3
      Style           =   1  'Graphical
      TabIndex        =   102
      Top             =   720
      Width           =   240
   End
   Begin VB.CommandButton cmdDM 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Index           =   4
      Left            =   14400
      Style           =   1  'Graphical
      TabIndex        =   101
      Top             =   480
      Width           =   240
   End
   Begin VB.PictureBox picRadar 
      Appearance      =   0  'Flat
      BackColor       =   &H0080FF80&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   1590
      Left            =   120
      ScaleHeight     =   106
      ScaleMode       =   0  'User
      ScaleWidth      =   107
      TabIndex        =   96
      Top             =   120
      Width           =   1605
      Begin VB.Label FPS 
         Alignment       =   1  'Right Justify
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "FPS: ??"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C0FFFF&
         Height          =   150
         Left            =   1065
         TabIndex        =   98
         Top             =   1440
         Width           =   450
      End
      Begin VB.Label POSX 
         AutoSize        =   -1  'True
         BackStyle       =   0  'Transparent
         Caption         =   "X: ?? - Y:??"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   6
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   150
         Left            =   120
         TabIndex        =   97
         Top             =   1440
         Width           =   675
      End
      Begin VB.Shape ApuntadorRadar 
         BackColor       =   &H00FFFFFF&
         BorderColor     =   &H00FFFFFF&
         BorderStyle     =   6  'Inside Solid
         DrawMode        =   6  'Mask Pen Not
         FillColor       =   &H00FFFFFF&
         Height          =   75
         Left            =   600
         Top             =   600
         Width           =   75
      End
      Begin VB.Shape Shape1 
         BorderColor     =   &H00000000&
         Height          =   1365
         Left            =   120
         Top             =   120
         Width           =   1365
      End
   End
   Begin WorldEditor.lvButtons_H SelectPanel 
      Height          =   1035
      Index           =   6
      Left            =   11835
      TabIndex        =   47
      Top             =   30
      Width           =   1815
      _ExtentX        =   3201
      _ExtentY        =   1826
      Caption         =   "Tri&gger's (F12)"
      CapAlign        =   2
      BackStyle       =   2
      Shape           =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      LockHover       =   1
      cGradient       =   8421631
      Mode            =   1
      Value           =   0   'False
      CustomClick     =   1
      ImgAlign        =   5
      Image           =   "frmMain.frx":9F8A
      ImgSize         =   24
      cBack           =   -2147483633
   End
   Begin WorldEditor.lvButtons_H SelectPanel 
      Height          =   1035
      Index           =   5
      Left            =   10320
      TabIndex        =   46
      Top             =   30
      Width           =   2565
      _ExtentX        =   4524
      _ExtentY        =   1826
      Caption         =   "&Objetos (F11)"
      CapAlign        =   2
      BackStyle       =   2
      Shape           =   3
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      LockHover       =   1
      cGradient       =   8421631
      Mode            =   1
      Value           =   0   'False
      CustomClick     =   1
      ImgAlign        =   5
      Image           =   "frmMain.frx":A550
      ImgSize         =   24
      cBack           =   -2147483633
   End
   Begin WorldEditor.lvButtons_H SelectPanel 
      Height          =   1035
      Index           =   3
      Left            =   8955
      TabIndex        =   45
      Top             =   30
      Width           =   2415
      _ExtentX        =   4260
      _ExtentY        =   1826
      Caption         =   "&NPC's (F8)"
      CapAlign        =   2
      BackStyle       =   2
      Shape           =   3
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      LockHover       =   1
      cGradient       =   8421631
      Mode            =   1
      Value           =   0   'False
      CustomClick     =   1
      ImgAlign        =   5
      Image           =   "frmMain.frx":AA51
      ImgSize         =   24
      cBack           =   -2147483633
   End
   Begin WorldEditor.lvButtons_H SelectPanel 
      Height          =   1035
      Index           =   2
      Left            =   7440
      TabIndex        =   44
      Top             =   30
      Width           =   2565
      _ExtentX        =   4524
      _ExtentY        =   1826
      Caption         =   "&Bloqueos (F7)"
      CapAlign        =   2
      BackStyle       =   2
      Shape           =   3
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      LockHover       =   1
      cGradient       =   8421631
      Mode            =   1
      Value           =   0   'False
      CustomClick     =   1
      ImgAlign        =   5
      Image           =   "frmMain.frx":AE05
      ImgSize         =   24
      cBack           =   -2147483633
   End
   Begin WorldEditor.lvButtons_H SelectPanel 
      Height          =   1035
      Index           =   1
      Left            =   5925
      TabIndex        =   43
      Top             =   30
      Width           =   2565
      _ExtentX        =   4524
      _ExtentY        =   1826
      Caption         =   "&Translados (F6)"
      CapAlign        =   2
      BackStyle       =   2
      Shape           =   3
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      LockHover       =   1
      cGradient       =   8421631
      Mode            =   1
      Value           =   0   'False
      ImgAlign        =   5
      Image           =   "frmMain.frx":B186
      ImgSize         =   24
      cBack           =   -2147483633
   End
   Begin WorldEditor.lvButtons_H SelectPanel 
      Height          =   1035
      Index           =   0
      Left            =   5160
      TabIndex        =   42
      Top             =   30
      Width           =   1815
      _ExtentX        =   3201
      _ExtentY        =   1826
      Caption         =   "&Superficie (F5)"
      CapAlign        =   2
      BackStyle       =   2
      Shape           =   2
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      cFore           =   0
      cFHover         =   0
      cGradient       =   8421631
      Mode            =   1
      Value           =   0   'False
      ImgAlign        =   5
      Image           =   "frmMain.frx":E7E6
      ImgSize         =   24
      cBack           =   -2147483633
   End
   Begin WorldEditor.lvButtons_H cmdQuitarFunciones 
      Height          =   435
      Left            =   1800
      TabIndex        =   41
      ToolTipText     =   "Quitar Todas las Funciones Activadas"
      Top             =   1320
      Width           =   2655
      _ExtentX        =   4683
      _ExtentY        =   767
      Caption         =   "&Quitar Funciones (F4)"
      CapAlign        =   2
      BackStyle       =   2
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      cGradient       =   0
      Mode            =   0
      Value           =   0   'False
      cBack           =   12632319
   End
   Begin VB.Timer TimAutoGuardarMapa 
      Enabled         =   0   'False
      Interval        =   60000
      Left            =   3960
      Top             =   1920
   End
   Begin VB.TextBox StatTxt 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H00404040&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   4275
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   9
      TabStop         =   0   'False
      Text            =   "frmMain.frx":11D2C
      Top             =   6240
      Width           =   4320
   End
   Begin VB.PictureBox pPaneles 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      ForeColor       =   &H80000008&
      Height          =   4395
      Left            =   120
      Picture         =   "frmMain.frx":11D6C
      ScaleHeight     =   4365
      ScaleWidth      =   4365
      TabIndex        =   8
      Top             =   1800
      Width           =   4395
      Begin VB.CheckBox chkSeleccionarSuperficie 
         Caption         =   "Seleccionar Superficie"
         Height          =   375
         Left            =   0
         TabIndex        =   141
         Top             =   4080
         Visible         =   0   'False
         Width           =   1935
      End
      Begin MSComDlg.CommonDialog Dialog 
         Left            =   360
         Top             =   240
         _ExtentX        =   847
         _ExtentY        =   847
         _Version        =   393216
      End
      Begin VB.TextBox tTY 
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   315
         Left            =   1200
         TabIndex        =   86
         Text            =   "1"
         Top             =   960
         Visible         =   0   'False
         Width           =   2900
      End
      Begin VB.TextBox tTX 
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   315
         Left            =   1200
         TabIndex        =   85
         Text            =   "1"
         Top             =   600
         Visible         =   0   'False
         Width           =   2900
      End
      Begin VB.TextBox tTMapa 
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   315
         Left            =   1200
         TabIndex        =   84
         Text            =   "1"
         Top             =   240
         Visible         =   0   'False
         Width           =   2900
      End
      Begin WorldEditor.lvButtons_H cInsertarTrans 
         Height          =   375
         Left            =   240
         TabIndex        =   87
         Top             =   1320
         Visible         =   0   'False
         Width           =   3855
         _ExtentX        =   6800
         _ExtentY        =   661
         Caption         =   "&Insertar Translado"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   1
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cInsertarTransOBJ 
         Height          =   375
         Left            =   240
         TabIndex        =   88
         Top             =   1680
         Visible         =   0   'False
         Width           =   3855
         _ExtentX        =   6800
         _ExtentY        =   661
         Caption         =   "Colocar automaticamente &Objeto"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   1
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cUnionManual 
         Height          =   375
         Left            =   240
         TabIndex        =   89
         Top             =   2160
         Visible         =   0   'False
         Width           =   3855
         _ExtentX        =   6800
         _ExtentY        =   661
         Caption         =   "&Union con Mapa Adyacente (manual)"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cUnionAuto 
         Height          =   375
         Left            =   240
         TabIndex        =   90
         Top             =   2520
         Visible         =   0   'False
         Width           =   3855
         _ExtentX        =   6800
         _ExtentY        =   661
         Caption         =   "Union con Mapas &Adyacentes (auto)"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cQuitarTrans 
         Height          =   375
         Left            =   240
         TabIndex        =   91
         Top             =   3000
         Visible         =   0   'False
         Width           =   3855
         _ExtentX        =   6800
         _ExtentY        =   661
         Caption         =   "&Quitar Translados"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   1
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin VB.ComboBox cCapas 
         Appearance      =   0  'Flat
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   330
         ItemData        =   "frmMain.frx":243D0
         Left            =   1080
         List            =   "frmMain.frx":243E0
         TabIndex        =   1
         TabStop         =   0   'False
         Text            =   "1"
         Top             =   3120
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.ComboBox cGrh 
         Appearance      =   0  'Flat
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   330
         Left            =   2880
         TabIndex        =   73
         Text            =   "1"
         Top             =   3120
         Visible         =   0   'False
         Width           =   1335
      End
      Begin VB.ComboBox cFiltro 
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   330
         Index           =   0
         Left            =   600
         TabIndex        =   72
         Top             =   2760
         Visible         =   0   'False
         Width           =   3615
      End
      Begin VB.ListBox lListado 
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   2580
         Index           =   0
         ItemData        =   "frmMain.frx":243F0
         Left            =   120
         List            =   "frmMain.frx":243F2
         Sorted          =   -1  'True
         TabIndex        =   71
         Tag             =   "-1"
         Top             =   120
         Visible         =   0   'False
         Width           =   4095
      End
      Begin WorldEditor.lvButtons_H cQuitarEnTodasLasCapas 
         Height          =   375
         Left            =   480
         TabIndex        =   74
         Top             =   3840
         Visible         =   0   'False
         Width           =   1935
         _ExtentX        =   3836
         _ExtentY        =   661
         Caption         =   "Quitar en &Capas 2 y 3"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   1
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cQuitarEnEstaCapa 
         Height          =   375
         Left            =   480
         TabIndex        =   75
         Top             =   3480
         Visible         =   0   'False
         Width           =   1935
         _ExtentX        =   3836
         _ExtentY        =   661
         Caption         =   "&Quitar en esta Capa"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   1
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cSeleccionarSuperficie 
         Height          =   735
         Left            =   2400
         TabIndex        =   76
         Top             =   3480
         Visible         =   0   'False
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   1296
         Caption         =   "&Insertar Superficie"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   1
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin VB.ComboBox cNumFunc 
         Appearance      =   0  'Flat
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   330
         Index           =   2
         ItemData        =   "frmMain.frx":243F4
         Left            =   3360
         List            =   "frmMain.frx":243F6
         TabIndex        =   67
         Text            =   "1"
         Top             =   3120
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.ComboBox cCantFunc 
         Appearance      =   0  'Flat
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   330
         Index           =   2
         ItemData        =   "frmMain.frx":243F8
         Left            =   840
         List            =   "frmMain.frx":243FA
         TabIndex        =   0
         Text            =   "1"
         Top             =   3120
         Visible         =   0   'False
         Width           =   1215
      End
      Begin VB.ListBox lListado 
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   2580
         Index           =   3
         ItemData        =   "frmMain.frx":243FC
         Left            =   120
         List            =   "frmMain.frx":243FE
         TabIndex        =   66
         Tag             =   "-1"
         Top             =   120
         Visible         =   0   'False
         Width           =   4095
      End
      Begin VB.ComboBox cFiltro 
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   330
         Index           =   3
         Left            =   600
         TabIndex        =   65
         Top             =   2760
         Visible         =   0   'False
         Width           =   3615
      End
      Begin VB.ComboBox cCantFunc 
         Appearance      =   0  'Flat
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   330
         Index           =   0
         ItemData        =   "frmMain.frx":24400
         Left            =   840
         List            =   "frmMain.frx":24402
         TabIndex        =   58
         Text            =   "1"
         Top             =   3120
         Visible         =   0   'False
         Width           =   1215
      End
      Begin VB.ComboBox cNumFunc 
         Appearance      =   0  'Flat
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   330
         Index           =   0
         ItemData        =   "frmMain.frx":24404
         Left            =   3360
         List            =   "frmMain.frx":24406
         TabIndex        =   57
         Text            =   "1"
         Top             =   3120
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.ComboBox cFiltro 
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   330
         Index           =   1
         Left            =   600
         TabIndex        =   56
         Top             =   2760
         Visible         =   0   'False
         Width           =   3615
      End
      Begin VB.ListBox lListado 
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   2580
         Index           =   1
         ItemData        =   "frmMain.frx":24408
         Left            =   120
         List            =   "frmMain.frx":2440A
         TabIndex        =   55
         Tag             =   "-1"
         Top             =   120
         Visible         =   0   'False
         Width           =   4095
      End
      Begin VB.ListBox lListado 
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   3210
         Index           =   4
         ItemData        =   "frmMain.frx":2440C
         Left            =   120
         List            =   "frmMain.frx":2440E
         TabIndex        =   54
         Tag             =   "-1"
         Top             =   120
         Visible         =   0   'False
         Width           =   4095
      End
      Begin VB.PictureBox Picture5 
         Height          =   0
         Left            =   0
         ScaleHeight     =   0
         ScaleWidth      =   0
         TabIndex        =   10
         Top             =   0
         Width           =   0
      End
      Begin VB.PictureBox Picture6 
         Height          =   0
         Left            =   0
         ScaleHeight     =   0
         ScaleWidth      =   0
         TabIndex        =   11
         Top             =   0
         Width           =   0
      End
      Begin VB.PictureBox Picture7 
         Height          =   0
         Left            =   0
         ScaleHeight     =   0
         ScaleWidth      =   0
         TabIndex        =   12
         Top             =   0
         Width           =   0
      End
      Begin VB.PictureBox Picture8 
         Height          =   0
         Left            =   0
         ScaleHeight     =   0
         ScaleWidth      =   0
         TabIndex        =   13
         Top             =   0
         Width           =   0
      End
      Begin VB.PictureBox Picture9 
         Height          =   0
         Left            =   0
         ScaleHeight     =   0
         ScaleWidth      =   0
         TabIndex        =   14
         Top             =   0
         Width           =   0
      End
      Begin VB.PictureBox Picture11 
         Height          =   0
         Left            =   0
         ScaleHeight     =   0
         ScaleWidth      =   0
         TabIndex        =   50
         Top             =   0
         Width           =   0
      End
      Begin WorldEditor.lvButtons_H cQuitarTrigger 
         Height          =   375
         Left            =   480
         TabIndex        =   51
         Top             =   3840
         Visible         =   0   'False
         Width           =   1935
         _ExtentX        =   3836
         _ExtentY        =   661
         Caption         =   "&Quitar Trigger's"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   1
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cVerTriggers 
         Height          =   375
         Left            =   480
         TabIndex        =   52
         Top             =   3480
         Visible         =   0   'False
         Width           =   1935
         _ExtentX        =   3836
         _ExtentY        =   661
         Caption         =   "&Mostrar Trigger's"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   1
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cInsertarTrigger 
         Height          =   735
         Left            =   2400
         TabIndex        =   53
         Top             =   3480
         Visible         =   0   'False
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   1296
         Caption         =   "&Insertar Trigger"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   1
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cAgregarFuncalAzar 
         Height          =   375
         Index           =   0
         Left            =   480
         TabIndex        =   59
         Top             =   3480
         Visible         =   0   'False
         Width           =   1935
         _ExtentX        =   3836
         _ExtentY        =   661
         Caption         =   "Insetar NPC's al &Azar"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cQuitarFunc 
         Height          =   375
         Index           =   0
         Left            =   480
         TabIndex        =   60
         Top             =   3840
         Visible         =   0   'False
         Width           =   1935
         _ExtentX        =   3836
         _ExtentY        =   661
         Caption         =   "&Quitar NPC's"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   1
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cInsertarFunc 
         Height          =   735
         Index           =   0
         Left            =   2400
         TabIndex        =   61
         Top             =   3480
         Visible         =   0   'False
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   1296
         Caption         =   "&Insertar NPC's"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   1
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cVerBloqueos 
         Height          =   495
         Left            =   120
         TabIndex        =   62
         Top             =   120
         Visible         =   0   'False
         Width           =   4095
         _ExtentX        =   7223
         _ExtentY        =   873
         Caption         =   "&Mostrar Bloqueos"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   1
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cInsertarBloqueo 
         Height          =   735
         Left            =   120
         TabIndex        =   63
         Top             =   720
         Visible         =   0   'False
         Width           =   4095
         _ExtentX        =   7223
         _ExtentY        =   1296
         Caption         =   "&Insertar Bloqueos"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   1
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cQuitarBloqueo 
         Height          =   735
         Left            =   120
         TabIndex        =   64
         Top             =   1560
         Visible         =   0   'False
         Width           =   4095
         _ExtentX        =   7223
         _ExtentY        =   1296
         Caption         =   "&Quitar Bloqueos"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   1
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cAgregarFuncalAzar 
         Height          =   375
         Index           =   2
         Left            =   480
         TabIndex        =   68
         Top             =   3480
         Visible         =   0   'False
         Width           =   1935
         _ExtentX        =   3836
         _ExtentY        =   661
         Caption         =   "Insetar OBJ's al &Azar"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cQuitarFunc 
         Height          =   375
         Index           =   2
         Left            =   480
         TabIndex        =   69
         Top             =   3840
         Visible         =   0   'False
         Width           =   1935
         _ExtentX        =   3836
         _ExtentY        =   661
         Caption         =   "&Quitar OBJ's"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   1
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cInsertarFunc 
         Height          =   735
         Index           =   2
         Left            =   2400
         TabIndex        =   70
         Top             =   3480
         Visible         =   0   'False
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   1296
         Caption         =   "&Insertar Objetos"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   1
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cInsertarFunc 
         Height          =   735
         Index           =   1
         Left            =   2400
         TabIndex        =   83
         Top             =   3480
         Visible         =   0   'False
         Width           =   1815
         _ExtentX        =   3201
         _ExtentY        =   1296
         Caption         =   "&Insertar NPC's"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   1
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cQuitarFunc 
         Height          =   375
         Index           =   1
         Left            =   480
         TabIndex        =   82
         Top             =   3840
         Visible         =   0   'False
         Width           =   1935
         _ExtentX        =   3836
         _ExtentY        =   661
         Caption         =   "&Quitar NPC's"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   1
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin WorldEditor.lvButtons_H cAgregarFuncalAzar 
         Height          =   375
         Index           =   1
         Left            =   480
         TabIndex        =   81
         Top             =   3480
         Visible         =   0   'False
         Width           =   1935
         _ExtentX        =   3836
         _ExtentY        =   661
         Caption         =   "Insetar NPC's al &Azar"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin VB.ComboBox cCantFunc 
         Appearance      =   0  'Flat
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   330
         Index           =   1
         ItemData        =   "frmMain.frx":24410
         Left            =   840
         List            =   "frmMain.frx":24412
         TabIndex        =   77
         Text            =   "1"
         Top             =   3120
         Visible         =   0   'False
         Width           =   1215
      End
      Begin VB.ComboBox cFiltro 
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   330
         Index           =   2
         Left            =   600
         TabIndex        =   78
         Top             =   2760
         Visible         =   0   'False
         Width           =   3615
      End
      Begin VB.ListBox lListado 
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   2580
         Index           =   2
         ItemData        =   "frmMain.frx":24414
         Left            =   120
         List            =   "frmMain.frx":24416
         TabIndex        =   79
         Tag             =   "-1"
         Top             =   120
         Visible         =   0   'False
         Width           =   4095
      End
      Begin VB.ComboBox cNumFunc 
         Appearance      =   0  'Flat
         BackColor       =   &H80000012&
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   330
         Index           =   1
         ItemData        =   "frmMain.frx":24418
         Left            =   3360
         List            =   "frmMain.frx":2441A
         TabIndex        =   80
         Text            =   "500"
         Top             =   3120
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.CheckBox chkNoHostiles 
         Caption         =   "no hostiles"
         Height          =   735
         Left            =   0
         TabIndex        =   100
         Top             =   3360
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.Label lYver 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         Caption         =   "Y vertical:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   210
         Left            =   240
         TabIndex        =   94
         Top             =   1005
         Visible         =   0   'False
         Width           =   735
      End
      Begin VB.Label lXhor 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         Caption         =   "X horizontal:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   210
         Left            =   240
         TabIndex        =   93
         Top             =   645
         Visible         =   0   'False
         Width           =   900
      End
      Begin VB.Label lMapN 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         Caption         =   "Mapa:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   210
         Left            =   240
         TabIndex        =   92
         Top             =   285
         Visible         =   0   'False
         Width           =   435
      End
      Begin VB.Label lbFiltrar 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         Caption         =   "Filtrar:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   210
         Index           =   0
         Left            =   120
         TabIndex        =   26
         Top             =   2820
         Visible         =   0   'False
         Width           =   450
      End
      Begin VB.Label lbCapas 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         Caption         =   "Capa Actual:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   210
         Left            =   120
         TabIndex        =   25
         Top             =   3195
         Visible         =   0   'False
         Width           =   930
      End
      Begin VB.Label lbGrh 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         Caption         =   "Sup Actual:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   210
         Left            =   2040
         TabIndex        =   24
         Top             =   3195
         Visible         =   0   'False
         Width           =   840
      End
      Begin VB.Label lNumFunc 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         Caption         =   "Numero de NPC:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   210
         Index           =   1
         Left            =   2160
         TabIndex        =   23
         Top             =   3195
         Visible         =   0   'False
         Width           =   1170
      End
      Begin VB.Label lCantFunc 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         Caption         =   "Cantidad:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   210
         Index           =   1
         Left            =   120
         TabIndex        =   22
         Top             =   3195
         Visible         =   0   'False
         Width           =   675
      End
      Begin VB.Label lbFiltrar 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         Caption         =   "Filtrar:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   210
         Index           =   2
         Left            =   120
         TabIndex        =   21
         Top             =   2820
         Visible         =   0   'False
         Width           =   450
      End
      Begin VB.Label lNumFunc 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         Caption         =   "Numero de OBJ:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   210
         Index           =   2
         Left            =   2160
         TabIndex        =   20
         Top             =   3195
         Visible         =   0   'False
         Width           =   1170
      End
      Begin VB.Label lCantFunc 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         Caption         =   "Cantidad:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   210
         Index           =   2
         Left            =   120
         TabIndex        =   19
         Top             =   3195
         Visible         =   0   'False
         Width           =   675
      End
      Begin VB.Label lbFiltrar 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         Caption         =   "Filtrar:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   210
         Index           =   3
         Left            =   120
         TabIndex        =   18
         Top             =   2820
         Visible         =   0   'False
         Width           =   450
      End
      Begin VB.Label lCantFunc 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         Caption         =   "Cantidad:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   210
         Index           =   0
         Left            =   120
         TabIndex        =   17
         Top             =   3195
         Visible         =   0   'False
         Width           =   675
      End
      Begin VB.Label lNumFunc 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         Caption         =   "Numero de NPC:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   210
         Index           =   0
         Left            =   2160
         TabIndex        =   16
         Top             =   3195
         Visible         =   0   'False
         Width           =   1170
      End
      Begin VB.Label lbFiltrar 
         AutoSize        =   -1  'True
         BackColor       =   &H80000012&
         Caption         =   "Filtrar:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H80000014&
         Height          =   210
         Index           =   1
         Left            =   120
         TabIndex        =   15
         Top             =   2820
         Visible         =   0   'False
         Width           =   450
      End
   End
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      ForeColor       =   &H00FFFFFF&
      Height          =   5460
      Left            =   60
      ScaleHeight     =   364
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   297
      TabIndex        =   4
      TabStop         =   0   'False
      Top             =   6270
      Width           =   4455
      Begin VB.PictureBox PreviewGrh 
         BackColor       =   &H00004000&
         FillColor       =   &H00C0C0C0&
         Height          =   4260
         Left            =   45
         ScaleHeight     =   4200
         ScaleWidth      =   4305
         TabIndex        =   5
         Top             =   0
         Visible         =   0   'False
         Width           =   4365
      End
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      Caption         =   "Frame1"
      Height          =   1290
      Left            =   1680
      TabIndex        =   2
      Top             =   30
      Width           =   3225
      Begin WorldEditor.lvButtons_H cmdInformacionDelMapa 
         Height          =   375
         Left            =   100
         TabIndex        =   95
         Top             =   600
         Width           =   3015
         _ExtentX        =   5318
         _ExtentY        =   661
         Caption         =   "&Información del Mapa"
         CapAlign        =   2
         BackStyle       =   2
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         cGradient       =   0
         Mode            =   0
         Value           =   0   'False
         cBack           =   -2147483633
      End
      Begin VB.Label lblMapVersion 
         AutoSize        =   -1  'True
         BackColor       =   &H8000000D&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   9.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   240
         Left            =   1440
         TabIndex        =   29
         Top             =   1010
         Width           =   105
      End
      Begin VB.Label lblMapMusica 
         AutoSize        =   -1  'True
         BackColor       =   &H8000000D&
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   210
         Left            =   1440
         TabIndex        =   28
         Top             =   352
         Width           =   90
      End
      Begin VB.Label lblMapNombre 
         AutoSize        =   -1  'True
         BackColor       =   &H8000000D&
         BackStyle       =   0  'Transparent
         Caption         =   "Nuevo Mapa"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   210
         Left            =   1440
         TabIndex        =   27
         Top             =   90
         Width           =   900
      End
      Begin VB.Label lblFMusica 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Musica:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0080FF80&
         Height          =   270
         Left            =   105
         TabIndex        =   7
         Top             =   320
         Width           =   3015
      End
      Begin VB.Label lblFVersion 
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Versión:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0080FF80&
         Height          =   285
         Left            =   105
         TabIndex        =   6
         Top             =   960
         Width           =   3015
      End
      Begin VB.Label lblFNombreMapa 
         BackColor       =   &H8000000D&
         BackStyle       =   0  'Transparent
         BorderStyle     =   1  'Fixed Single
         Caption         =   "Nombre del Mapa:"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0080FF80&
         Height          =   270
         Left            =   105
         TabIndex        =   3
         Top             =   60
         Width           =   3015
      End
   End
   Begin WorldEditor.lvButtons_H SelectPanel 
      Height          =   675
      Index           =   4
      Left            =   9840
      TabIndex        =   99
      Top             =   240
      Visible         =   0   'False
      Width           =   900
      _ExtentX        =   1588
      _ExtentY        =   1191
      Caption         =   "none"
      CapAlign        =   2
      BackStyle       =   2
      Shape           =   3
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      LockHover       =   1
      cGradient       =   8421631
      Mode            =   1
      Value           =   0   'False
      CustomClick     =   1
      ImgAlign        =   5
      Image           =   "frmMain.frx":2441C
      ImgSize         =   24
      cBack           =   -2147483633
   End
   Begin VB.Line Separacion1 
      BorderColor     =   &H00FFFFFF&
      Index           =   1
      X1              =   329
      X2              =   329
      Y1              =   8
      Y2              =   88
   End
   Begin VB.Line Separacion2 
      BorderColor     =   &H00FFFFFF&
      Index           =   1
      X1              =   337
      X2              =   337
      Y1              =   8
      Y2              =   88
   End
   Begin VB.Line Separacion2 
      BorderColor     =   &H00808080&
      Index           =   0
      X1              =   336
      X2              =   336
      Y1              =   8
      Y2              =   88
   End
   Begin VB.Line Separacion1 
      BorderColor     =   &H00808080&
      Index           =   0
      X1              =   328
      X2              =   328
      Y1              =   8
      Y2              =   88
   End
   Begin VB.Label MapPest 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Mapa1"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   12
      Left            =   14340
      TabIndex        =   49
      Top             =   1080
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Label MapPest 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Mapa1"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   11
      Left            =   13575
      TabIndex        =   48
      Top             =   1080
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Label MapPest 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Mapa1"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   1
      Left            =   5925
      TabIndex        =   40
      Top             =   1080
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Label MapPest 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Mapa1"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   2
      Left            =   6690
      TabIndex        =   39
      Top             =   1080
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Label MapPest 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Mapa1"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   3
      Left            =   7455
      TabIndex        =   38
      Top             =   1080
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Label MapPest 
      Alignment       =   2  'Center
      BackColor       =   &H00C0FFC0&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Mapa1"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   4
      Left            =   8220
      TabIndex        =   37
      Top             =   1080
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Label MapPest 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Mapa1"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   5
      Left            =   8985
      TabIndex        =   36
      Top             =   1080
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Label MapPest 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Mapa1"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   6
      Left            =   9750
      TabIndex        =   35
      Top             =   1080
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Label MapPest 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Mapa1"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   7
      Left            =   10515
      TabIndex        =   34
      Top             =   1080
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Label MapPest 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Mapa1"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   8
      Left            =   11280
      TabIndex        =   33
      Top             =   1080
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Label MapPest 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Mapa1"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   9
      Left            =   12045
      TabIndex        =   32
      Top             =   1080
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Label MapPest 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Mapa1"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   0
      Left            =   5160
      TabIndex        =   31
      Top             =   1080
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Label MapPest 
      Alignment       =   2  'Center
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Mapa1"
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   10
      Left            =   12810
      TabIndex        =   30
      Top             =   1080
      Visible         =   0   'False
      Width           =   750
   End
   Begin VB.Shape MainViewShp 
      BackColor       =   &H000000FF&
      BorderColor     =   &H00C0C0C0&
      FillColor       =   &H00C0E0FF&
      Height          =   11565
      Left            =   4680
      Top             =   1440
      Width           =   17925
   End
   Begin VB.Menu FileMnu 
      Caption         =   "&Archivo"
      Begin VB.Menu mnuArchivoLine1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuNuevoMapa 
         Caption         =   "&Nuevo Mapa"
         Shortcut        =   ^N
      End
      Begin VB.Menu mnuAbrirMapa 
         Caption         =   "&Abrir Mapa"
         Shortcut        =   ^A
      End
      Begin VB.Menu mnuAdherir 
         Caption         =   "&Adherir mapa"
      End
      Begin VB.Menu mnuArchivoLine2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuReAbrirMapa 
         Caption         =   "&Re-Abrir Mapa"
      End
      Begin VB.Menu mnuArchivoLine3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuGuardarMapa 
         Caption         =   "&Guardar Mapa"
         Shortcut        =   ^G
      End
      Begin VB.Menu mnuGuardarMapaComo 
         Caption         =   "Guardar Mapa &como..."
      End
      Begin VB.Menu mnuArchivoLine5 
         Caption         =   "-"
      End
      Begin VB.Menu mnuGuardarTodo 
         Caption         =   "Renderizar Mapa Actual"
      End
      Begin VB.Menu mnuArchivoLine7 
         Caption         =   "-"
      End
      Begin VB.Menu mnuSalir 
         Caption         =   "&Salir"
      End
      Begin VB.Menu mnuArchivoLine6 
         Caption         =   "-"
      End
   End
   Begin VB.Menu mnuEdicion 
      Caption         =   "&Edición"
      Begin VB.Menu mnuComo 
         Caption         =   "¿ Como seleccionar ? ---- Mantener SHIFT y arrastrar el cursor."
         Enabled         =   0   'False
      End
      Begin VB.Menu mnuCortar 
         Caption         =   "C&ortar Selección"
         Shortcut        =   ^X
      End
      Begin VB.Menu mnuCopiar 
         Caption         =   "&Copiar Selección"
         Shortcut        =   ^C
      End
      Begin VB.Menu mnuLineEdicion02 
         Caption         =   "-"
      End
      Begin VB.Menu mnuMapaIzquierda 
         Caption         =   "&Pegar Mapa Izquierda"
         Shortcut        =   ^I
      End
      Begin VB.Menu mnuMapaDerecha 
         Caption         =   "&Pegar Mapa Derecha"
         Shortcut        =   ^Q
      End
      Begin VB.Menu mnuDerAbajo 
         Caption         =   "&Pegar Mapa Derecha Abajo"
         Shortcut        =   ^E
      End
      Begin VB.Menu mnuMapaAbajo 
         Caption         =   "&Pegar Mapa abajo"
         Shortcut        =   ^W
      End
      Begin VB.Menu mnuLineEdicion01 
         Caption         =   "-"
      End
      Begin VB.Menu mnuPegar 
         Caption         =   "&Pegar Selección"
         Shortcut        =   ^V
      End
      Begin VB.Menu mnuBloquearS 
         Caption         =   "&Bloquear Selección"
         Shortcut        =   ^B
      End
      Begin VB.Menu mnuRealizarOperacion 
         Caption         =   "&Realizar Operación en Selección"
         Shortcut        =   ^D
      End
      Begin VB.Menu mnuDeshacerPegado 
         Caption         =   "Deshacer P&egado de Selección"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuLineEdicion0 
         Caption         =   "-"
      End
      Begin VB.Menu mnuDeshacer 
         Caption         =   "&Deshacer"
         Shortcut        =   ^Z
      End
      Begin VB.Menu mnuUtilizarDeshacer 
         Caption         =   "&Utilizar Deshacer"
         Enabled         =   0   'False
      End
      Begin VB.Menu mnuInfoMap 
         Caption         =   "&Información del Mapa"
      End
      Begin VB.Menu mnuLineEdicion1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuInsertar 
         Caption         =   "&Insertar"
         Begin VB.Menu mnuInsertarTransladosAdyasentes 
            Caption         =   "&Translados a Mapas Adyasentes"
         End
         Begin VB.Menu mnuInsertarSuperficieAlAzar 
            Caption         =   "Superficie al &Azar"
         End
         Begin VB.Menu mnuInsertarSuperficieEnBordes 
            Caption         =   "Superficie en los &Bordes del Mapa"
         End
         Begin VB.Menu mnuInsertarSuperficieEnTodo 
            Caption         =   "Superficie en Todo el Mapa"
         End
         Begin VB.Menu mnuBloquearBordes 
            Caption         =   "Bloqueo en &Bordes del Mapa"
         End
         Begin VB.Menu mnuBloquearMapa 
            Caption         =   "Bloqueo en &Todo el Mapa"
         End
      End
      Begin VB.Menu mnuQuitar 
         Caption         =   "&Quitar"
         Begin VB.Menu mnuQuitarTranslados 
            Caption         =   "Todos los &Translados"
         End
         Begin VB.Menu mnuQuitarBloqueos 
            Caption         =   "Todos los &Bloqueos"
         End
         Begin VB.Menu mnuQuitarNPCs 
            Caption         =   "Todos los &NPC's"
         End
         Begin VB.Menu mnuQuitarNPCsHostiles 
            Caption         =   "Todos los NPC's &Hostiles"
         End
         Begin VB.Menu mnuQuitarObjetos 
            Caption         =   "Todos los &Objetos"
         End
         Begin VB.Menu mnuQuitarTriggers 
            Caption         =   "Todos los Tri&gger's"
         End
         Begin VB.Menu mnuQuitarSuperficieBordes 
            Caption         =   "Superficie de los B&ordes"
         End
         Begin VB.Menu mnuQuitarSuperficieDeCapa 
            Caption         =   "Superficie de la &Capa Seleccionada"
         End
         Begin VB.Menu mnuLineEdicion2 
            Caption         =   "Todos los arboles"
         End
         Begin VB.Menu mnuQuitarTODO 
            Caption         =   "TODO"
         End
      End
      Begin VB.Menu mnuLineEdicion3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFunciones 
         Caption         =   "&Funciones"
         Begin VB.Menu mnuQuitarFunciones 
            Caption         =   "&Quitar Funciones"
            Shortcut        =   {F4}
         End
         Begin VB.Menu mnuAutoQuitarFunciones 
            Caption         =   "Auto-&Quitar Funciones"
            Checked         =   -1  'True
         End
      End
      Begin VB.Menu mnuConfigAvanzada 
         Caption         =   "Configuracion A&vanzada de Superficie"
      End
      Begin VB.Menu mnuLineEdicion4 
         Caption         =   "-"
      End
      Begin VB.Menu mnuAutoCompletarSuperficies 
         Caption         =   "Auto-Completar &Superficies"
      End
      Begin VB.Menu mnuAutoCapturarSuperficie 
         Caption         =   "Auto-C&apturar información de la Superficie"
      End
      Begin VB.Menu mnuAutoCapturarTranslados 
         Caption         =   "Auto-&Capturar información de los Translados"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuAutoGuardarMapas 
         Caption         =   "Configuración de Auto-&Guardar Mapas"
      End
   End
   Begin VB.Menu mnuVer 
      Caption         =   "&Ver"
      Begin VB.Menu mnuCapas 
         Caption         =   "...&Capas"
         Begin VB.Menu mnuVerCapa1 
            Caption         =   "Capa &1 (Piso)"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuVerCapa2 
            Caption         =   "Capa &2 (costas, etc)"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuVerCapa3 
            Caption         =   "Capa &3 (arboles, etc)"
            Checked         =   -1  'True
         End
         Begin VB.Menu mnuVerCapa4 
            Caption         =   "Capa &4 (techos, etc)"
         End
      End
      Begin VB.Menu mnuVerTranslados 
         Caption         =   "...&Translados"
      End
      Begin VB.Menu mnuVerBloqueos 
         Caption         =   "...&Bloqueos"
      End
      Begin VB.Menu mnuVerNPCs 
         Caption         =   "...&NPC's"
      End
      Begin VB.Menu mnuVerObjetos 
         Caption         =   "...&Objetos"
      End
      Begin VB.Menu mnuVerTriggers 
         Caption         =   "...Tri&gger's"
      End
      Begin VB.Menu mnuVerGrilla 
         Caption         =   "...Gri&lla"
      End
      Begin VB.Menu mnuLinMostrar 
         Caption         =   "-"
      End
      Begin VB.Menu mnuVerAutomatico 
         Caption         =   "Control &Automaticamente"
         Checked         =   -1  'True
      End
   End
   Begin VB.Menu mnuPaneles 
      Caption         =   "&Paneles"
      Begin VB.Menu mnuSuperficie 
         Caption         =   "&Superficie"
         Shortcut        =   {F5}
      End
      Begin VB.Menu mnuTranslados 
         Caption         =   "&Translados"
         Shortcut        =   {F6}
      End
      Begin VB.Menu mnuBloquear 
         Caption         =   "&Bloquear"
         Shortcut        =   {F7}
      End
      Begin VB.Menu mnuNPCs 
         Caption         =   "&NPC's"
         Shortcut        =   {F8}
      End
      Begin VB.Menu mnuNPCsHostiles 
         Caption         =   "NPC's &Hostiles"
         Shortcut        =   {F9}
         Visible         =   0   'False
      End
      Begin VB.Menu mnuObjetos 
         Caption         =   "&Objetos"
         Shortcut        =   {F11}
      End
      Begin VB.Menu mnuTriggers 
         Caption         =   "Tri&gger's"
         Shortcut        =   {F12}
      End
      Begin VB.Menu mnuPanelesLine1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuQSuperficie 
         Caption         =   "Ocultar Superficie"
         Shortcut        =   +{F5}
      End
      Begin VB.Menu mnuQTranslados 
         Caption         =   "Ocultar Translados"
         Shortcut        =   +{F6}
      End
      Begin VB.Menu mnuQBloquear 
         Caption         =   "Ocultar Bloquear"
         Shortcut        =   +{F7}
      End
      Begin VB.Menu mnuQNPCs 
         Caption         =   "Ocultar NPC's"
         Shortcut        =   +{F8}
      End
      Begin VB.Menu mnuQNPCsHostiles 
         Caption         =   "Ocultar NPC's Hostiles"
         Shortcut        =   +{F9}
         Visible         =   0   'False
      End
      Begin VB.Menu mnuQObjetos 
         Caption         =   "Ocultar Objetos"
         Shortcut        =   +{F11}
      End
      Begin VB.Menu mnuQTriggers 
         Caption         =   "Ocultar Trigger's"
         Shortcut        =   +{F12}
      End
      Begin VB.Menu mnuFuncionesLine1 
         Caption         =   "-"
      End
   End
   Begin VB.Menu mnuOpciones 
      Caption         =   "&Opciones"
      Begin VB.Menu mnuInformes 
         Caption         =   "&Informes"
      End
      Begin VB.Menu mnuActualizarIndices 
         Caption         =   "&Actualizar Indices de..."
         Begin VB.Menu mnuActualizarSuperficies 
            Caption         =   "&Superficies"
         End
         Begin VB.Menu mnuActualizarNPCs 
            Caption         =   "&NPC's"
         End
         Begin VB.Menu mnuActualizarObjs 
            Caption         =   "&Objetos"
         End
         Begin VB.Menu mnuActualizarTriggers 
            Caption         =   "&Trigger's"
         End
         Begin VB.Menu mnuActualizarCabezas 
            Caption         =   "C&abezas"
         End
         Begin VB.Menu mnuActualizarCuerpos 
            Caption         =   "C&uerpos"
         End
         Begin VB.Menu mnuActualizarGraficos 
            Caption         =   "&Graficos"
         End
      End
      Begin VB.Menu mnuModoCaminata 
         Caption         =   "Modalidad &Caminata"
      End
      Begin VB.Menu mnuGRHaBMP 
         Caption         =   "&GRH => BMP"
      End
      Begin VB.Menu mnuLine1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuOptimizar 
         Caption         =   "Optimi&zar Mapa"
         Shortcut        =   ^O
      End
      Begin VB.Menu mnuLine2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuRecargarIndices 
         Caption         =   "&Rercargar Indices"
      End
      Begin VB.Menu mnuGuardarUltimaConfig 
         Caption         =   "&Guardar Ultima Configuración"
      End
   End
   Begin VB.Menu mnuAyuda 
      Caption         =   "Ay&uda"
      Begin VB.Menu mnuManual 
         Caption         =   "&Manual"
         Shortcut        =   {F1}
      End
      Begin VB.Menu mnuLineAyuda1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuAcercaDe 
         Caption         =   "&Acerca de..."
      End
   End
   Begin VB.Menu mnuObjSc 
      Caption         =   "mnuObjSc"
      Visible         =   0   'False
      Begin VB.Menu mnuConfigObjTrans 
         Caption         =   "&Utilizar como Objeto de Translados"
      End
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'**************************************************************
'This program is free software; you can redistribute it and/or modify
'it under the terms of the GNU General Public License as published by
'the Free Software Foundation; either version 2 of the License, or
'any later version.
'
'This program is distributed in the hope that it will be useful,
'but WITHOUT ANY WARRANTY; without even the implied warranty of
'MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
'GNU General Public License for more details.
'
'You should have received a copy of the GNU General Public License
'along with this program; if not, write to the Free Software
'Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
'
'Argentum Online is based on Baronsoft's VB6 Online RPG
'You can contact the original creator of ORE at aaron@baronsoft.com
'for more information about ORE please visit http://www.baronsoft.com/
'**************************************************************
Option Explicit
Public bSelectSurface           As Boolean


Private Sub PonerAlAzar(ByVal n As Integer, T As Byte)
    '*************************************************
    'Author: Unkwown
    'Last modified: 20/05/06 by GS
    '*************************************************
Dim objindex                    As Long
Dim NPCIndex                    As Long
Dim X, Y, i
Dim Head                        As Integer
Dim Body                        As Integer
Dim Heading                     As Byte

    Exit Sub

    'Dim Leer As New clsIniReader
    i = n

    modEdicion.Deshacer_Add "Aplicar " & IIf(T = 0, "Objetos", "NPCs") & " al Azar"    ' Hago deshacer

    Do While i > 0
        X = CInt(RandomNumber(XMinMapSize, XMaxMapSize - 1))
        Y = CInt(RandomNumber(YMinMapSize, YMaxMapSize - 1))

        Select Case T
            Case 0
                If MapData(X, Y).OBJInfo.objindex = 0 Then
                    i = i - 1
                    If cInsertarBloqueo.Value = True Then
                        MapData(X, Y).Blocked = 1
                    Else
                        MapData(X, Y).Blocked = 0
                    End If
                    If cNumFunc(2).Text > 0 Then
                        objindex = cNumFunc(2).Text
                        InitGrh MapData(X, Y).ObjGrh, ObjData(objindex).GrhIndex
                        MapData(X, Y).OBJInfo.objindex = objindex
                        MapData(X, Y).OBJInfo.Amount = Val(cCantFunc(2).Text)
                        Select Case ObjData(objindex).ObjType    ' GS
                            Case 4, 8, 10, 22    ' Arboles, Carteles, Foros, Yacimientos
                                MapData(X, Y).Graphic(3) = MapData(X, Y).ObjGrh
                        End Select
                    End If
                End If
            Case 1
                If MapData(X, Y).Blocked = 0 Then
                    i = i - 1
                    If cNumFunc(T - 1).Text > 0 Then
                        NPCIndex = cNumFunc(T - 1).Text
                        Body = NpcData(NPCIndex).Body
                        Head = NpcData(NPCIndex).Head
                        Heading = NpcData(NPCIndex).Heading
                        Call MakeChar(NextOpenChar(), Body, Head, Heading, CInt(X), CInt(Y))
                        MapData(X, Y).NPCIndex = NPCIndex
                    End If
                End If
            Case 2
                If MapData(X, Y).Blocked = 0 Then
                    i = i - 1
                    If cNumFunc(T - 1).Text >= 0 Then
                        NPCIndex = cNumFunc(T - 1).Text
                        Body = NpcData(NPCIndex).Body
                        Head = NpcData(NPCIndex).Head
                        Heading = NpcData(NPCIndex).Heading
                        Call MakeChar(NextOpenChar(), Body, Head, Heading, CInt(X), CInt(Y))
                        MapData(X, Y).NPCIndex = NPCIndex
                    End If
                End If
        End Select
        DoEvents
    Loop
End Sub

Private Sub cAgregarFuncalAzar_Click(index As Integer)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************

    On Error GoTo cAgregarFuncalAzar_Click_Error

    Exit Sub

10  If IsNumeric(cCantFunc(index).Text) = False Or cCantFunc(index).Text > 200 Then
20      MsgBox "El Valor de Cantidad introducido no es soportado!" & vbCrLf & "El valor maximo es 200.", vbCritical
30      Exit Sub
40  End If
50  cAgregarFuncalAzar(index).Enabled = False
60  Call PonerAlAzar(CInt(cCantFunc(index).Text), 1 + (IIf(index = 2, -1, index)))
70  cAgregarFuncalAzar(index).Enabled = True

    On Error GoTo 0
    Exit Sub

cAgregarFuncalAzar_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento cAgregarFuncalAzar_Click de Formulario frmMain línea: " & Erl())

End Sub

Private Sub cCantFunc_Change(index As Integer)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************

    On Error GoTo cCantFunc_Change_Error

10  If Val(cCantFunc(index)) < 1 Then
20      cCantFunc(index).Text = 1
30  End If
40  If Val(cCantFunc(index)) > 10000 Then
50      cCantFunc(index).Text = 10000
60  End If

    On Error GoTo 0
    Exit Sub

cCantFunc_Change_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento cCantFunc_Change de Formulario frmMain línea: " & Erl())
End Sub

Private Sub cCapas_Change()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 31/05/06
    '*************************************************
    If Val(cCapas.Text) < 1 Then
        cCapas.Text = 1
    End If
    If Val(cCapas.Text) > 4 Then
        cCapas.Text = 4
    End If
    cCapas.Tag = vbNullString
End Sub

Private Sub cCapas_KeyPress(KeyAscii As Integer)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    If IsNumeric(Chr(KeyAscii)) = False Then KeyAscii = 0
End Sub

Private Sub cFiltro_GotFocus(index As Integer)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    HotKeysAllow = False
End Sub

Private Sub cFiltro_KeyPress(index As Integer, KeyAscii As Integer)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    If KeyAscii = 13 Then
        Call Filtrar(index)
    End If
End Sub

Private Sub cFiltro_LostFocus(index As Integer)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    HotKeysAllow = True
End Sub

Private Sub cGrh_KeyPress(KeyAscii As Integer)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************

    On Error GoTo Fallo
    If KeyAscii = 13 Then
        Call fPreviewGrh(cGrh.Text)
        If frmMain.cGrh.ListCount > 5 Then
            frmMain.cGrh.RemoveItem 0
        End If
        frmMain.cGrh.AddItem frmMain.cGrh.Text
    End If
    Exit Sub
Fallo:
    cGrh.Text = 1

End Sub


Private Sub chkSeleccionarSuperficie_Click()
    bSelectSurface = CBool(chkSeleccionarSuperficie.Value)
    If bSelectSurface Then
        MsgBox "Ahora con clic derecho en el mapa, te seleccionará la superficie que corresponda en el menú de superficies."
    End If
End Sub

Private Sub cInsertarFunc_Click(index As Integer)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Exit Sub
    If cInsertarFunc(index).Value = True Then
        cQuitarFunc(index).Enabled = False
        cAgregarFuncalAzar(index).Enabled = False
        If index <> 2 Then cCantFunc(index).Enabled = False
        Call modPaneles.EstSelectPanel((index) + 3, True)
    Else
        cQuitarFunc(index).Enabled = True
        cAgregarFuncalAzar(index).Enabled = True
        If index <> 2 Then cCantFunc(index).Enabled = True
        Call modPaneles.EstSelectPanel((index) + 3, False)
    End If
End Sub

Private Sub cInsertarTrans_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 22/05/06
    '*************************************************
    If cInsertarTrans.Value = True Then
        cQuitarTrans.Enabled = False
        Call modPaneles.EstSelectPanel(1, True)
    Else
        cQuitarTrans.Enabled = True
        Call modPaneles.EstSelectPanel(1, False)
    End If
End Sub

Private Sub cInsertarTrigger_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    If cInsertarTrigger.Value = True Then
        cQuitarTrigger.Enabled = False
        Call modPaneles.EstSelectPanel(6, True)
    Else
        cQuitarTrigger.Enabled = True
        Call modPaneles.EstSelectPanel(6, False)
    End If
End Sub


Private Sub cmdDM_Click(index As Integer)
    frmConfigSup.DespMosaic.Value = vbChecked
    Select Case index
        Case 0                 'A

            frmConfigSup.DMLargo.Text = Val(frmConfigSup.DMLargo.Text) + 1
        Case 1                 '<
            frmConfigSup.DMAncho.Text = Val(frmConfigSup.DMAncho.Text) + 1
        Case 2                 '>
            frmConfigSup.DMAncho.Text = Val(frmConfigSup.DMAncho.Text) - 1
        Case 3                 'V
            frmConfigSup.DMLargo.Text = Val(frmConfigSup.DMLargo.Text) - 1
        Case 4                 '0
            frmConfigSup.DMAncho.Text = 0
            frmConfigSup.DMLargo.Text = 0
    End Select
End Sub

Private Sub cmdInformacionDelMapa_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    frmMapInfo.Show
    frmMapInfo.Visible = True
End Sub

Private Sub cmdQuitarFunciones_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Call mnuQuitarFunciones_Click
End Sub



Private Sub Command5_Click()

End Sub

Private Sub Command1_Click()
    On Error GoTo ErrHandler

    If FileExist(Dialog.FileName, vbArchive) = False Then Exit Sub
    If MapInfo(CurMap).Changed = 1 Then
        If MsgBox(MSGMod, vbExclamation + vbYesNo) = vbYes Then
            modMapIO.GuardarMapa Dialog.FileName
        End If
    End If
    Dialog.FileName = Dir(App.Path & "\Maps\mapa1.map")    'ReyarB
    Call modMapIO.NuevoMapa
    modMapIO.AbrirMapa Dialog.FileName
    DoEvents
    mnuReAbrirMapa.Enabled = True
    EngineRun = True
    Exit Sub
ErrHandler:
End Sub

Private Sub Command2_Click()
    On Error GoTo ErrHandler

    If FileExist(Dialog.FileName, vbArchive) = False Then Exit Sub
    If MapInfo(CurMap).Changed = 1 Then
        If MsgBox(MSGMod, vbExclamation + vbYesNo) = vbYes Then
            modMapIO.GuardarMapa Dialog.FileName
        End If
    End If
    Dialog.FileName = Dir(App.Path & "\Maps\mapa2.map")    'ReyarB
    Call modMapIO.NuevoMapa
    modMapIO.AbrirMapa Dialog.FileName
    DoEvents
    mnuReAbrirMapa.Enabled = True
    EngineRun = True
    Exit Sub
ErrHandler:
End Sub

Private Sub Command3_Click()
    On Error GoTo ErrHandler


    If FileExist(Dialog.FileName, vbArchive) = False Then Exit Sub
    If MapInfo(CurMap).Changed = 1 Then
        If MsgBox(MSGMod, vbExclamation + vbYesNo) = vbYes Then
            modMapIO.GuardarMapa Dialog.FileName
        End If
    End If
    Dialog.FileName = Dir(App.Path & "\Maps\mapa3.map")    'ReyarB
    Call modMapIO.NuevoMapa
    modMapIO.AbrirMapa Dialog.FileName
    DoEvents
    mnuReAbrirMapa.Enabled = True
    EngineRun = True
    Exit Sub
ErrHandler:
End Sub

Private Sub cUnionManual_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    cInsertarTrans.Value = (cUnionManual.Value = True)
    Call cInsertarTrans_Click
End Sub

Private Sub cverBloqueos_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    mnuVerBloqueos.Checked = cVerBloqueos.Value
End Sub

Private Sub cverTriggers_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    mnuVerTriggers.Checked = cVerTriggers.Value
End Sub

Private Sub cNumFunc_KeyPress(index As Integer, KeyAscii As Integer)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************

    On Error GoTo cNumFunc_KeyPress_Error

10  If KeyAscii = 13 Then
        Dim Cont                As String
20      Cont = frmMain.cNumFunc(index).Text
30      Call cNumFunc_LostFocus(index)
40      If Cont <> frmMain.cNumFunc(index).Text Then Exit Sub
50      If frmMain.cNumFunc(index).ListCount > 5 Then
60          frmMain.cNumFunc(index).RemoveItem 0
70      End If
80      frmMain.cNumFunc(index).AddItem frmMain.cNumFunc(index).Text
90      Exit Sub
100 ElseIf KeyAscii = 8 Then

110 ElseIf IsNumeric(Chr(KeyAscii)) = False Then
120     KeyAscii = 0
130     Exit Sub
140 End If

    On Error GoTo 0
    Exit Sub

cNumFunc_KeyPress_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento cNumFunc_KeyPress de Formulario frmMain línea: " & Erl())

End Sub

Private Sub cNumFunc_KeyUp(index As Integer, KeyCode As Integer, Shift As Integer)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************

    On Error GoTo cNumFunc_KeyUp_Error

10  If cNumFunc(index).Text = vbNullString Then
20      frmMain.cNumFunc(index).Text = IIf(index = 1, 500, 1)
30  End If

    On Error GoTo 0
    Exit Sub

cNumFunc_KeyUp_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento cNumFunc_KeyUp de Formulario frmMain línea: " & Erl())
End Sub

Private Sub cNumFunc_LostFocus(index As Integer)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************

    On Error GoTo cNumFunc_LostFocus_Error

    '10  If index = 0 Then
    '20      If frmMain.cNumFunc(index).Text > 499 Or frmMain.cNumFunc(index).Text < 1 Then
    '30          frmMain.cNumFunc(index).Text = 1
    '40      End If
    '50  ElseIf index = 1 Then
    '60      If frmMain.cNumFunc(index).Text < 500 Or frmMain.cNumFunc(index).Text > 32000 Then
    '70          frmMain.cNumFunc(index).Text = 500
    '80      End If

90  If index = 2 Then
100     If frmMain.cNumFunc(index).Text < 1 Or frmMain.cNumFunc(index).Text > 32000 Then
110         frmMain.cNumFunc(index).Text = 1
120     End If
130 End If

    On Error GoTo 0
    Exit Sub

cNumFunc_LostFocus_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento cNumFunc_LostFocus de Formulario frmMain línea: " & Erl())
End Sub

Private Sub cInsertarBloqueo_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 29/05/06
    '*************************************************
    cInsertarBloqueo.Tag = vbNullString
    If cInsertarBloqueo.Value = True Then
        cQuitarBloqueo.Enabled = False
        Call modPaneles.EstSelectPanel(2, True)
    Else
        cQuitarBloqueo.Enabled = True
        Call modPaneles.EstSelectPanel(2, False)
    End If
End Sub

Private Sub cQuitarBloqueo_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    cInsertarBloqueo.Tag = vbNullString
    If cQuitarBloqueo.Value = True Then
        cInsertarBloqueo.Enabled = False
        Call modPaneles.EstSelectPanel(2, True)
    Else
        cInsertarBloqueo.Enabled = True
        Call modPaneles.EstSelectPanel(2, False)
    End If
End Sub

Private Sub cQuitarEnEstaCapa_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    If cQuitarEnEstaCapa.Value = True Then
        lListado(0).Enabled = False
        cFiltro(0).Enabled = False
        cGrh.Enabled = False
        cSeleccionarSuperficie.Enabled = False
        cQuitarEnTodasLasCapas.Enabled = False
        Call modPaneles.EstSelectPanel(0, True)
    Else
        lListado(0).Enabled = True
        cFiltro(0).Enabled = True
        cGrh.Enabled = True
        cSeleccionarSuperficie.Enabled = True
        cQuitarEnTodasLasCapas.Enabled = True
        Call modPaneles.EstSelectPanel(0, False)
    End If
End Sub

Private Sub cQuitarEnTodasLasCapas_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    If cQuitarEnTodasLasCapas.Value = True Then
        cCapas.Enabled = False
        lListado(0).Enabled = False
        cFiltro(0).Enabled = False
        cGrh.Enabled = False
        cSeleccionarSuperficie.Enabled = False
        cQuitarEnEstaCapa.Enabled = False
        Call modPaneles.EstSelectPanel(0, True)
    Else
        cCapas.Enabled = True
        lListado(0).Enabled = True
        cFiltro(0).Enabled = True
        cGrh.Enabled = True
        cSeleccionarSuperficie.Enabled = True
        cQuitarEnEstaCapa.Enabled = True
        Call modPaneles.EstSelectPanel(0, False)
    End If
End Sub


Private Sub cQuitarFunc_Click(index As Integer)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    If cQuitarFunc(index).Value = True Then
        cInsertarFunc(index).Enabled = False
        cAgregarFuncalAzar(index).Enabled = False
        cCantFunc(index).Enabled = False
        cNumFunc(index).Enabled = False
        cFiltro((index) + 1).Enabled = False
        lListado((index) + 1).Enabled = False
        Call modPaneles.EstSelectPanel((index) + 3, True)
    Else
        cInsertarFunc(index).Enabled = True
        cAgregarFuncalAzar(index).Enabled = True
        cCantFunc(index).Enabled = True
        cNumFunc(index).Enabled = True
        cFiltro((index) + 1).Enabled = True
        lListado((index) + 1).Enabled = True
        Call modPaneles.EstSelectPanel((index) + 3, False)
    End If
End Sub

Private Sub cQuitarTrans_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    If cQuitarTrans.Value = True Then
        cInsertarTransOBJ.Enabled = False
        cInsertarTrans.Enabled = False
        cUnionManual.Enabled = False
        cUnionAuto.Enabled = False
        tTMapa.Enabled = False
        tTX.Enabled = False
        tTY.Enabled = False
        mnuInsertarTransladosAdyasentes.Enabled = False
        Call modPaneles.EstSelectPanel(1, True)
    Else
        tTMapa.Enabled = True
        tTX.Enabled = True
        tTY.Enabled = True
        cUnionAuto.Enabled = True
        cUnionManual.Enabled = True
        cInsertarTrans.Enabled = True
        cInsertarTransOBJ.Enabled = True
        mnuInsertarTransladosAdyasentes.Enabled = True
        Call modPaneles.EstSelectPanel(1, False)
    End If
End Sub

Private Sub cQuitarTrigger_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    If cQuitarTrigger.Value = True Then
        lListado(4).Enabled = False
        cInsertarTrigger.Enabled = False
        Call modPaneles.EstSelectPanel(6, True)
    Else
        lListado(4).Enabled = True
        cInsertarTrigger.Enabled = True
        Call modPaneles.EstSelectPanel(6, False)
    End If
End Sub

Private Sub cSeleccionarSuperficie_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    If cSeleccionarSuperficie.Value = True Then
        cQuitarEnTodasLasCapas.Enabled = False
        cQuitarEnEstaCapa.Enabled = False
        Call modPaneles.EstSelectPanel(0, True)
    Else
        cQuitarEnTodasLasCapas.Enabled = True
        cQuitarEnEstaCapa.Enabled = True
        Call modPaneles.EstSelectPanel(0, False)
    End If
End Sub

Private Sub cUnionAuto_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    frmUnionAdyacente.Show
End Sub

Private Sub Form_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Me.SetFocus

End Sub

Private Sub Form_DblClick()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 28/05/06
    '*************************************************
    'Dim tX As Integer
    'Dim tY As Integer

    If Not MapaCargado Then Exit Sub

    If SobreX > 0 And SobreY > 0 Then
        DobleClick Val(SobreX), Val(SobreY)
    End If
End Sub

Private Sub Form_KeyPress(KeyAscii As Integer)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 24/11/08
    '*************************************************
    ' HotKeys
    If HotKeysAllow = False Then Exit Sub

    Select Case UCase(Chr(KeyAscii))
        Case "S"               ' Activa/Desactiva Insertar Superficie
            cSeleccionarSuperficie.Value = (cSeleccionarSuperficie.Value = False)
            Call cSeleccionarSuperficie_Click
        Case "T"               ' Activa/Desactiva Insertar Translados
            cInsertarTrans.Value = (cInsertarTrans.Value = False)
            Call cInsertarTrans_Click
        Case "B"               ' Activa/Desactiva Insertar Bloqueos
            cInsertarBloqueo.Value = (cInsertarBloqueo.Value = False)
            Call cInsertarBloqueo_Click
        Case "N"               ' Activa/Desactiva Insertar NPCs
            cInsertarFunc(0).Value = (cInsertarFunc(0).Value = False)
            Call cInsertarFunc_Click(0)
            ' Case "H" ' Activa/Desactiva Insertar NPCs Hostiles
            '     cInsertarFunc(1).value = (cInsertarFunc(1).value = False)
            '     Call cInsertarFunc_Click(1)
        Case "O"               ' Activa/Desactiva Insertar Objetos
            cInsertarFunc(2).Value = (cInsertarFunc(2).Value = False)
            Call cInsertarFunc_Click(2)
        Case "G"               ' Activa/Desactiva Insertar Triggers
            cInsertarTrigger.Value = (cInsertarTrigger.Value = False)
            Call cInsertarTrigger_Click
        Case "Q"               ' Quitar Funciones
            Call mnuQuitarFunciones_Click
    End Select
End Sub




Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)

    If Shift = vbCtrlMask Then
        If Seleccionando Then
            If KeyCode = vbKeyC Then CopiarSeleccion
            If KeyCode = vbKeyX Then CortarSeleccion
            If KeyCode = vbKeyB Then BlockearSeleccion
            If KeyCode = vbKeyD Then AccionSeleccion
            '    Else
            If KeyCode = vbKeyS Then DePegar    ' GS
            If KeyCode = vbKeyV Then PegarSeleccion
        End If
    End If

End Sub

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    'If Seleccionando Then CopiarSeleccion
End Sub

Private Sub lListado_Click(index As Integer)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 29/05/06
    '*************************************************

    On Error GoTo lListado_Click_Error

10  If HotKeysAllow = False Then
20      lListado(index).Tag = lListado(index).listIndex
30      Select Case index
            Case 0
40              cGrh.Text = DameGrhIndex(ReadField(2, lListado(index).Text, Asc("#")))
50              If SupData(Val(ReadField(2, lListado(index).Text, Asc("#")))).Capa <> 0 Then
60                  If LenB(ReadField(2, lListado(index).Text, Asc("#"))) = 0 Then cCapas.Tag = cCapas.Text
70                  cCapas.Text = SupData(ReadField(2, lListado(index).Text, Asc("#"))).Capa
80              Else
90                  If LenB(cCapas.Tag) <> 0 Then
100                     cCapas.Text = cCapas.Tag
110                     cCapas.Tag = vbNullString
120                 End If
130             End If
140             If SupData(Val(ReadField(2, lListado(index).Text, Asc("#")))).Block = True Then
150                 If LenB(cInsertarBloqueo.Tag) = 0 Then cInsertarBloqueo.Tag = IIf(cInsertarBloqueo.Value = True, 1, 0)
160                 cInsertarBloqueo.Value = True
170                 Call cInsertarBloqueo_Click
180             Else
190                 If LenB(cInsertarBloqueo.Tag) <> 0 Then
200                     cInsertarBloqueo.Value = IIf(Val(cInsertarBloqueo.Tag) = 1, True, False)
210                     cInsertarBloqueo.Tag = vbNullString
220                     Call cInsertarBloqueo_Click
230                 End If
240             End If
250             Call fPreviewGrh(cGrh.Text)
                Call modPaneles.VistaPreviaDeSup
260         Case 1
270             cNumFunc(0).Text = ReadField(2, lListado(index).Text, Asc("#"))
280         Case 2
290             cNumFunc(1).Text = ReadField(2, lListado(index).Text, Asc("#"))
300         Case 3
                frmConfigSup.mLargo.Text = 1
                frmConfigSup.mAncho.Text = 1
                cNumFunc(2).Text = ReadField(2, lListado(index).Text, Asc("#"))
                fPreviewGrh (ObjData(Val(ReadField(2, lListado(index).Text, Asc("#")))).GrhIndex)
                Call modPaneles.VistaPreviaDeSup
310
320     End Select
330 Else
        '          Debug.Print lListado(index).Tag
        If Val(lListado(index).Tag) < lListado(index).ListCount Then
340         lListado(index).listIndex = Val(lListado(index).Tag)
        End If
350 End If

    On Error GoTo 0
    Exit Sub

lListado_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento lListado_Click de Formulario frmMain línea: " & Erl())

End Sub

Private Sub lListado_MouseDown(index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 29/05/06
    '*************************************************
    If index = 3 And Button = 2 Then
        If lListado(3).listIndex > -1 Then Me.PopupMenu mnuObjSc
    End If
End Sub

Private Sub lListado_MouseMove(index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 22/05/06
    '*************************************************

    On Error GoTo lListado_MouseMove_Error

10  HotKeysAllow = False

    On Error GoTo 0
    Exit Sub

lListado_MouseMove_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento lListado_MouseMove de Formulario frmMain línea: " & Erl())
End Sub

Private Sub LvBOpcion_Click(index As Integer)
    Select Case index
        Case 0
            cVerBloqueos.Value = (cVerBloqueos.Value = False)
            mnuVerBloqueos.Checked = cVerBloqueos.Value
        Case 1
            mnuVerTranslados.Checked = (mnuVerTranslados.Checked = False)
        Case 2
            mnuVerObjetos.Checked = (mnuVerObjetos.Checked = False)
        Case 3
            cVerTriggers.Value = (cVerTriggers.Value = False)
            mnuVerTriggers.Checked = cVerTriggers.Value
        Case 4
            mnuVerCapa1.Checked = (mnuVerCapa1.Checked = False)
        Case 5
            mnuVerCapa2.Checked = (mnuVerCapa2.Checked = False)
        Case 6
            mnuVerCapa3.Checked = (mnuVerCapa3.Checked = False)
        Case 7
            mnuVerCapa4.Checked = (mnuVerCapa4.Checked = False)
    End Select
End Sub

Public Sub MapPest_Click(index As Integer)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************

    Debug.Print "Index: " & index

    If (index + NumMap_Save - 4) <> NumMap_Save Then
        Dialog.CancelError = True
        On Error GoTo ErrHandler
        Dialog.FileName = PATH_Save & NameMap_Save & (index + NumMap_Save - 4) & ".map"
        If MapInfo(CurMap).Changed = 1 Then
            If MsgBox(MSGMod, vbExclamation + vbYesNo) = vbYes Then
                modMapIO.GuardarMapa Dialog.FileName
            End If
        End If
        'Call modMapIO.NuevoMapa
        DoEvents
        modMapIO.AbrirMapa Dialog.FileName
        EngineRun = True
        Exit Sub
    End If

ErrHandler:
    MsgBox err.Description

    'Reference=*\G{00000200-0000-0010-8000-00AA006D2EA4}#2.0#0#C:\Program Files (x86)\Common Files\System\ado\msado20.tlb#Microsoft ActiveX Data Objects 2.0 Library
End Sub

Private Sub mnuActualizarCabezas_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 29/05/06
    '*************************************************
    Call modIndices.CargarIndicesDeCabezas
End Sub

Private Sub mnuActualizarCuerpos_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 29/05/06
    '*************************************************
    Call modIndices.CargarIndicesDeCuerpos
End Sub

Private Sub mnuActualizarGraficos_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 29/05/06
    '*************************************************
    'Call modIndices.CargarIndicesDeGraficos
    LoadGrhData
End Sub

Private Sub mnuActualizarSuperficies_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Call modIndices.CargarIndicesSuperficie
End Sub

Private Sub mnuAbrirMapa_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Dialog.CancelError = True
    On Error GoTo ErrHandler

    DeseaGuardarMapa Dialog.FileName

    ObtenerNombreArchivo False

    If Len(Dialog.FileName) < 3 Then Exit Sub

    If WalkMode = True Then
        Call modGeneral.ToggleWalkMode
    End If

    Call modMapIO.NuevoMapa
    modMapIO.AbrirMapa Dialog.FileName
    DoEvents
    mnuReAbrirMapa.Enabled = True
    EngineRun = True

    Exit Sub
ErrHandler:
End Sub

Private Sub mnuacercade_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    frmAbout.Show
End Sub



Private Sub mnuActualizarNPCs_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Call modIndices.CargarIndicesNPC
End Sub

Private Sub mnuActualizarObjs_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Call modIndices.CargarIndicesOBJ
End Sub

Private Sub mnuActualizarTriggers_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Call modIndices.CargarIndicesTriggers
End Sub

Private Sub mnuAdherir_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Dialog.CancelError = True
    On Error GoTo ErrHandler

    ObtenerNombreArchivo False

    If Len(Dialog.FileName) < 3 Then Exit Sub

    MapaV2_Cargar_Seccion Dialog.FileName
    DoEvents

    Exit Sub
ErrHandler:
End Sub

'Private Sub mnuAdherirMundo_Click()
'    RenderToPicture 2, True, XMinMapSize, YMinMapSize, XMaxMapSize, YMaxMapSize, "Test"
'End Sub

Private Sub mnuAutoCapturarTranslados_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 28/05/06
    '*************************************************
    mnuAutoCapturarTranslados.Checked = (mnuAutoCapturarTranslados.Checked = False)
End Sub

Private Sub mnuAutoCapturarSuperficie_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 28/05/06
    '*************************************************
    mnuAutoCapturarSuperficie.Checked = (mnuAutoCapturarSuperficie.Checked = False)

End Sub

Private Sub mnuAutoCompletarSuperficies_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    mnuAutoCompletarSuperficies.Checked = (mnuAutoCompletarSuperficies.Checked = False)

End Sub

Private Sub mnuAutoGuardarMapas_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    frmAutoGuardarMapa.Show
End Sub

Private Sub mnuAutoQuitarFunciones_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    mnuAutoQuitarFunciones.Checked = (mnuAutoQuitarFunciones.Checked = False)

End Sub

Private Sub mnuBloquear_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
Dim i                           As Byte
    For i = 0 To 6
        If i <> 2 Then
            frmMain.SelectPanel(i).Value = False
            Call VerFuncion(i, False)
        End If
    Next

    modPaneles.VerFuncion 2, True
End Sub

Private Sub mnuBloquearBordes_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Call modEdicion.Bloquear_Bordes
End Sub

Private Sub mnuBloquearMapa_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Call modEdicion.Bloqueo_Todo(1)
End Sub

Private Sub mnuBloquearS_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 01/11/08
    '*************************************************
    Call modEdicion.Deshacer_Add("Bloquear Selección")
    Call BlockearSeleccion
End Sub

Private Sub mnuConfigAvanzada_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    frmConfigSup.Show
End Sub

Private Sub mnuConfigObjTrans_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 29/05/06
    '*************************************************
    Cfg_TrOBJ = cNumFunc(2).Text
End Sub

Private Sub mnuCopiar_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 01/11/08
    '*************************************************
    Call CopiarSeleccion
End Sub

Private Sub mnuCortar_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 01/11/08
    '*************************************************
    Call modEdicion.Deshacer_Add("Cortar Selección")
    Call CortarSeleccion
End Sub

Private Sub mnuDerAbajo_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 01/11/08
    '*************************************************
    Call modEdicion.Deshacer_Add("Pegar Selección")
    Call PegarSeleccionDerechaAbajo
End Sub

Private Sub mnuDeshacer_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 15/10/06
    '*************************************************
    Call modEdicion.Deshacer_Recover
End Sub

Private Sub mnuDeshacerPegado_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 01/11/08
    '*************************************************
    Call modEdicion.Deshacer_Add("Deshacer Pegado de Selección")
    Call DePegar
End Sub

Private Sub mnuGRHaBMP_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 01/11/08
    '*************************************************
    frmGRHaBMP.Show
End Sub

'Private Sub mnuGuardarcomoBMP_Click()
''*************************************************
''Author: Salvito
''Last modified: 01/05/2008 - ^[GS]^
''*************************************************
'Dim Ratio                       As Single
'    Ratio = CSng(Val(InputBox("En que escala queres Renderizar? Entre 1 y 100.", "Elegi Escala", "1")))
'    If Ratio < 1 Then Ratio = 1
'    If Ratio >= 1 And Ratio <= 100 Then
'        RenderToPicture Ratio, True
'    End If
'End Sub

'Private Sub mnuGuardarcomoJPG_Click()
''*************************************************
''Author: Salvito
''Last modified: 01/05/2008 - ^[GS]^
''*************************************************
'Dim Ratio                       As Single
'    Ratio = CSng(Val(InputBox("En que escala queres Renderizar? Entre 1 y 20.", "Elegi Escala", "1")))
'    If Ratio < 1 Then Ratio = 1
'    If Ratio >= 1 And Ratio <= 20 Then
'        RenderToPicture Ratio, False
'    End If
'End Sub

Private Sub mnuGuardarMapa_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    modMapIO.GuardarMapa Dialog.FileName
End Sub

Private Sub mnuGuardarMapaComo_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    modMapIO.GuardarMapa
End Sub

Private Sub mnuGuardarTodo_Click()

Dim X                           As Integer
Dim Y                           As Integer
Dim i                           As Integer
Dim sTmpPath                    As String

    sTmpPath = Dialog.FileName

    If Len(sTmpPath) > 0 Then
        If InStrB(1, UCase$(sTmpPath), UCase$(Dialog.FileTitle), vbBinaryCompare) > 0 Then
            sTmpPath = Replace(UCase$(sTmpPath), UCase$(Dialog.FileTitle), "")
        End If
    End If

    For X = 0 To 11
        For Y = 0 To 11
            i = i + 1
            RenderToPicture 2, True, X * 100 + 1, Y * 100 + 1, X * 100 + 100, Y * 100 + 100, CStr(i), sTmpPath
        Next Y
    Next X

    Call Shell((App.Path & "\Crear Mega Mapa.exe " & CurMap & "-" & sTmpPath), (vbNormalFocus))

End Sub

Private Sub mnuGuardarUltimaConfig_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 23/05/06
    '*************************************************
    mnuGuardarUltimaConfig.Checked = (mnuGuardarUltimaConfig.Checked = False)
End Sub

Private Sub mnuInfoMap_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    frmMapInfo.Show
    frmMapInfo.Visible = True
End Sub

Private Sub mnuInformes_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    frmInformes.Show
End Sub

Private Sub mnuInsertarSuperficieAlAzar_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Call modEdicion.Superficie_Azar
End Sub

Private Sub mnuInsertarSuperficieEnBordes_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Call modEdicion.Superficie_Bordes
End Sub

Private Sub mnuInsertarSuperficieEnTodo_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Call modEdicion.Superficie_Todo
End Sub

Private Sub mnuInsertarTransladosAdyasentes_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    frmUnionAdyacente.Show
End Sub

Private Sub mnuLineEdicion2_Click()
Dim tX                          As Long
Dim tY                          As Long
Dim Count                       As Long
    For tX = 1 To XMaxMapSize
        For tY = 1 To YMaxMapSize
            If ObjData(MapData(tX, tY).OBJInfo.objindex).ObjType = 4 Then
                modEdicion.Deshacer_Add "Quitar Arboles"    ' Hago deshacer
                MapInfo(CurMap).Changed = 1    'Set changed flag
                'If MapData(X, Y).Graphic(3).GrhIndex = MapData(X, Y).ObjGrh.GrhIndex Then MapData(X, Y).Graphic(3).GrhIndex = 0
                MapData(tX, tY).ObjGrh.GrhIndex = 0
                MapData(tX, tY).OBJInfo.objindex = 0
                MapData(tX, tY).OBJInfo.Amount = 0
                Count = Count + 1
            End If
        Next tY
    Next tX
    MsgBox "Se han borrado: " & Count & " arboles en el mapa."
End Sub

Private Sub mnuManual_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 24/11/08
    '*************************************************
    If LenB(Dir(App.Path & "\manual\index.html", vbArchive)) <> 0 Then
        Call Shell("explorer " & App.Path & "\manual\index.html")
        DoEvents
    End If
End Sub

Private Sub mnuMapaAbajo_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 01/11/08
    '*************************************************
    Call modEdicion.Deshacer_Add("Pegar Selección")
    Call PegarSeleccionAbajo
End Sub

Private Sub mnuMapaDerecha_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 01/11/08
    '*************************************************
    Call modEdicion.Deshacer_Add("Pegar Selección")
    Call PegarSeleccionDerecha
End Sub

Private Sub mnuMapaIzquierda_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 01/11/08
    '*************************************************
    Call modEdicion.Deshacer_Add("Pegar Selección")
    Call PegarSeleccionIzquierda
End Sub

Private Sub mnuModoCaminata_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 28/05/06
    '*************************************************
    ToggleWalkMode
End Sub

Private Sub mnuNPCs_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
Dim i                           As Byte
    For i = 0 To 6
        If i <> 3 Then
            frmMain.SelectPanel(i).Value = False
            Call VerFuncion(i, False)
        End If
    Next
    modPaneles.VerFuncion 3, True
End Sub



'Private Sub mnuNPCsHostiles_Click()
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************
'Dim i As Byte
'For i = 0 To 6
'    If i <> 4 Then
'        frmMain.SelectPanel(i).value = False
'        Call VerFuncion(i, False)
'    End If
'Next
'modPaneles.VerFuncion 4, True
'End Sub

Private Sub mnuNuevoMapa_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************

Dim LoopC                       As Integer

    On Error GoTo mnuNuevoMapa_Click_Error

10  DeseaGuardarMapa Dialog.FileName

20  For LoopC = 0 To frmMain.MapPest.Count - 1    'Si arrancamos en 0, el count es -1 siempre
30      frmMain.MapPest(LoopC).Visible = False
40  Next

50  frmMain.Dialog.FileName = Empty

60  If WalkMode = True Then
70      Call modGeneral.ToggleWalkMode
80  End If

90  Call modMapIO.NuevoMapa

100 Call cmdInformacionDelMapa_Click

    On Error GoTo 0
    Exit Sub

mnuNuevoMapa_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento mnuNuevoMapa_Click de Formulario frmMain línea: " & Erl())

End Sub

Private Sub mnuObjetos_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
Dim i                           As Byte
    For i = 0 To 6
        If i <> 5 Then
            frmMain.SelectPanel(i).Value = False
            Call VerFuncion(i, False)
        End If
    Next
    modPaneles.VerFuncion 5, True
End Sub


Private Sub mnuOptimizar_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 22/09/06
    '*************************************************
    frmOptimizar.Show
End Sub

Private Sub mnuPegar_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 01/11/08
    '*************************************************
    Call modEdicion.Deshacer_Add("Pegar Selección")
    Call PegarSeleccion
End Sub

Private Sub mnuQBloquear_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    modPaneles.VerFuncion 2, False
End Sub

Private Sub mnuQNPCs_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    modPaneles.VerFuncion 3, False
End Sub

'Private Sub mnuQNPCsHostiles_Click()
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************
'modPaneles.VerFuncion 4, False
'End Sub

Private Sub mnuQObjetos_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    modPaneles.VerFuncion 5, False
End Sub

Private Sub mnuQSuperficie_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    modPaneles.VerFuncion 0, False
End Sub

Private Sub mnuQTranslados_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    modPaneles.VerFuncion 1, False
End Sub

Private Sub mnuQTriggers_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    modPaneles.VerFuncion 6, False
End Sub


Private Sub mnuQuitarBloqueos_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Call modEdicion.Bloqueo_Todo(0)
End Sub

Private Sub mnuQuitarFunciones_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    ' Superficies
    cSeleccionarSuperficie.Value = False
    Call cSeleccionarSuperficie_Click
    cQuitarEnEstaCapa.Value = False
    Call cQuitarEnEstaCapa_Click
    cQuitarEnTodasLasCapas.Value = False
    Call cQuitarEnTodasLasCapas_Click
    ' Translados
    cQuitarTrans.Value = False
    Call cQuitarTrans_Click
    cInsertarTrans.Value = False
    Call cInsertarTrans_Click
    ' Bloqueos
    cQuitarBloqueo.Value = False
    Call cQuitarBloqueo_Click
    cInsertarBloqueo.Value = False
    Call cInsertarBloqueo_Click
    ' Otras funciones
    cInsertarFunc(0).Value = False
    Call cInsertarFunc_Click(0)
    cInsertarFunc(1).Value = False
    Call cInsertarFunc_Click(1)
    cInsertarFunc(2).Value = False
    Call cInsertarFunc_Click(2)
    cQuitarFunc(0).Value = False
    Call cQuitarFunc_Click(0)
    cQuitarFunc(1).Value = False
    Call cQuitarFunc_Click(1)
    cQuitarFunc(2).Value = False
    Call cQuitarFunc_Click(2)
    ' Triggers
    cInsertarTrigger.Value = False
    Call cInsertarTrigger_Click
    cQuitarTrigger.Value = False
    Call cQuitarTrigger_Click
End Sub

Private Sub mnuQuitarNPCs_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Call modEdicion.Quitar_NPCs(False)
End Sub

'Private Sub mnuQuitarNPCsHostiles_Click()
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************
'Call modEdicion.Quitar_NPCs(True)
'End Sub

Private Sub mnuQuitarObjetos_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Call modEdicion.Quitar_Objetos
End Sub

Private Sub mnuQuitarSuperficieBordes_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Call modEdicion.Quitar_Bordes
End Sub

Private Sub mnuQuitarSuperficieDeCapa_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Call modEdicion.Quitar_Capa(cCapas.Text)
End Sub

Private Sub mnuQuitarTODO_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Call modEdicion.Borrar_Mapa
End Sub

Private Sub mnuQuitarTranslados_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 16/10/06
    '*************************************************
    Call modEdicion.Quitar_Translados
End Sub

Private Sub mnuQuitarTriggers_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Call modEdicion.Quitar_Triggers
End Sub

Private Sub mnuReAbrirMapa_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    On Error GoTo ErrHandler
    If FileExist(Dialog.FileName, vbArchive) = False Then Exit Sub
    If MapInfo(CurMap).Changed = 1 Then
        If MsgBox(MSGMod, vbExclamation + vbYesNo) = vbYes Then
            modMapIO.GuardarMapa Dialog.FileName
        End If
    End If
    Call modMapIO.NuevoMapa
    modMapIO.AbrirMapa Dialog.FileName
    DoEvents
    mnuReAbrirMapa.Enabled = True
    EngineRun = True
    Exit Sub
ErrHandler:
End Sub

Private Sub mnuRealizarOperacion_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 01/11/08
    '*************************************************
    Call modEdicion.Deshacer_Add("Realizar Operación en Selección")
    Call AccionSeleccion
End Sub

Private Sub mnuRecargar_Click()

End Sub

Private Sub mnuRecargarIndices_Click()
    Call CargarIndicesSuperficie
End Sub

Private Sub mnuSalir_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    Unload Me
End Sub

Private Sub mnuSuperficie_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
Dim i                           As Byte
    For i = 0 To 6
        If i <> 0 Then
            frmMain.SelectPanel(i).Value = False
            Call VerFuncion(i, False)
        End If
    Next
    modPaneles.VerFuncion 0, True
End Sub

Private Sub mnuTranslados_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
Dim i                           As Byte
    For i = 0 To 6
        If i <> 1 Then
            frmMain.SelectPanel(i).Value = False
            Call VerFuncion(i, False)
        End If
    Next
    modPaneles.VerFuncion 1, True
End Sub

Private Sub mnuTriggers_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
Dim i                           As Byte
    For i = 0 To 6
        If i <> 6 Then
            frmMain.SelectPanel(i).Value = False
            Call VerFuncion(i, False)
        End If
    Next
    modPaneles.VerFuncion 6, True
End Sub

Private Sub mnuUtilizarDeshacer_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 16/10/06
    '*************************************************
    mnuUtilizarDeshacer.Checked = (mnuUtilizarDeshacer.Checked = False)
End Sub


Private Sub mnuVerAutomatico_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    mnuVerAutomatico.Checked = (mnuVerAutomatico.Checked = False)
End Sub

Private Sub mnuVerBloqueos_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    cVerBloqueos.Value = (cVerBloqueos.Value = False)
    mnuVerBloqueos.Checked = cVerBloqueos.Value

End Sub

Private Sub mnuVerCapa1_Click()
    mnuVerCapa1.Checked = (mnuVerCapa1.Checked = False)
End Sub

Private Sub mnuVerCapa2_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    mnuVerCapa2.Checked = (mnuVerCapa2.Checked = False)
End Sub

Private Sub mnuVerCapa3_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    mnuVerCapa3.Checked = (mnuVerCapa3.Checked = False)
End Sub

Private Sub mnuVerCapa4_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    mnuVerCapa4.Checked = (mnuVerCapa4.Checked = False)
End Sub


Private Sub mnuVerGrilla_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 24/11/08
    '*************************************************
    VerGrilla = (VerGrilla = False)
    mnuVerGrilla.Checked = VerGrilla
End Sub

Private Sub mnuVerNPCs_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 26/05/06
    '*************************************************
    mnuVerNPCs.Checked = (mnuVerNPCs.Checked = False)

End Sub

Private Sub mnuVerObjetos_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 26/05/06
    '*************************************************
    mnuVerObjetos.Checked = (mnuVerObjetos.Checked = False)

End Sub

Private Sub mnuVerTranslados_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 26/05/06
    '*************************************************
    mnuVerTranslados.Checked = (mnuVerTranslados.Checked = False)

End Sub

Private Sub mnuVerTriggers_Click()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    cVerTriggers.Value = (cVerTriggers.Value = False)
    mnuVerTriggers.Checked = cVerTriggers.Value
End Sub

Private Sub Option1_Click()
    tp1(0).Tag = "357"
    tp1(1).Tag = "366"
    tp1(2).Tag = "359"
    tp1(3).Tag = "362"
    tp1(4).Tag = "137"
    tp1(5).Tag = "365"
    tp1(6).Tag = "356"
    tp1(7).Tag = "367"
    tp1(8).Tag = "358"

    tp2(0).Tag = "364"
    tp2(1).Tag = "367"
    tp2(2).Tag = "361"
    tp2(3).Tag = "365"
    tp2(4).Tag = "0"
    tp2(5).Tag = "362"
    tp2(6).Tag = "363"
    tp2(7).Tag = "366"
    tp2(8).Tag = "360"
End Sub

Private Sub Option2_Click()
    tp1(0).Tag = "369"
    tp1(1).Tag = "374"
    tp1(2).Tag = "371"
    tp1(3).Tag = "375"
    tp1(4).Tag = "137"
    tp1(5).Tag = "378"
    tp1(6).Tag = "368"
    tp1(7).Tag = "379"
    tp1(8).Tag = "370"

    tp2(0).Tag = "377"
    tp2(1).Tag = "379"
    tp2(2).Tag = "373"
    tp2(3).Tag = "378"
    tp2(4).Tag = "130"
    tp2(5).Tag = "375"
    tp2(6).Tag = "376"
    tp2(7).Tag = "374"
    tp2(8).Tag = "372"
End Sub

Private Sub Option3_Click()
    tp1(0).Tag = "658"
    tp1(1).Tag = "667"
    tp1(2).Tag = "660"
    tp1(3).Tag = "663"
    tp1(4).Tag = "137"
    tp1(5).Tag = "666"
    tp1(6).Tag = "657"
    tp1(7).Tag = "668"
    tp1(8).Tag = "659"

    tp2(0).Tag = "665"
    tp2(1).Tag = "668"
    tp2(2).Tag = "662"
    tp2(3).Tag = "666"
    tp2(4).Tag = "621"
    tp2(5).Tag = "663"
    tp2(6).Tag = "664"
    tp2(7).Tag = "667"
    tp2(8).Tag = "661"
End Sub

Private Sub picRadar_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

Dim sTmpPath                    As String
Dim sNumMap                     As String
Dim tTrans                      As WorldPos

    '*************************************************
    'Author: ^[GS]^
    'Last modified: 29/05/06
    '*************************************************

    'If X < 11 Then X = 11
    'If X > 89 Then X = 89
    'If Y < 10 Then Y = 10
    'If Y > 92 Then Y = 92
10  On Error GoTo picRadar_MouseDown_Error

20  UserPos.X = X * 12#
30  UserPos.Y = Y * 12

40  sTmpPath = Dialog.FileName

    'VIEJO SISTEMA DE IMÁGENES
    '50  If Len(sTmpPath) > 0 Then
    '60      sTmpPath = ReadField(1, sTmpPath, Asc("."))
    '
    '70      If InStrB(1, sTmpPath, "/") > 0 Then
    '80          sTmpPath = ReadField(FieldCount(sTmpPath, Asc("/")), sTmpPath, Asc("/"))
    '90      ElseIf InStrB(1, sTmpPath, "\") > 0 Then
    '100         sTmpPath = ReadField(FieldCount(sTmpPath, Asc("\")), sTmpPath, Asc("\"))
    '110     End If
    '
    '120     sTmpPath = App.Path & "\ImagenesMundoBAO\" & "Mini" & sTmpPath & ".jpg"
    '
    '130     If FileExist(sTmpPath, vbArchive) Then
    '140         frmMain.picRadar.Picture = LoadPicture(sTmpPath)
    '150     End If
    '160 End If

    'frmMain.ImageMap.Picture = App.Path & "\GRAFICOS\MiniMapa1.bmp"

    'NUEVO SISTEMA DE ALOJAMIENTO DE IMAGENES EN LA CARPETA MAPS (Para ver el minimapa en cada carpeta de mapas)
    If Len(sTmpPath) > 0 Then
        If InStrB(1, UCase$(sTmpPath), UCase$(Dialog.FileTitle), vbBinaryCompare) > 0 Then
            sTmpPath = Replace(UCase$(sTmpPath), UCase$(Dialog.FileTitle), "")
        End If

        sNumMap = ReadField(1, Dialog.FileTitle, Asc("."))

        If InStrB(1, UCase$(sNumMap), "MAPA", vbBinaryCompare) > 0 Then
            sNumMap = Replace(UCase$(sNumMap), "MAPA", "")
        End If

        If FileExist(sTmpPath & "MiniMapaWE" & sNumMap & ".jpg", vbArchive) Then
            frmMain.picRadar.Picture = LoadPicture(sTmpPath & "MiniMapaWE" & sNumMap & ".jpg")
        End If
    End If

    picRadar.Picture = LoadPicture(sTmpPath & "MiniMapaWe" & sNumMap & ".jpg")

    bRefreshRadar = True

    On Error GoTo 0
    Exit Sub

picRadar_MouseDown_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento picRadar_MouseDown de Formulario frmMain línea: " & Erl())

End Sub

Function FieldCount(ByRef Text As String, ByVal SepASCII As Byte) As Long
    '*****************************************************************
    'Gets the number of fields in a delimited string
    'Author: Juan Martín Sotuyo Dodero (Maraxus)
    'Last Modify Date: 14/05/2014
    'Agrego la función desde el cliente, para el sistema de quest de xpproces09 [/About]
    '*****************************************************************

Dim Count                       As Long
Dim curPos                      As Long
Dim delimiter                   As String * 1

    If LenB(Text) = 0 Then Exit Function

    delimiter = Chr$(SepASCII)

    curPos = 0
    Count = 1

    Do
        curPos = InStr(curPos + 1, Text, delimiter, vbTextCompare)
        If curPos > 0 Then
            Count = Count + 1
        End If
    Loop While curPos <> 0

    '40      Do
    '50
    '60          curPos = InStr(Count, Text, SepASCII, vbTextCompare) + 1
    '            Count = Count + 1
    '80      Loop While curPos <> 1

    FieldCount = Count

End Function

Private Sub picRadar_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 28/05/06
    '*************************************************
    MiRadarX = (X - 12) / 12
    MiRadarY = (Y - 10) / 12
End Sub



Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    '*************************************************
    'Author: Unkwown
    'Last modified: 20/05/06 - GS
    'Last modified: 20/11/07 - Loopzer
    '*************************************************

Dim tX                          As Integer
Dim tY                          As Integer

    If Not MapaCargado Then Exit Sub

    If X <= MainViewShp.Left Or X >= MainViewShp.Left + MainViewWidth Or Y <= MainViewShp.Top Or Y >= MainViewShp.Top + MainViewHeight Then
        Exit Sub
    End If

    ConvertCPtoTP MainViewShp.Left, MainViewShp.Top, X, Y, tX, tY

    'If Shift = 1 And Button = 2 Then PegarSeleccion tX, tY: Exit Sub
    If Shift = 1 And Button = 1 Then
        Seleccionando = True
        SeleccionIX = tX       '+ UserPos.X
        SeleccionIY = tY       '+ UserPos.Y
    Else
        ClickEdit Button, tX, tY
    End If

End Sub


Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    '*************************************************
    'Author: Unkwown
    'Last modified: 20/05/06 - GS
    '*************************************************

Dim tX                          As Integer
Dim tY                          As Integer

    'Make sure map is loaded
    If Not MapaCargado Then Exit Sub
    HotKeysAllow = True

    'Make sure click is in view window
    If X <= MainViewShp.Left Or X >= MainViewShp.Left + MainViewWidth Or Y <= MainViewShp.Top Or Y >= MainViewShp.Top + MainViewHeight Then
        Exit Sub
    End If

    ConvertCPtoTP MainViewShp.Left, MainViewShp.Top, X, Y, tX, tY

    POSX.Caption = "X: " & tX & " - Y: " & tY
    If tX < XMinMapSize Or tY < YMinMapSize Or tX > XMaxMapSize Or tY > XMaxMapSize Then
        POSX.ForeColor = vbRed
    Else
        POSX.ForeColor = vbWhite
    End If
    If Shift = 1 And Button = 1 Then
        Seleccionando = True
        SeleccionFX = tX       '+ TileX
        SeleccionFY = tY       '+ TileY
    Else
        ClickEdit Button, tX, tY
    End If
End Sub


Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 24/11/08
    '*************************************************

    ' Guardar configuración
    WriteVar IniPath & "WorldEditor.ini", "CONFIGURACION", "GuardarConfig", IIf(frmMain.mnuGuardarUltimaConfig.Checked = True, "1", "0")
    If frmMain.mnuGuardarUltimaConfig.Checked = True Then
        WriteVar IniPath & "WorldEditor.ini", "PATH", "UltimoMapa", Dialog.FileName
        WriteVar IniPath & "WorldEditor.ini", "MOSTRAR", "ControlAutomatico", IIf(frmMain.mnuVerAutomatico.Checked = True, "1", "0")
        WriteVar IniPath & "WorldEditor.ini", "MOSTRAR", "Capa1", IIf(frmMain.mnuVerCapa1.Checked = True, "1", "0")    '[/About]
        WriteVar IniPath & "WorldEditor.ini", "MOSTRAR", "Capa2", IIf(frmMain.mnuVerCapa2.Checked = True, "1", "0")
        WriteVar IniPath & "WorldEditor.ini", "MOSTRAR", "Capa3", IIf(frmMain.mnuVerCapa3.Checked = True, "1", "0")
        WriteVar IniPath & "WorldEditor.ini", "MOSTRAR", "Capa4", IIf(frmMain.mnuVerCapa4.Checked = True, "1", "0")
        WriteVar IniPath & "WorldEditor.ini", "MOSTRAR", "Translados", IIf(frmMain.mnuVerTranslados.Checked = True, "1", "0")
        WriteVar IniPath & "WorldEditor.ini", "MOSTRAR", "Objetos", IIf(frmMain.mnuVerObjetos.Checked = True, "1", "0")
        WriteVar IniPath & "WorldEditor.ini", "MOSTRAR", "NPCs", IIf(frmMain.mnuVerNPCs.Checked = True, "1", "0")
        WriteVar IniPath & "WorldEditor.ini", "MOSTRAR", "Triggers", IIf(frmMain.mnuVerTriggers.Checked = True, "1", "0")
        WriteVar IniPath & "WorldEditor.ini", "MOSTRAR", "Grilla", IIf(frmMain.mnuVerGrilla.Checked = True, "1", "0")
        WriteVar IniPath & "WorldEditor.ini", "MOSTRAR", "Bloqueos", IIf(frmMain.mnuVerBloqueos.Checked = True, "1", "0")
        WriteVar IniPath & "WorldEditor.ini", "MOSTRAR", "LastPos", UserPos.X & "-" & UserPos.Y
        WriteVar IniPath & "WorldEditor.ini", "CONFIGURACION", "UtilizarDeshacer", IIf(frmMain.mnuUtilizarDeshacer.Checked = True, "1", "0")
        WriteVar IniPath & "WorldEditor.ini", "CONFIGURACION", "AutoCapturarTrans", IIf(frmMain.mnuAutoCapturarTranslados.Checked = True, "1", "0")
        WriteVar IniPath & "WorldEditor.ini", "CONFIGURACION", "AutoCapturarSup", IIf(frmMain.mnuAutoCapturarSuperficie.Checked = True, "1", "0")
        WriteVar IniPath & "WorldEditor.ini", "CONFIGURACION", "ObjTranslado", Val(Cfg_TrOBJ)
    End If

    'Allow MainLoop to close program
    If prgRun = True Then
        prgRun = False
        Cancel = 1
    End If

End Sub




Private Sub SelectPanel_Click(index As Integer)
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
Dim i                           As Byte
    For i = 0 To 6
        If i <> index Then
            SelectPanel(i).Value = False
            Call VerFuncion(i, False)
        End If
    Next
    If mnuAutoQuitarFunciones.Checked = True Then

        '[/About] 19-12-12
        If index = 3 Then
            If chkNoHostiles.Visible = True Then
                chkNoHostiles.Visible = False
                chkSeleccionarSuperficie.Visible = False
            Else
                chkNoHostiles.Visible = True
                chkSeleccionarSuperficie.Visible = True
            End If
        Else
            chkNoHostiles.Visible = False
        End If

        Call mnuQuitarFunciones_Click
    End If

    Call VerFuncion(index, SelectPanel(index).Value)
End Sub

Private Sub TimAutoGuardarMapa_Timer()
    '*************************************************
    'Author: ^[GS]^
    'Last modified: 20/05/06
    '*************************************************
    If mnuAutoGuardarMapas.Checked = True Then
        bAutoGuardarMapaCount = bAutoGuardarMapaCount + 1
        If bAutoGuardarMapaCount >= bAutoGuardarMapa Then
            If MapInfo(CurMap).Changed = 1 Then    ' Solo guardo si el mapa esta modificado
                modMapIO.GuardarMapa Dialog.FileName
            End If
            bAutoGuardarMapaCount = 0
        End If
    End If
End Sub


Public Sub ObtenerNombreArchivo(ByVal Guardar As Boolean)
    '*************************************************
    'Author: Unkwown
    'Last modified: 20/05/06
    '*************************************************

    On Error GoTo ObtenerNombreArchivo_Error

10  With Dialog

20      .Filter = "Mapas de BenderAO (*.map)|*.map"

30      If Guardar Then
40          .DialogTitle = "Guardar"
50          .DefaultExt = ".txt"
60          .FileName = vbNullString
70          .flags = cdlOFNPathMustExist
80          .ShowSave
90      Else
100         .DialogTitle = "Cargar"
110         .FileName = vbNullString
120         .flags = cdlOFNFileMustExist
            .CancelError = False
130         .ShowOpen

140     End If

150 End With

    On Error GoTo 0
    Exit Sub

ObtenerNombreArchivo_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento ObtenerNombreArchivo de Formulario frmMain línea: " & Erl())
End Sub

Private Sub tp1_Click(index As Integer)
    cGrh.Text = DameGrhIndex(Val(tp1(index).Tag))
    cCapas.Text = IIf(index = 4, 1, 2)
    If index = 4 Then
        frmConfigSup.mLargo.Text = 4
        frmConfigSup.mAncho.Text = 4
        chkCostas.Value = vbUnchecked
    End If
    Call fPreviewGrh(cGrh.Text)
    Call modPaneles.VistaPreviaDeSup
End Sub

Private Sub tp2_Click(index As Integer)

    cGrh.Text = DameGrhIndex(Val(tp2(index).Tag))
    cCapas.Text = IIf(index = 4, 1, 2)
    If index = 4 Then
        frmConfigSup.mLargo.Text = 4
        frmConfigSup.mAncho.Text = 4
        chkCostas.Value = vbUnchecked
    End If
    Call fPreviewGrh(cGrh.Text)
    Call modPaneles.VistaPreviaDeSup
End Sub
Sub HacerCostas(ByVal Button As Integer, ByVal tX As Integer, ByVal tY As Integer)
Dim gh(0 To 8)                  As Integer
Dim i                           As Integer
Dim YY                          As Integer
Dim XX                          As Integer

    If Button = 1 Then
        MapInfo(CurMap).Changed = 1
        For YY = tY - 1 To tY + 1
            For XX = tX - 1 To tX + 1
                gh(i) = MapData(XX, YY).Graphic(2).GrhIndex
                i = i + 1
            Next XX
        Next YY
        If gh(4) > 0 Then
            Exit Sub
        ElseIf gh(1) = DameGrhIndex(tp1(1).Tag) + 1 Then    'Click abajo
            tp1_Click (2)
            ClickEdit 1, tX, tY - 1
            ClickEdit 1, tX - 1, tY - 1
            ClickEdit 1, tX, tY
        ElseIf gh(1) = DameGrhIndex(tp1(1).Tag) + 0 Then
            tp1_Click (0)
            ClickEdit 1, tX, tY - 1
            ClickEdit 1, tX + 1, tY - 1
            ClickEdit 1, tX, tY
        ElseIf gh(1) = DameGrhIndex(tp1(2).Tag) + 3 Then
            tp1_Click (5)
            ClickEdit 1, tX, tY
        ElseIf gh(1) = DameGrhIndex(tp1(0).Tag) + 2 Then
            tp1_Click (3)
            ClickEdit 1, tX, tY
        ElseIf gh(1) = DameGrhIndex(tp1(3).Tag) Or gh(1) = DameGrhIndex(tp1(3).Tag) + 2 Then
            tp1_Click (3)
            ClickEdit 1, tX, tY
        ElseIf gh(1) = DameGrhIndex(tp1(5).Tag) + 1 Or gh(1) = DameGrhIndex(tp1(5).Tag) + 3 Then
            tp1_Click (5)
            ClickEdit 1, tX, tY
        ElseIf gh(1) = DameGrhIndex(tp1(7).Tag) + 3 Then
            tp2_Click (0)
            ClickEdit 1, tX, tY - 1
            tp2_Click (3)
            ClickEdit 1, tX, tY
        ElseIf gh(1) = DameGrhIndex(tp1(7).Tag) + 2 Then
            tp2_Click (2)
            ClickEdit 1, tX, tY - 1
            tp2_Click (5)
            ClickEdit 1, tX, tY
        ElseIf gh(7) = DameGrhIndex(tp1(1).Tag) + 0 Then    'Click arriba
            tp2_Click (5)
            ClickEdit 1, tX, tY
            tp2_Click (8)
            ClickEdit 1, tX, tY + 1
        ElseIf gh(7) = DameGrhIndex(tp1(1).Tag) + 1 Then
            tp2_Click (3)
            ClickEdit 1, tX, tY
            tp2_Click (6)
            ClickEdit 1, tX, tY + 1
        ElseIf gh(7) = DameGrhIndex(tp1(6).Tag) + 0 Then
            tp1_Click (3)
            ClickEdit 1, tX, tY
        ElseIf gh(7) = DameGrhIndex(tp1(8).Tag) + 1 Then
            tp1_Click (5)
            ClickEdit 1, tX, tY
        ElseIf gh(7) = DameGrhIndex(tp1(3).Tag) Or gh(7) = DameGrhIndex(tp1(3).Tag) + 2 Then
            tp1_Click (3)
            ClickEdit 1, tX, tY
        ElseIf gh(7) = DameGrhIndex(tp1(5).Tag) + 1 Or gh(7) = DameGrhIndex(tp1(5).Tag) + 3 Then
            tp1_Click (5)
            ClickEdit 1, tX, tY
        ElseIf gh(7) = DameGrhIndex(tp1(7).Tag) + 3 Then
            tp1_Click (8)
            ClickEdit 1, tX, tY + 1
            ClickEdit 1, tX - 1, tY + 1
            ClickEdit 1, tX, tY
        ElseIf gh(7) = DameGrhIndex(tp1(7).Tag) + 2 Then
            tp1_Click (6)
            ClickEdit 1, tX, tY + 1
            ClickEdit 1, tX + 1, tY + 1
            ClickEdit 1, tX, tY
        ElseIf gh(5) = DameGrhIndex(tp1(3).Tag) + 2 Then    'Click izquierda
            tp2_Click (1)
            ClickEdit 1, tX, tY
            tp2_Click (2)
            ClickEdit 1, tX + 1, tY
        ElseIf gh(5) = DameGrhIndex(tp1(3).Tag) + 0 Then
            tp2_Click (7)
            ClickEdit 1, tX, tY
            tp2_Click (8)
            ClickEdit 1, tX + 1, tY
        ElseIf gh(5) = DameGrhIndex(tp1(5).Tag) + 1 Then
            tp1_Click (2)
            ClickEdit 1, tX, tY
            ClickEdit 1, tX + 1, tY
            ClickEdit 1, tX + 1, tY + 1
        ElseIf gh(5) = DameGrhIndex(tp1(5).Tag) + 3 Then
            tp1_Click (8)
            ClickEdit 1, tX, tY
            ClickEdit 1, tX + 1, tY
            ClickEdit 1, tX + 1, tY - 1
        ElseIf gh(5) = DameGrhIndex(tp1(1).Tag) Or gh(5) = DameGrhIndex(tp1(1).Tag) + 1 Then
            tp1_Click (1)
            ClickEdit 1, tX, tY
        ElseIf gh(5) = DameGrhIndex(tp1(7).Tag) + 2 Or gh(5) = DameGrhIndex(tp1(7).Tag) + 3 Then
            tp1_Click (7)
            ClickEdit 1, tX, tY
        ElseIf gh(5) = DameGrhIndex(tp1(2).Tag) + 0 Then
            tp1_Click (1)
            ClickEdit 1, tX, tY
        ElseIf gh(5) = DameGrhIndex(tp1(8).Tag) + 2 Then
            tp1_Click (7)
            ClickEdit 1, tX, tY
        ElseIf gh(3) = DameGrhIndex(tp1(3).Tag) + 0 Then    'Click derecha
            tp1_Click (0)
            ClickEdit 1, tX, tY
            ClickEdit 1, tX - 1, tY
            ClickEdit 1, tX - 1, tY + 1
        ElseIf gh(3) = DameGrhIndex(tp1(3).Tag) + 2 Then
            tp1_Click (6)
            ClickEdit 1, tX, tY
            ClickEdit 1, tX - 1, tY
            ClickEdit 1, tX - 1, tY - 1
        ElseIf gh(3) = DameGrhIndex(tp1(5).Tag) + 3 Then
            tp2_Click (0)
            ClickEdit 1, tX - 1, tY
            tp2_Click (1)
            ClickEdit 1, tX, tY
        ElseIf gh(3) = DameGrhIndex(tp1(5).Tag) + 1 Then
            tp2_Click (6)
            ClickEdit 1, tX - 1, tY
            tp2_Click (7)
            ClickEdit 1, tX, tY
        ElseIf gh(3) = DameGrhIndex(tp1(1).Tag) Or gh(3) = DameGrhIndex(tp1(1).Tag) + 1 Then
            tp1_Click (1)
            ClickEdit 1, tX, tY
        ElseIf gh(3) = DameGrhIndex(tp1(7).Tag) + 2 Or gh(3) = DameGrhIndex(tp1(7).Tag) + 3 Then
            tp1_Click (7)
            ClickEdit 1, tX, tY
        ElseIf gh(3) = DameGrhIndex(tp1(0).Tag) + 1 Then
            tp1_Click (1)
            ClickEdit 1, tX, tY
        ElseIf gh(3) = DameGrhIndex(tp1(6).Tag) + 3 Then
            tp1_Click (7)
            ClickEdit 1, tX, tY
        End If
    ElseIf Button = 2 Then
        MapInfo(CurMap).Changed = 1
        MapData(tX, tY).Graphic(2).GrhIndex = 0
    End If
End Sub

Sub MostrarCostas(tX As Integer, tY As Integer)
Dim gh(0 To 8)                  As Integer
Dim i                           As Integer
Dim YY                          As Integer
Dim XX                          As Integer
    For YY = tY - 1 To tY + 1
        For XX = tX - 1 To tX + 1
            If InMapBounds(XX, YY) Then
                gh(i) = MapData(XX, YY).Graphic(2).GrhIndex
            End If
            i = i + 1
        Next XX
    Next YY
    Call MCosta(0, 0, 0, 0)
    If gh(4) > 0 Then
        Exit Sub
    ElseIf gh(1) = DameGrhIndex(tp1(1).Tag) + 1 Then    'Click abajo
        Call MCosta(1, tp1(2).Tag, tX, tY - 1)
        Call MCosta(2, tp1(2).Tag, tX - 1, tY - 1)
        Call MCosta(3, tp1(2).Tag, tX, tY)
    ElseIf gh(1) = DameGrhIndex(tp1(1).Tag) + 0 Then
        Call MCosta(1, tp1(0).Tag, tX, tY - 1)
        Call MCosta(2, tp1(0).Tag, tX + 1, tY - 1)
        Call MCosta(3, tp1(0).Tag, tX, tY)
    ElseIf gh(1) = DameGrhIndex(tp1(2).Tag) + 3 Then
        Call MCosta(1, tp1(5).Tag, tX, tY)
    ElseIf gh(1) = DameGrhIndex(tp1(0).Tag) + 2 Then
        Call MCosta(1, tp1(3).Tag, tX, tY)
    ElseIf gh(1) = DameGrhIndex(tp1(3).Tag) Or gh(1) = DameGrhIndex(tp1(3).Tag) + 2 Then
        Call MCosta(1, tp1(3).Tag, tX, tY)
    ElseIf gh(1) = DameGrhIndex(tp1(5).Tag) + 1 Or gh(1) = DameGrhIndex(tp1(5).Tag) + 3 Then
        Call MCosta(1, tp1(5).Tag, tX, tY)
    ElseIf gh(1) = DameGrhIndex(tp1(7).Tag) + 3 Then
        Call MCosta(1, tp2(0).Tag, tX, tY - 1)
        Call MCosta(2, tp2(3).Tag, tX, tY)
    ElseIf gh(1) = DameGrhIndex(tp1(7).Tag) + 2 Then
        Call MCosta(1, tp2(2).Tag, tX, tY - 1)
        Call MCosta(2, tp2(5).Tag, tX, tY)
    ElseIf gh(7) = DameGrhIndex(tp1(1).Tag) + 0 Then    'Click arriba
        Call MCosta(1, tp2(5).Tag, tX, tY)
        Call MCosta(2, tp2(8).Tag, tX, tY + 1)
    ElseIf gh(7) = DameGrhIndex(tp1(1).Tag) + 1 Then
        Call MCosta(1, tp2(3).Tag, tX, tY)
        Call MCosta(2, tp2(6).Tag, tX, tY + 1)
    ElseIf gh(7) = DameGrhIndex(tp1(6).Tag) + 0 Then
        Call MCosta(1, tp1(3).Tag, tX, tY)
    ElseIf gh(7) = DameGrhIndex(tp1(8).Tag) + 1 Then
        Call MCosta(1, tp1(5).Tag, tX, tY)
    ElseIf gh(7) = DameGrhIndex(tp1(3).Tag) Or gh(7) = DameGrhIndex(tp1(3).Tag) + 2 Then
        Call MCosta(1, tp1(3).Tag, tX, tY)
    ElseIf gh(7) = DameGrhIndex(tp1(5).Tag) + 1 Or gh(7) = DameGrhIndex(tp1(5).Tag) + 3 Then
        Call MCosta(1, tp1(5).Tag, tX, tY)
    ElseIf gh(7) = DameGrhIndex(tp1(7).Tag) + 3 Then
        Call MCosta(1, tp1(8).Tag, tX, tY + 1)
        Call MCosta(2, tp1(8).Tag, tX - 1, tY + 1)
        Call MCosta(3, tp1(8).Tag, tX, tY)
    ElseIf gh(7) = DameGrhIndex(tp1(7).Tag) + 2 Then
        Call MCosta(1, tp1(6).Tag, tX, tY + 1)
        Call MCosta(2, tp1(6).Tag, tX + 1, tY + 1)
        Call MCosta(3, tp1(6).Tag, tX, tY)
    ElseIf gh(5) = DameGrhIndex(tp1(3).Tag) + 2 Then    'Click izquierda
        Call MCosta(1, tp2(1).Tag, tX, tY)
        Call MCosta(2, tp2(2).Tag, tX + 1, tY)
    ElseIf gh(5) = DameGrhIndex(tp1(3).Tag) + 0 Then
        Call MCosta(1, tp2(7).Tag, tX, tY)
        Call MCosta(2, tp2(8).Tag, tX + 1, tY)
    ElseIf gh(5) = DameGrhIndex(tp1(5).Tag) + 1 Then
        Call MCosta(1, tp1(2).Tag, tX, tY)
        Call MCosta(2, tp1(2).Tag, tX + 1, tY)
        Call MCosta(3, tp1(2).Tag, tX + 1, tY + 1)
    ElseIf gh(5) = DameGrhIndex(tp1(5).Tag) + 3 Then
        Call MCosta(1, tp1(8).Tag, tX, tY)
        Call MCosta(2, tp1(8).Tag, tX + 1, tY)
        Call MCosta(3, tp1(8).Tag, tX + 1, tY - 1)
    ElseIf gh(5) = DameGrhIndex(tp1(1).Tag) Or gh(5) = DameGrhIndex(tp1(1).Tag) + 1 Then
        Call MCosta(1, tp1(1).Tag, tX, tY)
    ElseIf gh(5) = DameGrhIndex(tp1(7).Tag) + 2 Or gh(5) = DameGrhIndex(tp1(7).Tag) + 3 Then
        Call MCosta(1, tp1(7).Tag, tX, tY)
    ElseIf gh(5) = DameGrhIndex(tp1(2).Tag) + 0 Then
        Call MCosta(1, tp1(1).Tag, tX, tY)
    ElseIf gh(5) = DameGrhIndex(tp1(8).Tag) + 2 Then
        Call MCosta(1, tp1(7).Tag, tX, tY)
    ElseIf gh(3) = DameGrhIndex(tp1(3).Tag) + 0 Then    'Click derecha
        Call MCosta(1, tp1(0).Tag, tX, tY)
        Call MCosta(2, tp1(0).Tag, tX - 1, tY)
        Call MCosta(3, tp1(0).Tag, tX - 1, tY + 1)
    ElseIf gh(3) = DameGrhIndex(tp1(3).Tag) + 2 Then
        Call MCosta(1, tp1(6).Tag, tX, tY)
        Call MCosta(2, tp1(6).Tag, tX - 1, tY)
        Call MCosta(3, tp1(6).Tag, tX - 1, tY - 1)
    ElseIf gh(3) = DameGrhIndex(tp1(5).Tag) + 3 Then
        Call MCosta(1, tp2(0).Tag, tX - 1, tY)
        Call MCosta(2, tp2(1).Tag, tX, tY)
    ElseIf gh(3) = DameGrhIndex(tp1(5).Tag) + 1 Then
        Call MCosta(1, tp2(6).Tag, tX - 1, tY)
        Call MCosta(2, tp2(7).Tag, tX, tY)
    ElseIf gh(3) = DameGrhIndex(tp1(1).Tag) Or gh(3) = DameGrhIndex(tp1(1).Tag) + 1 Then
        Call MCosta(1, tp1(1).Tag, tX, tY)
    ElseIf gh(3) = DameGrhIndex(tp1(7).Tag) + 2 Or gh(3) = DameGrhIndex(tp1(7).Tag) + 3 Then
        Call MCosta(1, tp1(7).Tag, tX, tY)
    ElseIf gh(3) = DameGrhIndex(tp1(0).Tag) + 1 Then
        Call MCosta(1, tp1(1).Tag, tX, tY)
    ElseIf gh(3) = DameGrhIndex(tp1(6).Tag) + 3 Then
        Call MCosta(1, tp1(7).Tag, tX, tY)
    End If
End Sub

Sub MCosta(Pos As Byte, GrhIndex As Integer, X As Integer, Y As Integer)
    If Pos = 0 Then
        MCostaV(1).GrhIndex = 0
        MCostaV(1).X = 0
        MCostaV(1).Y = 0
        MCostaV(2).GrhIndex = 0
        MCostaV(2).X = 0
        MCostaV(2).Y = 0
        MCostaV(3).GrhIndex = 0
        MCostaV(3).X = 0
        MCostaV(3).Y = 0
    Else
        MCostaV(Pos).GrhIndex = DameGrhIndex(GrhIndex)
        MCostaV(Pos).X = X
        MCostaV(Pos).Y = Y
    End If
End Sub

Private Sub Renderer_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call Form_MouseUp(Button, Shift, X, Y)
End Sub
