VERSION 5.00
Begin VB.Form frmUnionAdyacente 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Union con Mapas Adyasentes"
   ClientHeight    =   5235
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6165
   Icon            =   "frmUnionAdyasente.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5235
   ScaleWidth      =   6165
   StartUpPosition =   2  'CenterScreen
   Begin VB.CheckBox AutoMapeo 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Auto-Mapeo"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   3
      Left            =   1200
      TabIndex        =   40
      Top             =   2400
      Width           =   1095
   End
   Begin VB.CheckBox AutoMapeo 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00E0E0E0&
      Caption         =   "Auto-Mapeo"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   1
      Left            =   3840
      TabIndex        =   38
      Top             =   2400
      Width           =   1095
   End
   Begin VB.CheckBox AutoMapeo 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Auto-Mapeo"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   0
      Left            =   3360
      TabIndex        =   37
      Top             =   1080
      Width           =   1095
   End
   Begin WorldEditor.lvButtons_H cmdAplicar 
      Height          =   375
      Left            =   3240
      TabIndex        =   29
      Top             =   4080
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   661
      Caption         =   "&Aplicar"
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
      cBack           =   -2147483633
   End
   Begin VB.TextBox PosLim 
      BackColor       =   &H008080FF&
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
      Height          =   285
      Index           =   7
      Left            =   360
      TabIndex        =   26
      Text            =   "91"
      Top             =   720
      Width           =   375
   End
   Begin VB.TextBox PosLim 
      BackColor       =   &H008080FF&
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
      Height          =   285
      Index           =   6
      Left            =   5640
      TabIndex        =   24
      Text            =   "10"
      Top             =   3120
      Width           =   375
   End
   Begin VB.TextBox PosLim 
      BackColor       =   &H00FF8080&
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
      Height          =   285
      Index           =   5
      Left            =   5520
      TabIndex        =   22
      Text            =   "8"
      Top             =   3480
      Width           =   375
   End
   Begin VB.TextBox PosLim 
      BackColor       =   &H00FF8080&
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
      Height          =   285
      Index           =   4
      Left            =   480
      TabIndex        =   20
      Text            =   "93"
      Top             =   360
      Width           =   375
   End
   Begin VB.CheckBox Aplicar 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Aplicar"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   3
      Left            =   1200
      TabIndex        =   19
      Top             =   2160
      Width           =   975
   End
   Begin VB.CheckBox Aplicar 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Aplicar"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   2
      Left            =   3360
      TabIndex        =   18
      Top             =   2760
      Width           =   975
   End
   Begin VB.CheckBox Aplicar 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00E0E0E0&
      Caption         =   "Aplicar"
      BeginProperty Font 
         Name            =   "Arial"
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
      TabIndex        =   17
      Top             =   2160
      Width           =   975
   End
   Begin VB.TextBox Mapa 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   3
      Left            =   1800
      TabIndex        =   16
      Text            =   "0"
      Top             =   1800
      Width           =   735
   End
   Begin VB.TextBox Mapa 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   2
      Left            =   2520
      TabIndex        =   15
      Text            =   "0"
      Top             =   2880
      Width           =   735
   End
   Begin VB.TextBox Mapa 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   1
      Left            =   4200
      TabIndex        =   14
      Text            =   "0"
      Top             =   1800
      Width           =   735
   End
   Begin VB.TextBox PosLim 
      BackColor       =   &H00000080&
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
      Height          =   285
      Index           =   3
      Left            =   840
      TabIndex        =   13
      Text            =   "9"
      Top             =   3600
      Width           =   375
   End
   Begin VB.TextBox PosLim 
      BackColor       =   &H00000080&
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
      Height          =   285
      Index           =   2
      Left            =   4800
      TabIndex        =   12
      Text            =   "92"
      Top             =   120
      Width           =   375
   End
   Begin VB.TextBox PosLim 
      BackColor       =   &H00800000&
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
      Height          =   285
      Index           =   1
      Left            =   5640
      TabIndex        =   11
      Text            =   "7"
      Top             =   600
      Width           =   375
   End
   Begin VB.TextBox PosLim 
      BackColor       =   &H00800000&
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
      Height          =   285
      Index           =   0
      Left            =   360
      TabIndex        =   10
      Text            =   "94"
      Top             =   3240
      Width           =   375
   End
   Begin VB.CheckBox Aplicar 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Aplicar"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   0
      Left            =   3360
      TabIndex        =   1
      Top             =   840
      Width           =   975
   End
   Begin VB.TextBox Mapa 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Index           =   0
      Left            =   2520
      TabIndex        =   0
      Text            =   "0"
      Top             =   840
      Width           =   735
   End
   Begin WorldEditor.lvButtons_H cmdCancelar 
      Height          =   375
      Left            =   4680
      TabIndex        =   30
      Top             =   4080
      Width           =   1335
      _ExtentX        =   2355
      _ExtentY        =   661
      Caption         =   "&Cancel"
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
      cBack           =   -2147483633
   End
   Begin WorldEditor.lvButtons_H cmdDefault 
      Height          =   375
      Left            =   120
      TabIndex        =   31
      Top             =   4080
      Width           =   1095
      _ExtentX        =   1931
      _ExtentY        =   661
      Caption         =   "&Default"
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
      cBack           =   -2147483633
   End
   Begin VB.CheckBox AutoMapeo 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Auto-Mapeo"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   6.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Index           =   2
      Left            =   3360
      TabIndex        =   39
      Top             =   3000
      Width           =   1095
   End
   Begin VB.Label Label18 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Leyenda sobre posiciones:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   120
      TabIndex        =   36
      Top             =   4680
      Width           =   1335
   End
   Begin VB.Line Line18 
      BorderColor     =   &H00800000&
      BorderWidth     =   2
      X1              =   3840
      X2              =   3840
      Y1              =   4950
      Y2              =   5080
   End
   Begin VB.Label Label17 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Posicion Y del mapa actual"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   210
      Left            =   3960
      TabIndex        =   35
      Top             =   4920
      Width           =   1935
   End
   Begin VB.Line Line17 
      BorderColor     =   &H00FF8080&
      BorderWidth     =   2
      X1              =   3840
      X2              =   3840
      Y1              =   4695
      Y2              =   4845
   End
   Begin VB.Label Label16 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Posicion Y del mapa destino"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   210
      Left            =   3960
      TabIndex        =   34
      Top             =   4680
      Width           =   2025
   End
   Begin VB.Line Line16 
      BorderColor     =   &H00000080&
      BorderWidth     =   2
      X1              =   1560
      X2              =   1560
      Y1              =   4950
      Y2              =   5080
   End
   Begin VB.Label Label15 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Posicion X del mapa actual"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   210
      Left            =   1680
      TabIndex        =   33
      Top             =   4920
      Width           =   1920
   End
   Begin VB.Line Line15 
      BorderColor     =   &H008080FF&
      BorderWidth     =   2
      X1              =   1560
      X2              =   1560
      Y1              =   4695
      Y2              =   4845
   End
   Begin VB.Label Label14 
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Posicion X del mapa destino"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H008080FF&
      Height          =   210
      Left            =   1680
      TabIndex        =   32
      Top             =   4680
      Width           =   2010
   End
   Begin VB.Line Line14 
      BorderColor     =   &H00008000&
      X1              =   120
      X2              =   6000
      Y1              =   4560
      Y2              =   4560
   End
   Begin VB.Label Label13 
      Caption         =   "NOTA: Mapa 0, borra el translado de mapa."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   495
      Left            =   1320
      TabIndex        =   28
      Top             =   4080
      Width           =   1815
   End
   Begin VB.Line Line13 
      BorderColor     =   &H008080FF&
      BorderWidth     =   2
      X1              =   840
      X2              =   840
      Y1              =   840
      Y2              =   3360
   End
   Begin VB.Label Label12 
      Caption         =   "X:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H008080FF&
      Height          =   255
      Left            =   120
      TabIndex        =   27
      Top             =   720
      Width           =   255
   End
   Begin VB.Line Line12 
      BorderColor     =   &H008080FF&
      BorderWidth     =   2
      X1              =   5280
      X2              =   5280
      Y1              =   720
      Y2              =   3240
   End
   Begin VB.Label Label11 
      Caption         =   "X:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H008080FF&
      Height          =   255
      Left            =   5400
      TabIndex        =   25
      Top             =   3120
      Width           =   255
   End
   Begin VB.Line Line11 
      BorderColor     =   &H00FF8080&
      BorderWidth     =   2
      X1              =   1080
      X2              =   5280
      Y1              =   3600
      Y2              =   3600
   End
   Begin VB.Label Label10 
      Caption         =   "Y:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   255
      Left            =   5280
      TabIndex        =   23
      Top             =   3480
      Width           =   255
   End
   Begin VB.Line Line10 
      BorderColor     =   &H00FF8080&
      BorderWidth     =   2
      X1              =   840
      X2              =   5040
      Y1              =   480
      Y2              =   480
   End
   Begin VB.Label Label9 
      Caption         =   "Y:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   255
      Left            =   240
      TabIndex        =   21
      Top             =   360
      Width           =   255
   End
   Begin VB.Line Line9 
      BorderColor     =   &H00404040&
      X1              =   960
      X2              =   5160
      Y1              =   3480
      Y2              =   3480
   End
   Begin VB.Line Line8 
      BorderColor     =   &H00404040&
      X1              =   5160
      X2              =   5160
      Y1              =   3480
      Y2              =   600
   End
   Begin VB.Line Line7 
      BorderColor     =   &H00404040&
      X1              =   5160
      X2              =   960
      Y1              =   600
      Y2              =   600
   End
   Begin VB.Line Line6 
      BorderColor     =   &H00404040&
      X1              =   960
      X2              =   960
      Y1              =   3480
      Y2              =   600
   End
   Begin VB.Line Line5 
      BorderColor     =   &H00008000&
      X1              =   120
      X2              =   6000
      Y1              =   3960
      Y2              =   3960
   End
   Begin VB.Label Label8 
      Caption         =   "Y:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   5400
      TabIndex        =   9
      Top             =   600
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Y:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   3240
      Width           =   255
   End
   Begin VB.Label Label6 
      Caption         =   "X:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   255
      Left            =   600
      TabIndex        =   7
      Top             =   3600
      Width           =   255
   End
   Begin VB.Label Label5 
      Caption         =   "X:"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   255
      Left            =   4560
      TabIndex        =   6
      Top             =   120
      Width           =   255
   End
   Begin VB.Line Line4 
      BorderColor     =   &H00800000&
      BorderWidth     =   2
      X1              =   720
      X2              =   4920
      Y1              =   3360
      Y2              =   3360
   End
   Begin VB.Line Line3 
      BorderColor     =   &H00800000&
      BorderWidth     =   2
      X1              =   1200
      X2              =   5400
      Y1              =   720
      Y2              =   720
   End
   Begin VB.Label Label4 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Mapa"
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
      Left            =   3600
      TabIndex        =   5
      Top             =   1800
      Width           =   495
   End
   Begin VB.Label Label3 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Mapa"
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
      Left            =   1200
      TabIndex        =   4
      Top             =   1800
      Width           =   495
   End
   Begin VB.Label Label2 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Mapa"
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
      Left            =   1920
      TabIndex        =   3
      Top             =   2880
      Width           =   495
   End
   Begin VB.Label Label1 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Mapa"
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
      Left            =   1920
      TabIndex        =   2
      Top             =   840
      Width           =   495
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00000080&
      BorderWidth     =   2
      X1              =   5040
      X2              =   5040
      Y1              =   360
      Y2              =   3240
   End
   Begin VB.Line Line1 
      BorderColor     =   &H00000080&
      BorderWidth     =   2
      X1              =   1080
      X2              =   1080
      Y1              =   840
      Y2              =   3600
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00E0E0E0&
      FillStyle       =   0  'Solid
      Height          =   2895
      Left            =   960
      Top             =   600
      Width           =   4215
   End
   Begin VB.Menu mnuDefault 
      Caption         =   "mnuDefault"
      Visible         =   0   'False
      Begin VB.Menu mnuLegal 
         Caption         =   "Borde Legal Automatico"
      End
      Begin VB.Menu mnuBasica 
         Caption         =   "11,10 y 90,91 - Basica"
      End
      Begin VB.Menu mnuUlla 
         Caption         =   "9,7 y 92,94 - Ullathorpe"
      End
   End
