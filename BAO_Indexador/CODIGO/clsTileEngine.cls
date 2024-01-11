VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsTileEngine"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
'clsTileEngine - Programado por MaTeO - 18:46hs 13/05/2012
'Changelog (ultima modificacion 13/05/2012):
'13/05/2012 - Primer release de la clase, en esta clase tendra todo sobre el dibujo en pantalla

Private Info                    As String
Private i                       As Long
Private FileNum                 As Integer

'Motor grafico
Public System                   As System
Private GameEngine              As clsEngine
Private LoopRunning             As Boolean
Private ProgramStatus           As String
Public MousePress               As Long
Private MouseButtons(1 To 4)    As Boolean

Public RenderStyle              As Long
Public Encuadrar                As Boolean
Public EncuadrarGrafico         As Boolean
Public VerTamaño                As Boolean
Private GraphicX                As Single
Private GraphicY                As Single
Public ZoomTempX                As Single
Public TempX                    As Single
Public TempY                    As Single
Private TexIndex                As Long
Private TexWidth                As Long
Private TexHeight               As Long
Public RenderMouseX             As Single
Public RenderMouseY             As Single
Public ResizeMode               As Byte
Public ResizeIndex              As Long
Public Escala                   As Single
Public FPS                      As Long
Public FramesPerSecCounter      As Long
Private fpsLastCheck            As Long

Public Sub LiberarMemoria()
    TexFactory.Clear
    ReDim TexList(32000) As Long
End Sub

Public Sub ChangeRenderStyle(Num As Integer)
   On Error GoTo ChangeRenderStyle_Error

10        RenderStyle = Num
20        If NumGraphic Then
30            If GrhData(NumGraphic).NumFrames > 1 Then
40                Call LoadSpriteAnimation(SP_Main, NumGraphic)
50            Else
60                Call LoadSprite(SP_Main, NumGraphic)
70            End If
80        End If

   On Error GoTo 0
   Exit Sub

ChangeRenderStyle_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure ChangeRenderStyle of Módulo de clase clsTileEngine Linea: " & Erl())
End Sub

Public Function Load_Texture(GrhIndex As Integer) As Long

   On Error GoTo Load_Texture_Error

10        With GrhData(GrhIndex)

