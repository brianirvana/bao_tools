VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsEngine"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
'clsEngine - Programado por MaTeO - 18:23hs 13/05/2012
'Changelog (ultima modificacion 13/05/2012):
'13/05/2012 - Primer release de la clase, en esta clase tendra todo lo relacionado a motor grafico.

'Libreria de Entropia para dibujar con DirectX8
Public EngineLibrary            As Engine

Private RenderText              As New Text

'Función de inicialización
Public Function Initialize(hwnd As Long, Windowed As Boolean, Form As Object, Res_Width As Integer, Res_Height As Integer, Res_BitColor As Byte, BackBuffer As Byte) As Boolean

    'Iniciamos la libreria de renderización
    Set EngineLibrary = New Engine

    'Variable para saber si se inicializo correctamente
    Dim Init                    As Boolean

    'Iniciamos el engine con los parametros correspondientes
    Init = EngineLibrary.Init(hwnd, Windowed, Form, Res_Width, Res_Height, Res_BitColor, True, BackBuffer)

    'En caso de una mala inicializacion, marcamos el error
    'If Not (Init) Then
    '    Call modErrorMsg.Error_Initialize_Engine
    'End If

    'Seteamos el Path para dejar trabajar a la libreria
    EngineLibrary.Set_Program_Path App.Path

    'Reseteamos los estados del render
    EngineLibrary.Reset_RenderStates

    Set RenderText = New Text

    RenderText.Init_Fonts App.Path & "/Font.png"
End Function

'Terminamos y cerramos todo
Public Function Terminate()
    'Borramos de la memoria las variables
    Set EngineLibrary = Nothing
    Set RenderText = Nothing
End Function

'Comenzamos la escena en el motor grafico
Public Function Begin_Scene()
    On Error Resume Next
    EngineLibrary.BeginScene
End Function

'Finalizamos la escena en el motor grafico
Public Function End_Scene()
    On Error Resume Next
    EngineLibrary.EndScene
End Function

Public Function Draw_Text_MultiLine(ByRef Text As String, X As Single, Y As Single, Color As Long)

Dim lines()                     As String
Dim max                         As Long
Dim i                           As Long
    
    lines = Split(Text, vbCrLf)
    max = UBound(lines)
    For i = 0 To max
        RenderText.Render_String lines(i), X + 0, Y + i * 8, 8, 8, Color    'ES DEMASIADO LOCO, LE TUBE QUE PONER X+0 PORQUE NO ENTIENDO PORQUE SE VAN CAMBIANDO LOS VALORES :|
    Next i

End Function

Public Function Draw_Text(ByRef Text As String, X As Single, Y As Single, Color As Long)
    On Error GoTo Draw_Text_Error

10  RenderText.Render_String Text, X, Y, 8, 8, Color

    On Error GoTo 0
    Exit Function

Draw_Text_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure Draw_Text of Módulo de clase clsEngine Linea: " & Erl())
End Function

Public Function DisplayFPS(ByRef Active As Boolean)
    EngineLibrary.DisplayFPS = Active
End Function

Public Function DrawFPS(Optional ByVal X As Single = 0, Optional ByVal Y As Single = 0, Optional ByVal Color As Long = &HFFFFFFFF)

    On Error GoTo DrawFPS_Error

10  If EngineLibrary.FPS Then
20      Call Draw_Text("FPS: " & EngineLibrary.FPS, X, Y, Color)
30  Else
40      Call Draw_Text("Loading..", X, Y, Color)
50  End If

    On Error GoTo 0
    Exit Function

DrawFPS_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure DrawFPS of Módulo de clase clsEngine Linea: " & Erl())

End Function

'Public Sub LoadAnimation(TexNum As Long, GrhIndex As Integer, NumFrames As Integer, Width As Long, Height As Long)
'    Set SD = Nothing
'    Set SD = New Sprite
'    SD.Create_Static TexNum
'    SD.Create_Animation NumFrames
'    Dim i As Long
'    For i = 1 To NumFrames
'        If GrhData(GrhIndex).Frames(i) Then
'            With GrhData(GrhData(GrhIndex).Frames(i))
'                Call SD.AddFrame(TexNum, .pixelWidth, .pixelHeight, , , .sX, .sY, .sX + .pixelWidth, .sY + .pixelHeight)
'            End With
'        End If
'    Next i
'    SD.Update_Size Width, Height
'End Sub

Public Sub DrawGraphic(ByRef SP As Sprite, X As Single, Y As Single, Escala As Single)

    'Call GameTexture.TexFactory.Draw_Texture(TexNum, X, Y, Width, Height, , , , , , , , , Escala, Escala)
    If Not (SP Is Nothing) Then
        SP.Update_Pos X, Y
        SP.Update_Scale Escala, Escala
        SP.Draw

        'Debug.Print "Sprite num: " & SP.GetCurrentSubFrame

    End If
    'Call EngineLibrary.Draw_Texture(Tex, X, Y, Width, Height, , , , , , , , , Escala, Escala)

End Sub

Public Sub Resize()
    Call EngineLibrary.Change_Resolution(1, 1980, 1280)
End Sub