End
Attribute VB_Name = "frmUnionAdyacente"
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

Private Sub Aplicar_Click(index As Integer)
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************
Dim i                           As Byte
    cmdAplicar.Enabled = False
    For i = 0 To 3
        If Aplicar(i).value = 1 Or AutoMapeo(i).value = 1 Then cmdAplicar.Enabled = True: Exit For
    Next
End Sub


Private Sub AutoMapeo_Click(index As Integer)
Dim i                           As Byte
    cmdAplicar.Enabled = False
    For i = 0 To 3
        If Aplicar(i).value = 1 Or AutoMapeo(i).value = 1 Then cmdAplicar.Enabled = True: Exit For
    Next
End Sub

Private Sub cmdAplicar_Click()
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************

Dim Y                           As Long
Dim X                           As Long
Dim tX                          As Long
Dim tY                          As Long

    On Error GoTo cmdAplicar_Click_Error

10  If Not MapaCargado Then
20      Exit Sub
30  End If

40  modEdicion.Deshacer_Add "Insertar Translados a mapas Adyasentes"    ' Hago deshacer

    ' ARRIBA
50  If Mapa(0).Text > -1 And AutoMapeo(0).value = 1 Then
60      frmUnionAdyacente.Caption = "Cargando mapa temporal..."
70      Call TempMapa_Cargar(PATH_Save & NameMap_Save & Mapa(0).Text & ".map")
80      DoEvents
90      frmUnionAdyacente.Caption = "¡Finish! Copiando mapa..."
100     For X = 1 To XMaxMapSize
110         For Y = 1 To PosLim(1).Text - 1
120             tY = Y + YMaxMapSize - PosLim(1).Text * 2 + 1
130             MapData(X, Y).Graphic(1) = TempMapData(X, tY).Graphic(1)
140             MapData(X, Y).Graphic(2) = TempMapData(X, tY).Graphic(2)
150             MapData(X, Y).Graphic(3) = TempMapData(X, tY).Graphic(3)
160             MapData(X, Y).Graphic(4) = TempMapData(X, tY).Graphic(4)
170             MapData(X, Y).OBJInfo.objindex = TempMapData(X, tY).OBJInfo.objindex
180             MapData(X, Y).OBJInfo.Amount = TempMapData(X, tY).OBJInfo.Amount
                'MapData(X, Y).ObjGrh.GrhIndex = TempMapData(X, TY).ObjGrh.GrhIndex