20            FileNum = .FileNum
30            If TexList(FileNum) = 0 Then
40                TexList(FileNum) = TexFactory.Load_Texture(AppGraficos & "\" & FileNum & IIf(AppPNG, ".png", ".bmp"))
50            End If

              'CLng(GrhData(NumGraphic).sX), CLng(GrhData(NumGraphic).sY), CLng(GrhData(NumGraphic).pixelWidth), CLng(GrhData(NumGraphic).pixelHeight)
60            Load_Texture = TexList(FileNum)
70        End With

   On Error GoTo 0
   Exit Function

Load_Texture_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure Load_Texture of Módulo de clase clsTileEngine Linea: " & Erl())
          
End Function

Public Function LoadSprite(ByRef SP As Sprite, GrhIndex As Integer)

    On Error GoTo LoadSprite_Error

20  With GrhData(GrhIndex)

30      FileNum = .FileNum

        'Set SP = New Sprite
40      Call Load_Texture(GrhIndex)

50      If SP Is Nothing Then Set SP = New Sprite: Debug.Print "Reload Static!"

60      SP.Create_Static TexList(FileNum)
70      SP.Update_Size TexFactory.Get_Tex_Width(TexList(FileNum)), TexFactory.Get_Tex_Height(TexList(FileNum))


80      Select Case RenderStyle    '<-- Tipo de Render (Estilo 1 y 2)
            Case 0, 2          '<-- Cuando esta en estilo 1
90              SP.Update_Sprite_Rect CLng(.sX), CLng(.sY), CLng(.sX + .pixelWidth), CLng(.sY + .pixelHeight)
100         Case 1             '<-- Cuando esta en estilo 2
110             SP.Update_Sprite_Rect 0, 0, TexFactory.Get_Tex_Width(TexList(FileNum)), TexFactory.Get_Tex_Height(TexList(FileNum))
120     End Select
130 End With

140 On Error GoTo 0
150 Exit Function

LoadSprite_Error:
160 Set SP = Nothing
    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure LoadSprite of Módulo de clase clsTileEngine Linea: " & Erl())
End Function

Public Function LoadSpriteAnimation(ByRef SP As Sprite, GrhIndex As Integer)

    On Error GoTo LoadSpriteAnimation_Error

20  With GrhData(GrhIndex)

30      FileNum = .FileNum

40      If RenderStyle = 1 Then
50          ProgramStatus = "El estilo 2 no tolera animaciones."
60      Else
70          ProgramStatus = vbNullString
80      End If

90      Set SP = New Sprite

100     SP.Create_Animation    ' CLng(.NumFrames)
110     SP.AnimSpeed = .NumFrames / .speed / 4

120     For i = 1 To .NumFrames
130         If .Frames(i) > 0 Then
140             Call Load_Texture(CInt(.Frames(i)))
150             SP.AddFrame TexList(GrhData(.Frames(i)).FileNum)    ', CLng(GrhData(.Frames(i)).pixelWidth), CLng(GrhData(.Frames(i)).pixelHeight), , , CLng(GrhData(.Frames(i)).sX), CLng(GrhData(.Frames(i)).sY), CLng(GrhData(.Frames(i)).sX + GrhData(.Frames(i)).pixelWidth), CLng(GrhData(.Frames(i)).sY + GrhData(.Frames(i)).pixelHeight)
160             SP.Update_Sprite_Rect CLng(GrhData(.Frames(i)).sX), CLng(GrhData(.Frames(i)).sY), CLng(GrhData(.Frames(i)).sX + GrhData(.Frames(i)).pixelWidth), CLng(GrhData(.Frames(i)).sY + GrhData(.Frames(i)).pixelHeight), i
170         End If
            'SP.Update_Size TexFactory.Get_Tex_Width(TexList(FileNum)), TexFactory.Get_Tex_Height(TexList(FileNum)), i
180     Next i

190     If .NumFrames = 2 Then
200         i = 2
210         If .Frames(i) > 0 Then
220             Call Load_Texture(CInt(.Frames(i)))
230             SP.AddFrame TexList(GrhData(.Frames(i)).FileNum)    ', CLng(GrhData(.Frames(i)).pixelWidth), CLng(GrhData(.Frames(i)).pixelHeight), , , CLng(GrhData(.Frames(i)).sX), CLng(GrhData(.Frames(i)).sY), CLng(GrhData(.Frames(i)).sX + GrhData(.Frames(i)).pixelWidth), CLng(GrhData(.Frames(i)).sY + GrhData(.Frames(i)).pixelHeight)
240             SP.Update_Sprite_Rect CLng(GrhData(.Frames(i)).sX), CLng(GrhData(.Frames(i)).sY), CLng(GrhData(.Frames(i)).sX + GrhData(.Frames(i)).pixelWidth), CLng(GrhData(.Frames(i)).sY + GrhData(.Frames(i)).pixelHeight), i
250         End If
260     End If

        'SP.Create_Static TexList(FileNum)

        '    Select Case RenderStyle '<-- Tipo de Render (Estilo 1 y 2)
        '       Case 0 '<-- Cuando esta en estilo 1
        '           SP.Update_Sprite_Rect CLng(GrhData(.Frames(i)).sX), CLng(GrhData(.Frames(i)).sY), CLng(GrhData(.Frames(i)).sX + GrhData(.Frames(i)).pixelWidth), CLng(GrhData(.Frames(i)).sY + GrhData(.Frames(i)).pixelHeight)
        '       Case 1 '<-- Cuando esta en estilo 2
        '           SP.Update_Sprite_Rect 0, 0, TexFactory.Get_Tex_Width(TexList(FileNum)), TexFactory.Get_Tex_Height(TexList(FileNum))
        '    End Select
        
270 End With

280 On Error GoTo 0
290 Exit Function

LoadSpriteAnimation_Error:
300 Set SP = Nothing
    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure LoadSpriteAnimation of Módulo de clase clsTileEngine Linea: " & Erl())

End Function

'Iniciamos la clase
Public Function Initialize()
      'Iniciamos el motor grafico
   On Error GoTo Initialize_Error

10        Set GameEngine = New clsEngine

          'Iniciamos las texturas
20        Set TexFactory = New TextureFactory
30        ReDim TexList(32000) As Long

40        Set System = New System

50        Set SP_Main = New Sprite
60        Set SP_Main = New Sprite
70        Set SP_Anim = New Sprite
80        Set SP_Fondo = New Sprite

          Dim i                       As Long
90        For i = 0 To 3
100           Set SP_Armas(i) = New Sprite
110           Set SP_Cabezas(i) = New Sprite
120           Set SP_Cascos(i) = New Sprite
130           Set SP_Cuerpos(i) = New Sprite
140           Set SP_Escudos(i) = New Sprite
150       Next i
160       Set SP_Efectos = New Sprite

170       Call GameEngine.Initialize(frmMain.renderer.hwnd, True, frmMain, frmMain.renderer.Width, frmMain.renderer.Height, 32, 3)

180       Escala = 1

   On Error GoTo 0
   Exit Function

Initialize_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure Initialize of Módulo de clase clsTileEngine Linea: " & Erl())
End Function

'Terminamos la clase y borramos todo
Public Function Terminate()

'Hacemos que el motor grafico se elimine
    GameEngine.Terminate
End Function
Public Sub ResizeGraphic(Index As Integer, Mode As Byte)
   On Error GoTo ResizeGraphic_Error

10        If Mode <> ResizeMode Then
20            ResizeIndex = Index
30            ResizeMode = Mode
40            Select Case Mode
                  Case 1, 2
50                    frmMain.MousePointer = 9
60                Case 3, 4
70                    frmMain.MousePointer = 7
80                Case Else
90                    frmMain.MousePointer = 0
100           End Select
110       End If

   On Error GoTo 0
   Exit Sub

ResizeGraphic_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure ResizeGraphic of Módulo de clase clsTileEngine Linea: " & Erl())
End Sub

Private Sub EfectosGraficos(ByVal Index As Integer, ByVal BaseX As Integer, ByVal BaseY As Integer)

      Dim EjesX(3) As Single, EjesY(3) As Single
      Dim i                           As Long

   On Error GoTo EfectosGraficos_Error

10        If EncuadrarGrafico Then       '<-- Cuando tiene que encuadrar hace esto
20            With GrhData(Index)
30                EjesX(0) = BaseX
40                EjesY(0) = BaseY
50                EjesX(1) = BaseX + TexFactory.Get_Tex_Width(TexList(.FileNum)) * Escala
60                EjesY(1) = BaseY
70                EjesX(2) = BaseX
80                EjesY(2) = BaseY + TexFactory.Get_Tex_Height(TexList(.FileNum)) * Escala
90                EjesX(3) = BaseX + TexFactory.Get_Tex_Width(TexList(.FileNum)) * Escala
100               EjesY(3) = BaseY + TexFactory.Get_Tex_Height(TexList(.FileNum)) * Escala

110               If RenderStyle = 0 Then
120                   For i = 0 To 3
130                       EjesX(i) = EjesX(i) - .sX * Escala
140                       EjesY(i) = EjesY(i) - .sY * Escala
150                   Next i
160               End If

170               Call GameEngine.EngineLibrary.Draw_Line(EjesX(0), EjesY(0), EjesX(1), EjesY(1), D3DColorRGBA(0, 255, 0, 255), D3DColorRGBA(0, 255, 0, 255))
180               Call GameEngine.EngineLibrary.Draw_Line(EjesX(0), EjesY(0), EjesX(2), EjesY(2), D3DColorRGBA(0, 255, 0, 255), D3DColorRGBA(0, 255, 0, 255))
190               Call GameEngine.EngineLibrary.Draw_Line(EjesX(3), EjesY(3), EjesX(1), EjesY(1), D3DColorRGBA(0, 255, 0, 255), D3DColorRGBA(0, 255, 0, 255))
200               Call GameEngine.EngineLibrary.Draw_Line(EjesX(3), EjesY(3), EjesX(2), EjesY(2), D3DColorRGBA(0, 255, 0, 255), D3DColorRGBA(0, 255, 0, 255))

210               If VerTamaño Then
220                   Call GameEngine.Draw_Text(CStr(TexFactory.Get_Tex_Width(TexList(.FileNum))) & "p", EjesX(0) + (EjesX(3) - EjesX(0)) / 2 - 14, EjesY(3) + 1, D3DColorRGBA(0, 255, 0, 255))
230                   Call GameEngine.Draw_Text(CStr(TexFactory.Get_Tex_Height(TexList(.FileNum))) & "p", EjesX(0) - 33, EjesY(0) + (EjesY(3) - EjesY(0)) / 2, D3DColorRGBA(0, 255, 0, 255))
240               End If
250           End With
260       End If
          
270       If Encuadrar Then          '<-- Cuando tiene que encuadrar hace esto
280           With GrhData(Index)
290               EjesX(0) = BaseX
300               EjesY(0) = BaseY
310               EjesX(1) = BaseX + .pixelWidth * Escala
320               EjesY(1) = BaseY
330               EjesX(2) = BaseX
340               EjesY(2) = BaseY + .pixelHeight * Escala
350               EjesX(3) = BaseX + .pixelWidth * Escala
360               EjesY(3) = BaseY + .pixelHeight * Escala
370               If RenderStyle = 1 Then
380                   For i = 0 To 3
390                       EjesX(i) = EjesX(i) + .sX * Escala
400                       EjesY(i) = EjesY(i) + .sY * Escala
410                   Next i
420               End If

430               Call GameEngine.EngineLibrary.Draw_Line(EjesX(0), EjesY(0), EjesX(1), EjesY(1), D3DColorRGBA(255, 255, 255, 255), D3DColorRGBA(255, 255, 255, 255))
440               Call GameEngine.EngineLibrary.Draw_Line(EjesX(0), EjesY(0), EjesX(2), EjesY(2), D3DColorRGBA(255, 255, 255, 255), D3DColorRGBA(255, 255, 255, 255))
450               Call GameEngine.EngineLibrary.Draw_Line(EjesX(3), EjesY(3), EjesX(1), EjesY(1), D3DColorRGBA(255, 255, 255, 255), D3DColorRGBA(255, 255, 255, 255))
460               Call GameEngine.EngineLibrary.Draw_Line(EjesX(3), EjesY(3), EjesX(2), EjesY(2), D3DColorRGBA(255, 255, 255, 255), D3DColorRGBA(255, 255, 255, 255))

                  '0 1
                  '2 3
470               If MouseButtons(1) = False And .NumFrames = 1 And (ResizeIndex = Index Or ResizeIndex = 0) Then
480                   If Abs(EjesX(0) - RenderMouseX) <= 2 And RenderMouseY > EjesY(0) And RenderMouseY < EjesY(2) And RenderStyle = 1 Then
490                       Call ResizeGraphic(Index, 1)    'sX
500                   ElseIf Abs(EjesX(1) - RenderMouseX) <= 2 And RenderMouseY > EjesY(1) And RenderMouseY < EjesY(3) Then
510                       Call ResizeGraphic(Index, 2)    'Width
520                   ElseIf Abs(EjesY(0) - RenderMouseY) <= 2 And RenderMouseX > EjesX(0) And RenderMouseX < EjesX(1) And RenderStyle = 1 Then
530                       Call ResizeGraphic(Index, 3)    'sY
540                   ElseIf Abs(EjesY(2) - RenderMouseY) <= 2 And RenderMouseX > EjesX(2) And RenderMouseX < EjesX(3) Then
550                       Call ResizeGraphic(Index, 4)    'Height
560                   Else
570                       Call ResizeGraphic(0, 0)
580                   End If
590               End If

600               If VerTamaño Then
610                   Call GameEngine.Draw_Text(CStr(.pixelWidth) & "p", EjesX(0) + (EjesX(3) - EjesX(0)) / 2 - 14, EjesY(0) - 8, D3DColorRGBA(255, 255, 255, 255))
620                   Call GameEngine.Draw_Text(CStr(.pixelHeight) & "p", EjesX(3) + 1, EjesY(0) + (EjesY(3) - EjesY(0)) / 2, D3DColorRGBA(255, 255, 255, 255))
630               End If
640           End With
650       End If

   On Error GoTo 0
   Exit Sub

EfectosGraficos_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure EfectosGraficos of Módulo de clase clsTileEngine Linea: " & Erl())
End Sub

Private Sub DrawAnimGraphic(ByVal Index As Integer, ByVal X As Integer, ByVal Y As Integer)

   On Error GoTo DrawAnimGraphic_Error

10        Call GameEngine.Draw_Text(GetDirectionString(Index), CSng(X), CSng(Y), D3DColorRGBA(0, 255, 255, 255))
          
          Dim BodyDatas               As BodyData
          Dim OffsetX                 As Integer
          Dim OffsetY                 As Integer

          'If Index = 3 Then Stop
          
20        If NumGraphic_Cuerpos(Index) Then
30            BodyDatas = BodyData(NumAnim_Cuerpos)
40            Call GameEngine.Draw_Text("OffSet: " & BodyDatas.HeadOffset.X & " - " & BodyDatas.HeadOffset.Y, 0, 0, D3DColorRGBA(0, 255, 255, 255))

50            Call GameEngine.Draw_Text("Center: " & CenterX(NumGraphic_Cuerpos(Index)) & " - " & CenterY(NumGraphic_Cuerpos(Index)), 0, 10, D3DColorRGBA(0, 255, 255, 255))

60            Call DrawAnimGraphicCenter(SP_Cuerpos(Index), NumGraphic_Cuerpos(Index), X, Y)
              
              'Debug.Print "GRH body: " & GrhData(BodyDatas.Walk(3).GrhIndex).Frames(1)
70        End If

80        If NumGraphic_Cabezas(Index) Then
              'Call GameEngine.DrawGraphic(SP_Cabezas(Index), X + BodyDatas.HeadOffset.X, Y + 10 + BodyDatas.HeadOffset.Y + IIf(GrhData(HeadData(NumAnim_Cabezas).Head(Index + 1).GrhIndex).pixelHeight = 16, 0, 34), Escala)
90            OffsetX = X + BodyDatas.HeadOffset.X
100           OffsetY = Y + BodyDatas.HeadOffset.Y + IIf(GrhData(HeadData(NumAnim_Cabezas).Head(Index + 1).GrhIndex).pixelHeight = 16, 0, 34)
110           Call DrawAnimGraphicCenter(SP_Cabezas(Index), NumGraphic_Cabezas(Index), OffsetX, OffsetY)
              'Call EfectosGraficos(NumGraphic_Cabezas(Index), X, Y + 10)
120       End If

130       If NumGraphic_Cascos(Index) Then
140           Call DrawAnimGraphicCenter(SP_Cascos(Index), NumGraphic_Cascos(Index), X + (BodyDatas.HeadOffset.X * Escala), Y + (BodyDatas.HeadOffset.Y * Escala))
150       End If

160       If NumGraphic_Armas(Index) Then
170           Call DrawAnimGraphicCenter(SP_Armas(Index), NumGraphic_Armas(Index), X, Y)
180       End If

190       If NumGraphic_Escudos(Index) Then
200           Call DrawAnimGraphicCenter(SP_Escudos(Index), NumGraphic_Escudos(Index), X, Y)
210       End If

220       If NumGraphic_Efectos Then
230           Call DrawAnimGraphicCenter(SP_Efectos, NumGraphic_Efectos, X + FxData(NumAnim_Efectos).OffsetX, Y + FxData(NumAnim_Efectos).OffsetY)
240       End If

   On Error GoTo 0
   Exit Sub

DrawAnimGraphic_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure DrawAnimGraphic of Módulo de clase clsTileEngine Linea: " & Erl())
          
End Sub

Private Sub DrawAnimGraphicCenter(ByRef SP As Sprite, GrhIndex As Integer, ByVal X As Integer, ByVal Y As Integer)

   On Error GoTo DrawAnimGraphicCenter_Error

10        If GrhIndex Then
              
              Dim OffsetX             As Single
              Dim OffsetY             As Single
              
              'X = X - CenterX(GrhIndex)
              'Y = Y - CenterY(GrhIndex)

              'If Center Then
20            If GrhData(GrhIndex).TileWidth <> 1 Then
30                OffsetX = (Int(GrhData(GrhIndex).TileWidth * (32 \ 2)) + 32 \ 2) * Escala
40                X = X - OffsetX
50            End If

60            If GrhData(GrhIndex).TileHeight <> 1 Then
70                OffsetY = (Int(GrhData(GrhIndex).TileHeight * 32) + 32) * Escala
80                Y = Y - OffsetY
90            End If
              
              'Debug.Print GrhData(GrhIndex).pixelWidth & "-" & GrhData(GrhIndex).pixelHeight
              'End If
              'Debug.Print "GRH: " & GrhData(GrhIndex).Frames(1)
              
100           Call GameEngine.DrawGraphic(SP, CSng(X + 50), CSng(Y + 100), Escala)
110       End If

   On Error GoTo 0
   Exit Sub

DrawAnimGraphicCenter_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure DrawAnimGraphicCenter of Módulo de clase clsTileEngine Linea: " & Erl())
          
End Sub

Private Function CenterY(ByVal GrhIndex As Integer) As Integer
    If GrhData(GrhIndex).TileHeight <> 1 Then
        CenterY = Int(GrhData(GrhIndex).TileHeight * 32) + 32
    End If
End Function
Private Function CenterX(ByVal GrhIndex As Integer) As Integer
    If GrhData(GrhIndex).TileWidth <> 1 Then
        CenterX = Int(GrhData(GrhIndex).TileWidth * (32 \ 2)) + 32 \ 2
    End If
End Function
'Private Sub DrawAnimGraphicEx(ByVal Index As Integer, ByVal X As Single, ByVal Y As Single)
'    Call GameEngine.DrawGraphic(SP_Tipo(Index), X, Y + 10, Escala)
'    'Call EfectosGraficos(NumGraphic_Tipo(Index), X, Y + 10)
'End Sub

'Función principal de todo el programa en que realizara un loop infinito para renderizar todo
Private Function GameLoop()

    'GameEngine.EngineLibrary.Check_State , , DInput

Dim i                           As Long

10  On Error GoTo GameLoop_Error

20  Call GameEngine.Begin_Scene    '<-- Esto indica que comienza la escena y empezieza a dibujar las cosas

30  If RenderStyle = 2 Then
40      Call DrawAnimGraphic(0, GraphicX, GraphicY)
50      Call DrawAnimGraphic(1, GraphicX + (frmMain.renderer.Width / 1.5), GraphicY)
60      Call DrawAnimGraphic(2, GraphicX, GraphicY + (frmMain.renderer.Height / 1.5))
70      Call DrawAnimGraphic(3, GraphicX + (frmMain.renderer.Width / 1.5), GraphicY + (frmMain.renderer.Height / 1.5))

80  ElseIf NumGraphic Then
90      Call GameEngine.DrawGraphic(SP_Main, GraphicX, GraphicY, Escala)

        'Call EfectosGraficos(NumGraphic, GraphicX, GraphicY)
100     For i = 0 To numSelectIndexs - 1
110         Call EfectosGraficos(SelectIndexs(i), GraphicX, GraphicY)
120     Next i
130 End If

140 System.Get_Cursor_Pos

150 If Escala > 0 And GraphicX > 0 And GraphicY > 0 Then
160     Info = "Escala: " & Round(Escala * 100) & "%" & vbCrLf
170     Info = Info & "Mouse Graphic: X" & Round((CLng(RenderMouseX) - CLng(GraphicX)) / CLng(Escala)) & " Y" & Round((CLng(RenderMouseY) - CLng(GraphicY)) / CLng(Escala)) & vbCrLf
180     Info = Info & "Mouse State: " & MousePress & vbCrLf
190     Info = Info & "Mouse Pos: " & System.CursorX & "-" & System.CursorY & vbCrLf
200     Info = Info & "Object Pos: " & "Object Pos: " & GraphicX & "-" & GraphicY
210 End If

220 Call GameEngine.Draw_Text_MultiLine(Info, 0, frmMain.renderer.ScaleHeight - 40, D3DColorRGBA(255, 0, 0, 255))

    'Call GameEngine.Draw_Text("Escala: " & Round(Escala * 100) & "%", 0, frmMain.renderer.ScaleHeight - 40, D3DColorRGBA(255, 0, 0, 255))
    'Call GameEngine.Draw_Text("Mouse Graphic: " & Round(Escala * 100) & "%", 0, frmMain.renderer.ScaleHeight - 40, D3DColorRGBA(255, 0, 0, 255))
    'Call GameEngine.Draw_Text("Mouse State: " & MousePress, 0, frmMain.renderer.ScaleHeight - 30, D3DColorRGBA(255, 0, 0, 255))
    'Call GameEngine.Draw_Text("Mouse Pos: " & System.CursorX & "-" & System.CursorY, 0, frmMain.renderer.ScaleHeight - 20, D3DColorRGBA(255, 0, 0, 255))
    'Call GameEngine.Draw_Text("Object Pos: " & GraphicX & "-" & GraphicY, 0, frmMain.renderer.ScaleHeight - 10, D3DColorRGBA(255, 0, 0, 255))
    'If System.Get_Async_Key_State(1) Then 'Cuando se hace clic

    'End If
230 If MouseButtons(1) Then
240     Select Case ResizeMode
            Case 1
250             GrhData(ResizeIndex).sX = System.CursorX / Escala - TempX
260             Call GameEngine.Draw_Text("sX: " & CStr(GrhData(ResizeIndex).sX) & "p", RenderMouseX - 75, RenderMouseY - 16, D3DColorRGBA(255, 255, 0, 255))
270             Call frmMain.ProcessLine(ResizeIndex)
280         Case 2
290             GrhData(ResizeIndex).pixelWidth = System.CursorX / Escala - TempX
300             Call GameEngine.Draw_Text("Width: " & CStr(GrhData(ResizeIndex).pixelWidth) & "p", RenderMouseX + 2, RenderMouseY - 16, D3DColorRGBA(255, 255, 0, 255))
310             Call frmMain.ProcessLine(ResizeIndex)
320         Case 3
330             GrhData(ResizeIndex).sY = System.CursorY / Escala - TempY
340             Call GameEngine.Draw_Text("sY: " & CStr(GrhData(ResizeIndex).sY) & "p", RenderMouseX - 24, RenderMouseY - 16, D3DColorRGBA(255, 255, 0, 255))
350             Call frmMain.ProcessLine(ResizeIndex)
360         Case 4
370             GrhData(ResizeIndex).pixelHeight = System.CursorY / Escala - TempY
380             Call GameEngine.Draw_Text("Height: " & CStr(GrhData(ResizeIndex).pixelHeight) & "p", RenderMouseX - 42, RenderMouseY + 16, D3DColorRGBA(255, 255, 0, 255))
390             Call frmMain.ProcessLine(ResizeIndex)
400         Case Else
410             GraphicX = System.CursorX - TempX
420             GraphicY = System.CursorY - TempY
430     End Select
440 ElseIf MouseButtons(2) Then
450     frmMain.Escala.Value = (System.CursorX - ZoomTempX) / 50
460     Call frmMain.Escala_Scroll
470 End If

480 Call GameEngine.DrawFPS(frmMain.renderer.ScaleWidth - 75, 0)

490 While (GetTime - fpsLastCheck) \ 10 < FramesPerSecCounter
500     DoEvents
510     Sleep 5
520 Wend

530 If fpsLastCheck + 100 < GetTime Then
540     FPS = FramesPerSecCounter
550     FramesPerSecCounter = 1
560     fpsLastCheck = GetTime
570 Else
580     FramesPerSecCounter = FramesPerSecCounter + 1
590 End If

    'ProgramStatus = ProgramStatus & vbNewLine & "FPS: " & FramesPerSecCounter

600 If Len(ProgramStatus) Then Call GameEngine.Draw_Text_MultiLine(ProgramStatus, 10, 10, D3DColorRGBA(255, 0, 0, 255))
610 Call GameEngine.End_Scene  '<-- Esto indica que termina la escena y dibuja todo lo que se renderizo

620 On Error GoTo 0
630 Exit Function

GameLoop_Error:

640 Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure GameLoop of Módulo de clase clsTileEngine Linea: " & Erl() & " GraphicX: " & GraphicX & " GraphicY " & GraphicY & " Escala " & Escala & " RenderMouseX " & RenderMouseX & " RenderMouseY " & RenderMouseY)

End Function

'Iniciamos el loop infinito
Public Sub StartGameLoop()

   On Error GoTo StartGameLoop_Error

10        LoopRunning = True

          'Loop infinito
20        Do While LoopRunning

              'Llamamos a la variable que renderizara todo
30            Call GameLoop

              'Esperamos a que todo se renderize (negrada necesaria :/)

40            DoEvents
50        Loop

   On Error GoTo 0
   Exit Sub

StartGameLoop_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure StartGameLoop of Módulo de clase clsTileEngine Linea: " & Erl())
End Sub
'Terminamos el loop infinito
Public Sub StopGameLoop()
    LoopRunning = False
End Sub

Public Function LoadGraphic(ByRef SP As Sprite, Index As Integer) As Integer

      Dim Path                        As String

   On Error GoTo LoadGraphic_Error

10        If Index = 0 Or Index > grhCount Then
20            LoadGraphic = 0
30            Exit Function
40        End If

50        Path = AppGraficos & "\" & GrhData(Index).FileNum & IIf(AppPNG, ".png", ".bmp")

60        If GrhData(Index).NumFrames > 1 Then
70            LoadGraphic = Index
80            ProgramStatus = vbNullString
90            Call LoadSpriteAnimation(SP, Index)
100       ElseIf FileExist(Path, vbArchive) Then
110           LoadGraphic = Index
120           ProgramStatus = vbNullString
130           Call LoadSprite(SP, Index)
140       Else
150           LoadGraphic = 0
160           ProgramStatus = "No se encuentra el grafico."
170       End If

   On Error GoTo 0
   Exit Function

LoadGraphic_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure LoadGraphic of Módulo de clase clsTileEngine Linea: " & Erl())

End Function

Public Sub Resize()
    Call GameEngine.Resize
End Sub

Public Sub MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)

   On Error GoTo MouseDown_Error

