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

'Motor grafico
Public System As System

Private GameEngine As clsEngine

Private LoopRunning As Boolean

Private ProgramStatus As String

Public MousePress As Long
Private MouseButtons(1 To 4) As Boolean

Public RenderStyle As Long

Public Encuadrar As Boolean
Public EncuadrarGrafico As Boolean
Public VerTamaño As Boolean

Private GraphicX As Single
Private GraphicY As Single

Public ZoomTempX As Single

Public TempX As Single
Public TempY As Single

Private TexIndex As Long
Private TexWidth As Long
Private TexHeight As Long

Public RenderMouseX As Single
Public RenderMouseY As Single

Public ResizeMode As Byte
Public ResizeIndex As Long

Public Escala As Single

Public FPS As Long
Public FramesPerSecCounter As Long
Private fpsLastCheck As Long

Public Sub LiberarMemoria()
    TexFactory.Clear
    ReDim TexList(32000) As Long
End Sub
Public Sub ChangeRenderStyle(Num As Integer)
    RenderStyle = Num
    If NumGraphic Then
        If GrhData(NumGraphic).NumFrames > 1 Then
            Call LoadSpriteAnimation(SP_Main, NumGraphic)
        Else
            Call LoadSprite(SP_Main, NumGraphic)
        End If
    End If
End Sub
Public Function Load_Texture(GrhIndex As Integer) As Long