190         Next Y
200     Next X
210     frmUnionAdyacente.Caption = "Ready ;)!..."
220 End If

230 If Mapa(0).Text > -1 And Aplicar(0).value = 1 Then
240     Y = PosLim(1).Text
250     For X = (PosLim(3).Text + 1) To (PosLim(2).Text - 1)
260         If MapData(X, Y).Blocked = 0 Then
270             MapData(X, Y).TileExit.Map = Mapa(0).Text
280             If Mapa(0).Text = 0 Then
290                 MapData(X, Y).TileExit.X = 0
300                 MapData(X, Y).TileExit.Y = 0
310             Else
320                 MapData(X, Y).TileExit.X = X
330                 MapData(X, Y).TileExit.Y = PosLim(4).Text
340             End If
350         End If
360     Next
370 End If

    ' DERECHA
380 If Mapa(1).Text > -1 And AutoMapeo(1).value = 1 Then
390     frmUnionAdyacente.Caption = "Cargando mapa temporal..."
400     Call TempMapa_Cargar(PATH_Save & NameMap_Save & Mapa(1).Text & ".map")
410     DoEvents
420     frmUnionAdyacente.Caption = "¡Finish! Copiando mapa..."
430     For Y = 1 To YMaxMapSize
440         For X = PosLim(2).Text + 1 To XMaxMapSize
450             tX = XMaxMapSize + X - PosLim(2).Text * 2 - 1
460             MapData(X, Y).Graphic(1) = TempMapData(tX, Y).Graphic(1)
470             MapData(X, Y).Graphic(2) = TempMapData(tX, Y).Graphic(2)
480             MapData(X, Y).Graphic(3) = TempMapData(tX, Y).Graphic(3)
490             MapData(X, Y).Graphic(4) = TempMapData(tX, Y).Graphic(4)
500             MapData(X, Y).OBJInfo.objindex = TempMapData(tX, Y).OBJInfo.objindex
510             MapData(X, Y).OBJInfo.Amount = TempMapData(tX, Y).OBJInfo.Amount
                'MapData(X, Y).ObjGrh.GrhIndex = TempMapData(TX, Y).ObjGrh.GrhIndex