10        MouseButtons(Button) = True
20        MousePress = Button

30        If MouseButtons(1) And MouseButtons(2) Then
40            Encuadrar = Not Encuadrar
50            frmMain.chkEncuadrarGrh = IIf(Encuadrar, vbChecked, vbUnchecked)
60        End If

70        If MouseButtons(4) Then
80            EncuadrarGrafico = Not EncuadrarGrafico
90            frmMain.chkEncuadrarGrafico = IIf(EncuadrarGrafico, vbChecked, vbUnchecked)
100       End If

110       If MousePress = 1 Then
120           Call System.Get_Cursor_Pos
130           Select Case ResizeMode
                  Case 1             'sX
140                   TempX = System.CursorX / Escala - GrhData(ResizeIndex).sX
150               Case 2             'Width
160                   TempX = System.CursorX / Escala - GrhData(ResizeIndex).pixelWidth
170               Case 3             'sY
180                   TempY = System.CursorY / Escala - GrhData(ResizeIndex).sY
190               Case 4             'Height
200                   TempY = System.CursorY / Escala - GrhData(ResizeIndex).pixelHeight
210               Case Else
220                   TempX = System.CursorX - GraphicX
230                   TempY = System.CursorY - GraphicY
240           End Select
250       ElseIf MousePress = 2 Then
260           Call System.Get_Cursor_Pos
270           ZoomTempX = System.CursorX - (frmMain.Escala.Value * 50)
280       End If

   On Error GoTo 0
   Exit Sub

MouseDown_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure MouseDown of Módulo de clase clsTileEngine Linea: " & Erl())
End Sub

Public Sub MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
      Static DoubleClick              As Long
   On Error GoTo MouseUp_Error

10        If Button = 2 And MouseButtons(1) = False Then
20            Debug.Print "Click derecho -> " & GetTime - DoubleClick
30            If GetTime - DoubleClick < 200 Then
40                GraphicX = 0
50                GraphicY = 0
60            End If
70            DoubleClick = GetTime()
80        End If

90        MouseButtons(Button) = False
100       MousePress = 0

   On Error GoTo 0
   Exit Sub

MouseUp_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure MouseUp of Módulo de clase clsTileEngine Linea: " & Erl())
End Sub