With GrhData(GrhIndex)
    Dim FileNum As Integer
    FileNum = .FileNum
    If TexList(FileNum) = 0 Then
        TexList(FileNum) = TexFactory.Load_Texture(AppGraficos & "\" & FileNum & IIf(AppPNG, ".png", ".bmp"))
    End If
    
    'CLng(GrhData(NumGraphic).sX), CLng(GrhData(NumGraphic).sY), CLng(GrhData(NumGraphic).pixelWidth), CLng(GrhData(NumGraphic).pixelHeight)
    Load_Texture = TexList(FileNum)
End With
End Function

Public Function LoadSprite(ByRef SP As Sprite, GrhIndex As Integer)
   On Error GoTo LoadSprite_Error

With GrhData(GrhIndex)
    Dim FileNum As Integer
    FileNum = .FileNum
    
    'Set SP = New Sprite
    Call Load_Texture(GrhIndex)
    
    If SP Is Nothing Then Set SP = New Sprite: Debug.Print "Reload Static!"
    
    SP.Create_Static TexList(FileNum)
    SP.Update_Size TexFactory.Get_Tex_Width(TexList(FileNum)), TexFactory.Get_Tex_Height(TexList(FileNum))
    

    Select Case RenderStyle '<-- Tipo de Render (Estilo 1 y 2)
       Case 0, 2 '<-- Cuando esta en estilo 1
           SP.Update_Sprite_Rect CLng(.sX), CLng(.sY), CLng(.sX + .pixelWidth), CLng(.sY + .pixelHeight)
       Case 1 '<-- Cuando esta en estilo 2
           SP.Update_Sprite_Rect 0, 0, TexFactory.Get_Tex_Width(TexList(FileNum)), TexFactory.Get_Tex_Height(TexList(FileNum))
    End Select
End With

   On Error GoTo 0
   Exit Function

LoadSprite_Error:
    Set SP = Nothing
    ProgramStatus = "Error en la carga del grafico." & vbCrLf & "Revise si estan correctos los parametros." & vbCrLf & "Tipo de error: " & err.Description
End Function

Public Function LoadSpriteAnimation(ByRef SP As Sprite, GrhIndex As Integer)
   On Error GoTo LoadSpriteAnimation_Error

10       On Error GoTo LoadSpriteAnimation_Error

20    With GrhData(GrhIndex)
          Dim FileNum As Integer
30        FileNum = .FileNum
          
40        If RenderStyle = 1 Then
50            ProgramStatus = "El estilo 2 no tolera animaciones."
60        Else
70            ProgramStatus = vbNullString
80        End If
          
90        Set SP = New Sprite

100       SP.Create_Animation ' CLng(.NumFrames)
          Dim i As Long
110       SP.AnimSpeed = .NumFrames / .speed / 4
120       For i = 1 To .NumFrames
130           If .Frames(i) > 0 Then
140               Call Load_Texture(CInt(.Frames(i)))
150               SP.AddFrame TexList(GrhData(.Frames(i)).FileNum) ', CLng(GrhData(.Frames(i)).pixelWidth), CLng(GrhData(.Frames(i)).pixelHeight), , , CLng(GrhData(.Frames(i)).sX), CLng(GrhData(.Frames(i)).sY), CLng(GrhData(.Frames(i)).sX + GrhData(.Frames(i)).pixelWidth), CLng(GrhData(.Frames(i)).sY + GrhData(.Frames(i)).pixelHeight)
160               SP.Update_Sprite_Rect CLng(GrhData(.Frames(i)).sX), CLng(GrhData(.Frames(i)).sY), CLng(GrhData(.Frames(i)).sX + GrhData(.Frames(i)).pixelWidth), CLng(GrhData(.Frames(i)).sY + GrhData(.Frames(i)).pixelHeight), i
170           End If
              'SP.Update_Size TexFactory.Get_Tex_Width(TexList(FileNum)), TexFactory.Get_Tex_Height(TexList(FileNum)), i
180       Next i
          
190       If .NumFrames = 2 Then
200           i = 2
210           If .Frames(i) > 0 Then
220               Call Load_Texture(CInt(.Frames(i)))
230               SP.AddFrame TexList(GrhData(.Frames(i)).FileNum) ', CLng(GrhData(.Frames(i)).pixelWidth), CLng(GrhData(.Frames(i)).pixelHeight), , , CLng(GrhData(.Frames(i)).sX), CLng(GrhData(.Frames(i)).sY), CLng(GrhData(.Frames(i)).sX + GrhData(.Frames(i)).pixelWidth), CLng(GrhData(.Frames(i)).sY + GrhData(.Frames(i)).pixelHeight)
240               SP.Update_Sprite_Rect CLng(GrhData(.Frames(i)).sX), CLng(GrhData(.Frames(i)).sY), CLng(GrhData(.Frames(i)).sX + GrhData(.Frames(i)).pixelWidth), CLng(GrhData(.Frames(i)).sY + GrhData(.Frames(i)).pixelHeight), i
250           End If
260       End If
          'SP.Create_Static TexList(FileNum)
          
      '    Select Case RenderStyle '<-- Tipo de Render (Estilo 1 y 2)
      '       Case 0 '<-- Cuando esta en estilo 1
      '           SP.Update_Sprite_Rect CLng(GrhData(.Frames(i)).sX), CLng(GrhData(.Frames(i)).sY), CLng(GrhData(.Frames(i)).sX + GrhData(.Frames(i)).pixelWidth), CLng(GrhData(.Frames(i)).sY + GrhData(.Frames(i)).pixelHeight)
      '       Case 1 '<-- Cuando esta en estilo 2
      '           SP.Update_Sprite_Rect 0, 0, TexFactory.Get_Tex_Width(TexList(FileNum)), TexFactory.Get_Tex_Height(TexList(FileNum))
      '    End Select
270   End With

280      On Error GoTo 0
290      Exit Function

LoadSpriteAnimation_Error:
300       Set SP = Nothing
310       ProgramStatus = "Error en la carga de la animacion." & vbCrLf & "Revise si estan correctos los parametros." & vbCrLf & "Tipo de error: " & err.Description

End Function

'Iniciamos la clase
Public Function Initialize()
    'Iniciamos el motor grafico
    Set GameEngine = New clsEngine
    
    'Iniciamos las texturas
    Set TexFactory = New TextureFactory
    ReDim TexList(32000) As Long
    
    Set System = New System
    
    Set SP_Main = New Sprite
    Set SP_Main = New Sprite
    Set SP_Anim = New Sprite
    Set SP_Fondo = New Sprite
    
    Dim i As Long
    For i = 0 To 3
        Set SP_Armas(i) = New Sprite
        Set SP_Cabezas(i) = New Sprite
        Set SP_Cascos(i) = New Sprite
        Set SP_Cuerpos(i) = New Sprite
        Set SP_Escudos(i) = New Sprite
    Next i
    Set SP_Efectos = New Sprite
    
    Call GameEngine.Initialize(frmMain.renderer.hwnd, True, frmMain, frmMain.renderer.Width, frmMain.renderer.Height, 32, 3)
    
    Escala = 1
End Function

'Terminamos la clase y borramos todo
Public Function Terminate()

    'Hacemos que el motor grafico se elimine
    GameEngine.Terminate
End Function
Public Sub ResizeGraphic(Index As Integer, Mode As Byte)
If Mode <> ResizeMode Then
    ResizeIndex = Index
    ResizeMode = Mode
    Select Case Mode
        Case 1, 2
            frmMain.MousePointer = 9
        Case 3, 4
            frmMain.MousePointer = 7
        Case Else
            frmMain.MousePointer = 0
    End Select
End If
End Sub

Private Sub EfectosGraficos(ByVal Index As Integer, ByVal BaseX As Integer, ByVal BaseY As Integer)
    Dim EjesX(3) As Single, EjesY(3) As Single
    Dim i As Long
    If EncuadrarGrafico Then '<-- Cuando tiene que encuadrar hace esto
        With GrhData(Index)
            EjesX(0) = BaseX
            EjesY(0) = BaseY
            EjesX(1) = BaseX + TexFactory.Get_Tex_Width(TexList(.FileNum)) * Escala
            EjesY(1) = BaseY
            EjesX(2) = BaseX
            EjesY(2) = BaseY + TexFactory.Get_Tex_Height(TexList(.FileNum)) * Escala
            EjesX(3) = BaseX + TexFactory.Get_Tex_Width(TexList(.FileNum)) * Escala
            EjesY(3) = BaseY + TexFactory.Get_Tex_Height(TexList(.FileNum)) * Escala

            If RenderStyle = 0 Then
                For i = 0 To 3
                    EjesX(i) = EjesX(i) - .sX * Escala
                    EjesY(i) = EjesY(i) - .sY * Escala
                Next i
            End If

            Call GameEngine.EngineLibrary.Draw_Line(EjesX(0), EjesY(0), EjesX(1), EjesY(1), D3DColorRGBA(0, 255, 0, 255), D3DColorRGBA(0, 255, 0, 255))
            Call GameEngine.EngineLibrary.Draw_Line(EjesX(0), EjesY(0), EjesX(2), EjesY(2), D3DColorRGBA(0, 255, 0, 255), D3DColorRGBA(0, 255, 0, 255))
            Call GameEngine.EngineLibrary.Draw_Line(EjesX(3), EjesY(3), EjesX(1), EjesY(1), D3DColorRGBA(0, 255, 0, 255), D3DColorRGBA(0, 255, 0, 255))
            Call GameEngine.EngineLibrary.Draw_Line(EjesX(3), EjesY(3), EjesX(2), EjesY(2), D3DColorRGBA(0, 255, 0, 255), D3DColorRGBA(0, 255, 0, 255))
            
            If VerTamaño Then
                Call GameEngine.Draw_Text(CStr(TexFactory.Get_Tex_Width(TexList(.FileNum))) & "p", EjesX(0) + (EjesX(3) - EjesX(0)) / 2 - 14, EjesY(3) + 1, D3DColorRGBA(0, 255, 0, 255))
                Call GameEngine.Draw_Text(CStr(TexFactory.Get_Tex_Height(TexList(.FileNum))) & "p", EjesX(0) - 33, EjesY(0) + (EjesY(3) - EjesY(0)) / 2, D3DColorRGBA(0, 255, 0, 255))
            End If
        End With
    End If
    If Encuadrar Then '<-- Cuando tiene que encuadrar hace esto
        With GrhData(Index)
            EjesX(0) = BaseX
            EjesY(0) = BaseY
            EjesX(1) = BaseX + .pixelWidth * Escala
            EjesY(1) = BaseY
            EjesX(2) = BaseX
            EjesY(2) = BaseY + .pixelHeight * Escala
            EjesX(3) = BaseX + .pixelWidth * Escala
            EjesY(3) = BaseY + .pixelHeight * Escala
            If RenderStyle = 1 Then
                For i = 0 To 3
                    EjesX(i) = EjesX(i) + .sX * Escala
                    EjesY(i) = EjesY(i) + .sY * Escala
                Next i
            End If
            
            Call GameEngine.EngineLibrary.Draw_Line(EjesX(0), EjesY(0), EjesX(1), EjesY(1), D3DColorRGBA(255, 255, 255, 255), D3DColorRGBA(255, 255, 255, 255))
            Call GameEngine.EngineLibrary.Draw_Line(EjesX(0), EjesY(0), EjesX(2), EjesY(2), D3DColorRGBA(255, 255, 255, 255), D3DColorRGBA(255, 255, 255, 255))
            Call GameEngine.EngineLibrary.Draw_Line(EjesX(3), EjesY(3), EjesX(1), EjesY(1), D3DColorRGBA(255, 255, 255, 255), D3DColorRGBA(255, 255, 255, 255))
            Call GameEngine.EngineLibrary.Draw_Line(EjesX(3), EjesY(3), EjesX(2), EjesY(2), D3DColorRGBA(255, 255, 255, 255), D3DColorRGBA(255, 255, 255, 255))
            
            '0 1
            '2 3
            If MouseButtons(1) = False And .NumFrames = 1 And (ResizeIndex = Index Or ResizeIndex = 0) Then
                If Abs(EjesX(0) - RenderMouseX) <= 2 And RenderMouseY > EjesY(0) And RenderMouseY < EjesY(2) And RenderStyle = 1 Then
                    Call ResizeGraphic(Index, 1) 'sX
                ElseIf Abs(EjesX(1) - RenderMouseX) <= 2 And RenderMouseY > EjesY(1) And RenderMouseY < EjesY(3) Then
                    Call ResizeGraphic(Index, 2) 'Width
                ElseIf Abs(EjesY(0) - RenderMouseY) <= 2 And RenderMouseX > EjesX(0) And RenderMouseX < EjesX(1) And RenderStyle = 1 Then
                    Call ResizeGraphic(Index, 3) 'sY
                ElseIf Abs(EjesY(2) - RenderMouseY) <= 2 And RenderMouseX > EjesX(2) And RenderMouseX < EjesX(3) Then
                    Call ResizeGraphic(Index, 4) 'Height
                Else
                    Call ResizeGraphic(0, 0)
                End If
            End If
            
            If VerTamaño Then
                Call GameEngine.Draw_Text(CStr(.pixelWidth) & "p", EjesX(0) + (EjesX(3) - EjesX(0)) / 2 - 14, EjesY(0) - 8, D3DColorRGBA(255, 255, 255, 255))
                Call GameEngine.Draw_Text(CStr(.pixelHeight) & "p", EjesX(3) + 1, EjesY(0) + (EjesY(3) - EjesY(0)) / 2, D3DColorRGBA(255, 255, 255, 255))
            End If
        End With
    End If
End Sub
Private Sub DrawAnimGraphic(ByVal Index As Integer, ByVal X As Integer, ByVal Y As Integer)
    Call GameEngine.Draw_Text(GetDirectionString(Index), CSng(X), CSng(Y), D3DColorRGBA(0, 255, 255, 255))
    Dim BodyDatas As BodyData
    Dim OffsetX As Integer
    Dim OffsetY As Integer
    
    
    If NumGraphic_Cuerpos(Index) Then
        BodyDatas = BodyData(NumAnim_Cuerpos)
        Call GameEngine.Draw_Text("OffSet: " & BodyDatas.HeadOffset.X & " - " & BodyDatas.HeadOffset.Y, 0, 0, D3DColorRGBA(0, 255, 255, 255))
        
        Call GameEngine.Draw_Text("Center: " & CenterX(NumGraphic_Cuerpos(Index)) & " - " & CenterY(NumGraphic_Cuerpos(Index)), 0, 10, D3DColorRGBA(0, 255, 255, 255))
        
        Call DrawAnimGraphicCenter(SP_Cuerpos(Index), NumGraphic_Cuerpos(Index), X, Y)
    End If
    
    If NumGraphic_Cabezas(Index) Then
        'Call GameEngine.DrawGraphic(SP_Cabezas(Index), X + BodyDatas.HeadOffset.X, Y + 10 + BodyDatas.HeadOffset.Y + IIf(GrhData(HeadData(NumAnim_Cabezas).Head(Index + 1).GrhIndex).pixelHeight = 16, 0, 34), Escala)
        OffsetX = X + BodyDatas.HeadOffset.X
        OffsetY = Y + BodyDatas.HeadOffset.Y + IIf(GrhData(HeadData(NumAnim_Cabezas).Head(Index + 1).GrhIndex).pixelHeight = 16, 0, 34)
        Call DrawAnimGraphicCenter(SP_Cabezas(Index), NumGraphic_Cabezas(Index), OffsetX, OffsetY)
        'Call EfectosGraficos(NumGraphic_Cabezas(Index), X, Y + 10)
    End If
    
    If NumGraphic_Cascos(Index) Then
        Call DrawAnimGraphicCenter(SP_Cascos(Index), NumGraphic_Cascos(Index), X + (BodyDatas.HeadOffset.X * Escala), Y + (BodyDatas.HeadOffset.Y * Escala))
    End If
    
    If NumGraphic_Armas(Index) Then
        Call DrawAnimGraphicCenter(SP_Armas(Index), NumGraphic_Armas(Index), X, Y)
    End If
    
    If NumGraphic_Escudos(Index) Then
        Call DrawAnimGraphicCenter(SP_Escudos(Index), NumGraphic_Escudos(Index), X, Y)
    End If
    
    If NumGraphic_Efectos Then
        Call DrawAnimGraphicCenter(SP_Efectos, NumGraphic_Efectos, X + FxData(NumAnim_Efectos).OffsetX, Y + FxData(NumAnim_Efectos).OffsetY)
    End If
End Sub
Private Sub DrawAnimGraphicCenter(ByRef SP As Sprite, GrhIndex As Integer, ByVal X As Integer, ByVal Y As Integer)
    If GrhIndex Then
        Dim OffsetX As Single
        Dim OffsetY As Single
        'X = X - CenterX(GrhIndex)
        'Y = Y - CenterY(GrhIndex)
        
        'If Center Then
        If GrhData(GrhIndex).TileWidth <> 1 Then
            OffsetX = (Int(GrhData(GrhIndex).TileWidth * (32 \ 2)) + 32 \ 2) * Escala
            X = X - OffsetX
        End If
    
        If GrhData(GrhIndex).TileHeight <> 1 Then
            OffsetY = (Int(GrhData(GrhIndex).TileHeight * 32) + 32) * Escala
            Y = Y - OffsetY
        End If
        'Debug.Print GrhData(GrhIndex).pixelWidth & "-" & GrhData(GrhIndex).pixelHeight
        'End If
        Call GameEngine.DrawGraphic(SP, CSng(X + 50), CSng(Y + 100), Escala)
    End If
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
    Dim i As Long
    Call GameEngine.Begin_Scene '<-- Esto indica que comienza la escena y empezieza a dibujar las cosas
        If RenderStyle = 2 Then
            Call DrawAnimGraphic(0, GraphicX, GraphicY)
            Call DrawAnimGraphic(1, GraphicX + (frmMain.renderer.Width / 1.5), GraphicY)
            Call DrawAnimGraphic(2, GraphicX, GraphicY + (frmMain.renderer.Height / 1.5))
            Call DrawAnimGraphic(3, GraphicX + (frmMain.renderer.Width / 1.5), GraphicY + (frmMain.renderer.Height / 1.5))
            
        ElseIf NumGraphic Then
            Call GameEngine.DrawGraphic(SP_Main, GraphicX, GraphicY, Escala)
        
            'Call EfectosGraficos(NumGraphic, GraphicX, GraphicY)
            For i = 0 To numSelectIndexs - 1
                Call EfectosGraficos(SelectIndexs(i), GraphicX, GraphicY)
            Next i
        End If
        System.Get_Cursor_Pos
        Dim Info As String
        Info = "Escala: " & Round(Escala * 100) & "%" & vbCrLf
        Info = Info & "Mouse Graphic: X" & Round((RenderMouseX - GraphicX) / Escala) & " Y" & Round((RenderMouseY - GraphicY) / Escala) & vbCrLf
        Info = Info & "Mouse State: " & MousePress & vbCrLf
        Info = Info & "Mouse Pos: " & System.CursorX & "-" & System.CursorY & vbCrLf
        Info = Info & "Object Pos: " & "Object Pos: " & GraphicX & "-" & GraphicY
        Call GameEngine.Draw_Text_MultiLine(Info, 0, frmMain.renderer.ScaleHeight - 40, D3DColorRGBA(255, 0, 0, 255))
        
        'Call GameEngine.Draw_Text("Escala: " & Round(Escala * 100) & "%", 0, frmMain.renderer.ScaleHeight - 40, D3DColorRGBA(255, 0, 0, 255))
        'Call GameEngine.Draw_Text("Mouse Graphic: " & Round(Escala * 100) & "%", 0, frmMain.renderer.ScaleHeight - 40, D3DColorRGBA(255, 0, 0, 255))
        'Call GameEngine.Draw_Text("Mouse State: " & MousePress, 0, frmMain.renderer.ScaleHeight - 30, D3DColorRGBA(255, 0, 0, 255))
        'Call GameEngine.Draw_Text("Mouse Pos: " & System.CursorX & "-" & System.CursorY, 0, frmMain.renderer.ScaleHeight - 20, D3DColorRGBA(255, 0, 0, 255))
        'Call GameEngine.Draw_Text("Object Pos: " & GraphicX & "-" & GraphicY, 0, frmMain.renderer.ScaleHeight - 10, D3DColorRGBA(255, 0, 0, 255))
        'If System.Get_Async_Key_State(1) Then 'Cuando se hace clic
        
        'End If
        If MouseButtons(1) Then
            Select Case ResizeMode
                Case 1
                    GrhData(ResizeIndex).sX = System.CursorX / Escala - TempX
                    Call GameEngine.Draw_Text("sX: " & CStr(GrhData(ResizeIndex).sX) & "p", RenderMouseX - 75, RenderMouseY - 16, D3DColorRGBA(255, 255, 0, 255))
                    Call frmMain.ProcessLine(ResizeIndex)
                Case 2
                    GrhData(ResizeIndex).pixelWidth = System.CursorX / Escala - TempX
                    Call GameEngine.Draw_Text("Width: " & CStr(GrhData(ResizeIndex).pixelWidth) & "p", RenderMouseX + 2, RenderMouseY - 16, D3DColorRGBA(255, 255, 0, 255))
                    Call frmMain.ProcessLine(ResizeIndex)
                Case 3
                    GrhData(ResizeIndex).sY = System.CursorY / Escala - TempY
                    Call GameEngine.Draw_Text("sY: " & CStr(GrhData(ResizeIndex).sY) & "p", RenderMouseX - 24, RenderMouseY - 16, D3DColorRGBA(255, 255, 0, 255))
                    Call frmMain.ProcessLine(ResizeIndex)
                Case 4
                    GrhData(ResizeIndex).pixelHeight = System.CursorY / Escala - TempY
                    Call GameEngine.Draw_Text("Height: " & CStr(GrhData(ResizeIndex).pixelHeight) & "p", RenderMouseX - 42, RenderMouseY + 16, D3DColorRGBA(255, 255, 0, 255))
                    Call frmMain.ProcessLine(ResizeIndex)
                Case Else
                    GraphicX = System.CursorX - TempX
                    GraphicY = System.CursorY - TempY
            End Select
        ElseIf MouseButtons(2) Then
            frmMain.Escala.Value = (System.CursorX - ZoomTempX) / 50
            Call frmMain.Escala_Scroll
        End If
        
        Call GameEngine.DrawFPS(frmMain.renderer.ScaleWidth - 75, 0)
        
        While (GetTime - fpsLastCheck) \ 10 < FramesPerSecCounter
            'DoEvents
            Sleep 5
        Wend
        If fpsLastCheck + 1000 < GetTime Then
            FPS = FramesPerSecCounter
            FramesPerSecCounter = 1
            fpsLastCheck = GetTime
        Else
            FramesPerSecCounter = FramesPerSecCounter + 1
        End If
            
        If Len(ProgramStatus) Then Call GameEngine.Draw_Text_MultiLine(ProgramStatus, 10, 10, D3DColorRGBA(255, 0, 0, 255))

    Call GameEngine.End_Scene '<-- Esto indica que termina la escena y dibuja todo lo que se renderizo
End Function

'Iniciamos el loop infinito
Public Sub StartGameLoop()

    LoopRunning = True
    
    'Loop infinito
    Do While LoopRunning
    
        'Llamamos a la variable que renderizara todo
        Call GameLoop
        
        'Esperamos a que todo se renderize (negrada necesaria :/)
        DoEvents
    Loop
End Sub
'Terminamos el loop infinito
Public Sub StopGameLoop()
    LoopRunning = False
End Sub

Public Function LoadGraphic(ByRef SP As Sprite, Index As Integer) As Integer

    Dim Path As String
    
    If Index = 0 Or Index > grhCount Then
        LoadGraphic = 0
        Exit Function
    End If

    Path = AppGraficos & "\" & GrhData(Index).FileNum & IIf(AppPNG, ".png", ".bmp")
    
    If GrhData(Index).NumFrames > 1 Then
        LoadGraphic = Index
        ProgramStatus = vbNullString
        Call LoadSpriteAnimation(SP, Index)
    ElseIf FileExist(Path, vbArchive) Then
        LoadGraphic = Index
        ProgramStatus = vbNullString
        Call LoadSprite(SP, Index)
    Else
        LoadGraphic = 0
        ProgramStatus = "No se encuentra el grafico."
    End If
    
End Function

Public Sub Resize()
    Call GameEngine.Resize
End Sub
Public Sub MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    
    MouseButtons(Button) = True
    MousePress = Button
    
    If MouseButtons(1) And MouseButtons(2) Then
        Encuadrar = Not Encuadrar
        frmMain.chkEncuadrarGrh = IIf(Encuadrar, vbChecked, vbUnchecked)
    End If
    
    If MouseButtons(4) Then
        EncuadrarGrafico = Not EncuadrarGrafico
        frmMain.chkEncuadrarGrafico = IIf(EncuadrarGrafico, vbChecked, vbUnchecked)
    End If
    
    If MousePress = 1 Then
        Call System.Get_Cursor_Pos
        Select Case ResizeMode
            Case 1 'sX
                TempX = System.CursorX / Escala - GrhData(ResizeIndex).sX
            Case 2 'Width
                TempX = System.CursorX / Escala - GrhData(ResizeIndex).pixelWidth
            Case 3 'sY
                TempY = System.CursorY / Escala - GrhData(ResizeIndex).sY
            Case 4 'Height
                TempY = System.CursorY / Escala - GrhData(ResizeIndex).pixelHeight
            Case Else
                TempX = System.CursorX - GraphicX
                TempY = System.CursorY - GraphicY
        End Select
    ElseIf MousePress = 2 Then
        Call System.Get_Cursor_Pos
        ZoomTempX = System.CursorX - (frmMain.Escala.Value * 50)
    End If
End Sub
Public Sub MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Static DoubleClick As Long
    If Button = 2 And MouseButtons(1) = False Then
        Debug.Print "Click derecho -> " & GetTime - DoubleClick
        If GetTime - DoubleClick < 200 Then
            GraphicX = 0
            GraphicY = 0
        End If
        DoubleClick = GetTime()
    End If

    MouseButtons(Button) = False
    MousePress = 0
End Sub