520         Next X
530     Next Y
540     frmUnionAdyacente.Caption = "Ready ;)!..."
550 End If
560 If Mapa(1).Text > -1 And Aplicar(1).value = 1 Then
570     X = PosLim(2).Text
580     For Y = (PosLim(1).Text + 1) To (PosLim(0).Text - 1)
590         If MapData(X, Y).Blocked = 0 Then
600             MapData(X, Y).TileExit.Map = Mapa(1).Text
610             If Mapa(1).Text = 0 Then
620                 MapData(X, Y).TileExit.X = 0
630                 MapData(X, Y).TileExit.Y = 0
640             Else
650                 MapData(X, Y).TileExit.X = PosLim(6).Text
660                 MapData(X, Y).TileExit.Y = Y
670             End If
680         End If
690     Next
700 End If

    ' ABAJO
710 If Mapa(2).Text > -1 And AutoMapeo(2).value = 1 Then
720     frmUnionAdyacente.Caption = "Cargando mapa temporal..."
730     Call TempMapa_Cargar(PATH_Save & NameMap_Save & Mapa(2).Text & ".map")
740     DoEvents
750     frmUnionAdyacente.Caption = "¡Finish! Copiando mapa..."
760     For X = 1 To XMaxMapSize
770         For Y = PosLim(0).Text + 1 To YMaxMapSize
780             tY = YMaxMapSize + Y - PosLim(0).Text * 2 - 1
790             MapData(X, Y).Graphic(1) = TempMapData(X, tY).Graphic(1)
800             MapData(X, Y).Graphic(2) = TempMapData(X, tY).Graphic(2)
810             MapData(X, Y).Graphic(3) = TempMapData(X, tY).Graphic(3)
820             MapData(X, Y).Graphic(4) = TempMapData(X, tY).Graphic(4)
830             MapData(X, Y).OBJInfo.objindex = TempMapData(X, tY).OBJInfo.objindex
840             MapData(X, Y).OBJInfo.Amount = TempMapData(X, tY).OBJInfo.Amount
                'MapData(X, Y).ObjGrh.GrhIndex = TempMapData(X, TY).ObjGrh.GrhIndex
