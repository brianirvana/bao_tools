VERSION 5.00
Begin VB.Form frmRenderer 
   Caption         =   "Renderizando....."
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   ScaleHeight     =   206
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   312
   StartUpPosition =   1  'CenterOwner
   WhatsThisHelp   =   -1  'True
   Begin VB.PictureBox Picture2 
      Height          =   1215
      Left            =   120
      ScaleHeight     =   1155
      ScaleWidth      =   915
      TabIndex        =   1
      Top             =   360
      Width           =   975
   End
   Begin VB.PictureBox Picture1 
      Height          =   7335
      Left            =   2160
      ScaleHeight     =   485
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   653
      TabIndex        =   0
      Top             =   240
      Width           =   9855
   End
   Begin VB.Image Smallpic 
      Height          =   5535
      Left            =   0
      Stretch         =   -1  'True
      Top             =   0
      Width           =   6135
   End
End
Attribute VB_Name = "frmRenderer"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
