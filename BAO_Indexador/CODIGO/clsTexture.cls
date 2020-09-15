VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsTexture"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'Option Explicit
''clsTexture - Programado por MaTeO - 18:28hs 13/05/2012
''Changelog (ultima modificacion 13/05/2012):
''13/05/2012 - Primer release de la clase, en esta clase tendra todo lo relacionado a texturas
'
''Variable de control de texturas
'Private Type TEXT_DB_ENTRY
'    FileName As Integer
'    UltimoAcceso As Long
'    texture As TextureFactory
'    Alto As Single
'    Ancho As Single
'    Size As Long
'    png As Byte
'End Type
'
'Private Tabla() As Integer
'Private TablaMax As Long
'
'Public mGraficos() As TEXT_DB_ENTRY
'
'Private mMaxEntries As Integer
'Private mCantidadGraficos As Integer
'Private mFreeMemoryBytes As Long
'
'Private GrhPath As String
'
Public TexFactory() As TextureFactory
''Iniciamos la clase
Public Function Initialize()
    ReDim TexFactory(32000) As TextureFactory
    'Set TexFactory = New TextureFactory
End Function
Public Function Terminate()
    'Set TexFactory = Nothing
End Function
Public Function Load_Texture(FileNum As Integer) As Long
    If TexFactory(FileNum) Is Nothing Then
        Load_Texture = TexFactory.Load_Texture(AppGraficos & "\" & FileNum & IIf(AppPNG, ".png", ".bmp"))
    End If
End Function
'    ReDim Tabla(32767)
'    TablaMax = 32767
'
'    mMaxEntries = 500
'End Function
'
''Terminamos la clase y borramos todo
'    Dim i As Long
'
'    For i = 1 To mCantidadGraficos
'        Set mGraficos(i).texture = Nothing
'    Next i
'
'    Erase mGraficos
'End Function
'Public Function GetTexture(ByVal FileName As Integer) As Direct3DTexture8
'If last_texture <> FileName Then
'    Dim Index As Integer
'    If TablaMax >= FileName Then
'        If Tabla(FileName) <> 0 Then
'            With mGraficos(Tabla(FileName))
'                .UltimoAcceso = GetTickCount
'                GetTexture = .texture.Get_Tex_Texture(
'                last_texture = FileName
'            End With
'        Else
'            If mMaxEntries = mCantidadGraficos Then
'                'Sacamos el que hace más que no usamos, y utilizamos el slot
'                Index = CrearGrafico(FileName, surface_desc, BorraMenosUsado())
'                D3DDevice.SetTexture stage, mGraficos(Index).texture
'                last_texture = FileName
'            Else
'                'Agrego una textura nueva a la lista
'                Index = CrearGrafico(FileName, surface_desc)
'                D3DDevice.SetTexture stage, mGraficos(Index).texture
'                last_texture = FileName
'            End If
'            Tabla(FileName) = Index
'        End If
'    Else
'        ReDim Preserve Tabla(FileName)
'        TablaMax = FileName
'        If mMaxEntries = mCantidadGraficos Then
'            'Sacamos el que hace más que no usamos, y utilizamos el slot
'            Index = CrearGrafico(FileName, surface_desc, BorraMenosUsado())
'            D3DDevice.SetTexture stage, mGraficos(Index).texture
'            last_texture = FileName
'        Else
'            'Agrego una textura nueva a la lista
'            Index = CrearGrafico(FileName, surface_desc)
'            D3DDevice.SetTexture stage, mGraficos(Index).texture
'            last_texture = FileName
'        End If
'        Tabla(FileName) = Index
'    End If
'Else
'    If Tabla(FileName) Then mGraficos(Tabla(FileName)).texture.GetLevelDesc 0, surface_desc
'End If
'End Function