850         Next Y
860     Next X
870     frmUnionAdyacente.Caption = "Ready ;)!..."
880 End If

890 If Mapa(2).Text > -1 And Aplicar(2).value = 1 Then
900     Y = PosLim(0).Text
910     For X = (PosLim(3).Text + 1) To (PosLim(2).Text - 1)
920         If MapData(X, Y).Blocked = 0 Then
930             MapData(X, Y).TileExit.Map = Mapa(2).Text
940             If Mapa(2).Text = 0 Then
950                 MapData(X, Y).TileExit.X = 0
960                 MapData(X, Y).TileExit.Y = 0
970             Else
980                 MapData(X, Y).TileExit.X = X
990                 MapData(X, Y).TileExit.Y = PosLim(5).Text
1000            End If
1010        End If
1020    Next
1030 End If

    ' IZQUIERDA
1040 If Mapa(3).Text > -1 And AutoMapeo(3).value = 1 Then
1050    frmUnionAdyacente.Caption = "Cargando mapa temporal..."
1060    Call TempMapa_Cargar(PATH_Save & NameMap_Save & Mapa(3).Text & ".map")
1070    DoEvents
1080    frmUnionAdyacente.Caption = "¡Finish! Copiando mapa..."
1090    For Y = 1 To YMaxMapSize
1100        For X = 1 To PosLim(3).Text - 1
1110            tX = X + XMaxMapSize - PosLim(3).Text * 2 + 1
1120            MapData(X, Y).Graphic(1) = TempMapData(tX, Y).Graphic(1)
1130            MapData(X, Y).Graphic(2) = TempMapData(tX, Y).Graphic(2)
1140            MapData(X, Y).Graphic(3) = TempMapData(tX, Y).Graphic(3)
1150            MapData(X, Y).Graphic(4) = TempMapData(tX, Y).Graphic(4)
1160            MapData(X, Y).OBJInfo.objindex = TempMapData(tX, Y).OBJInfo.objindex
1170            MapData(X, Y).OBJInfo.Amount = TempMapData(tX, Y).OBJInfo.Amount
                'MapData(X, Y).ObjGrh.GrhIndex = TempMapData(TX, Y).ObjGrh.GrhIndex
1180        Next X
1190    Next Y
1200    frmUnionAdyacente.Caption = "Ready ;)!..."
1210 End If
1220 If Mapa(3).Text > -1 And Aplicar(3).value = 1 Then
1230    X = PosLim(3).Text
1240    For Y = (PosLim(1).Text + 1) To (PosLim(0).Text - 1)
1250        If MapData(X, Y).Blocked = 0 Then
1260            MapData(X, Y).TileExit.Map = Mapa(3).Text
1270            If Mapa(3).Text = 0 Then
1280                MapData(X, Y).TileExit.X = 0
1290                MapData(X, Y).TileExit.Y = 0
1300            Else
1310                MapData(X, Y).TileExit.X = PosLim(7).Text
1320                MapData(X, Y).TileExit.Y = Y
1330            End If
1340        End If
1350    Next
1360 End If

    'Set changed flag
1370 MapInfo(CurMap).Changed = 1
1380 DoEvents

1390 Unload Me

    On Error GoTo 0
    Exit Sub

cmdAplicar_Click_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento cmdAplicar_Click de Formulario frmUnionAdyacente línea: " & Erl())
End Sub

Private Sub cmdCancelar_Click()
    Unload Me
End Sub

Private Sub cmdDefault_Click()
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************
    Me.PopupMenu mnuDefault
End Sub

''
'   Lee los Translados existentes en lugares claves en el Mapa
'

Private Sub LeerMapaExit()
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************


Dim X                           As Integer
Dim Y                           As Integer

    ' ARRIBA
    On Error GoTo LeerMapaExit_Error

10  Mapa(0).Text = 0
20  Y = PosLim(1).Text
30  For X = (PosLim(3).Text + 1) To (PosLim(2).Text - 1)
40      If MapData(X, Y).TileExit.Map > 0 Then
50          Mapa(0).Text = MapData(X, Y).TileExit.Map
60          Exit For
70      End If
80  Next
90  Aplicar(0).value = 0

    ' DERECHA
100 Mapa(1).Text = 0
110 X = PosLim(2).Text
120 For Y = (PosLim(1).Text + 1) To (PosLim(0).Text - 1)
130     If MapData(X, Y).TileExit.Map > 0 Then
140         Mapa(1).Text = MapData(X, Y).TileExit.Map
150         Exit For
160     End If
170 Next
180 Aplicar(1).value = 0

    ' ABAJO
190 Mapa(2).Text = 0
200 Y = PosLim(0).Text
210 For X = (PosLim(3).Text + 1) To (PosLim(2).Text - 1)
220     If MapData(X, Y).TileExit.Map > 0 Then
230         Mapa(2).Text = MapData(X, Y).TileExit.Map
240         Exit For
250     End If
260 Next
270 Aplicar(2).value = 0

    ' IZQUIERDA
280 Mapa(3).Text = 0
290 X = PosLim(3).Text
300 For Y = (PosLim(1).Text + 1) To (PosLim(0).Text - 1)
310     If MapData(X, Y).TileExit.Map > 0 Then
320         Mapa(3).Text = MapData(X, Y).TileExit.Map
330         Exit For
340     End If
350 Next
360 Aplicar(3).value = 0


    On Error GoTo 0
    Exit Sub

LeerMapaExit_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento LeerMapaExit de Formulario frmUnionAdyacente línea: " & Erl())

End Sub

Private Sub Form_Load()
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************
    Call mnuBasica_Click
End Sub

Private Sub Mapa_Change(index As Integer)
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************
    Aplicar(index).value = 1
End Sub

Private Sub Mapa_KeyPress(index As Integer, KeyAscii As Integer)
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************
    If IsNumeric(Chr(KeyAscii)) = False And KeyAscii <> 8 Then
        KeyAscii = 0
        Exit Sub
    End If

End Sub

Private Sub Mapa_KeyUp(index As Integer, KeyCode As Integer, Shift As Integer)
'*************************************************
'Author: ^[GS]^
'Last modified: 15/10/06
'*************************************************
    If LenB(Mapa(index).Text) = 0 Then Mapa(index).Text = 0
    If Mapa(index).Text > 1024 Then Mapa(index).Text = 1024
End Sub

Private Sub mnuBasica_Click()
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************
'PosLim(0).Text = 91
'PosLim(1).Text = 10
'PosLim(2).Text = 90
'PosLim(3).Text = 11
'PosLim(4).Text = 90
'PosLim(5).Text = 11
'PosLim(6).Text = 12
'PosLim(7).Text = 89
    Call LeerMapaExit
End Sub

Private Sub mnuLegal_Click()
'*************************************************
'Author: ^[GS]^
'Last modified: 02/10/06
'*************************************************
    PosLim(0).Text = MaxYBorder
    PosLim(1).Text = MinYBorder
    PosLim(2).Text = MaxXBorder
    PosLim(3).Text = MinXBorder
    PosLim(4).Text = MaxYBorder - 1
    PosLim(5).Text = MinYBorder + 1
    PosLim(6).Text = MinXBorder + 1
    PosLim(7).Text = MaxXBorder - 1
    Call LeerMapaExit
End Sub

Private Sub mnuUlla_Click()
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************
'PosLim(0).Text = 94
'PosLim(1).Text = 7
'PosLim(2).Text = 92
'PosLim(3).Text = 9
'PosLim(4).Text = 93
'PosLim(5).Text = 8
'PosLim(6).Text = 10
'PosLim(7).Text = 91
    Call LeerMapaExit
End Sub

Private Sub PosLim_KeyPress(index As Integer, KeyAscii As Integer)
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************

    If IsNumeric(Chr(KeyAscii)) = False And KeyAscii <> 8 Then
        KeyAscii = 0
        Exit Sub
    End If

End Sub

Private Sub PosLim_KeyUp(index As Integer, KeyCode As Integer, Shift As Integer)
'*************************************************
'Author: ^[GS]^
'Last modified: 26/05/06
'*************************************************

    On Error GoTo PosLim_KeyUp_Error

10  If LenB(PosLim(index).Text) = 0 Then PosLim(index).Text = 1
20  If PosLim(index).Text > 1200 Then PosLim(index) = 1200
30  If PosLim(index).Text < 1 Then PosLim(index) = 1

    Dim Y                       As Integer
    Dim X                       As Integer

    ' ARRIBA
40  Y = PosLim(1).Text
50  For X = (PosLim(3).Text + 1) To (PosLim(2).Text - 1)
60      If MapData(X, Y).TileExit.Map > 0 Then
70          Mapa(0).Text = MapData(X, Y).TileExit.Map
80          Aplicar(0).value = 0
90          Exit For
100     End If
110 Next

    ' DERECHA
120 X = PosLim(2).Text
130 For Y = (PosLim(1).Text + 1) To (PosLim(0).Text - 1)
140     If MapData(X, Y).TileExit.Map > 0 Then
150         Mapa(1).Text = MapData(X, Y).TileExit.Map
160         Aplicar(1).value = 0
170         Exit For
180     End If
190 Next

    ' ABAJO
200 Y = PosLim(0).Text
210 For X = (PosLim(3).Text + 1) To (PosLim(2).Text - 1)
220     If MapData(X, Y).TileExit.Map > 0 Then
230         Mapa(2).Text = MapData(X, Y).TileExit.Map
240         Aplicar(2).value = 0
250         Exit For
260     End If
270 Next

    ' IZQUIERDA
280 X = PosLim(3).Text
290 For Y = (PosLim(1).Text + 1) To (PosLim(0).Text - 1)
300     If MapData(X, Y).TileExit.Map > 0 Then
310         Mapa(3).Text = MapData(X, Y).TileExit.Map
320         Aplicar(3).value = 0
330         Exit For
340     End If
350 Next

    On Error GoTo 0
    Exit Sub

PosLim_KeyUp_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento PosLim_KeyUp de Formulario frmUnionAdyacente línea: " & Erl())

End Sub
