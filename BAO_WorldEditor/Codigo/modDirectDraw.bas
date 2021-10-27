Attribute VB_Name = "modDirectDraw"
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

''
' modDirectDraw
'
' @remarks Funciones de DirectDraw y Visualizacion
' @author unkwown
' @version 0.0.20
' @date 20061015

Option Explicit

Public Const INFINITE_LOOPS     As Integer = -1

Function LoadWavetoDSBuffer(DS As DirectSound, DSB As DirectSoundBuffer, sFile As String) As Boolean
'*************************************************
'Author: Unkwown
'Last modified: 20/05/2006
'*************************************************

Dim bufferDesc                  As DSBUFFERDESC
Dim waveFormat                  As WAVEFORMATEX

    bufferDesc.lFlags = DSBCAPS_CTRLFREQUENCY Or DSBCAPS_CTRLPAN Or DSBCAPS_CTRLVOLUME Or DSBCAPS_STATIC

    waveFormat.nFormatTag = WAVE_FORMAT_PCM
    waveFormat.nChannels = 2
    waveFormat.lSamplesPerSec = 22050
    waveFormat.nBitsPerSample = 16
    waveFormat.nBlockAlign = waveFormat.nBitsPerSample / 8 * waveFormat.nChannels
    waveFormat.lAvgBytesPerSec = waveFormat.lSamplesPerSec * waveFormat.nBlockAlign
    Set DSB = DS.CreateSoundBufferFromFile(sFile, bufferDesc, waveFormat)

    If err.Number <> 0 Then
        Exit Function
    End If

    LoadWavetoDSBuffer = True

End Function

Sub ConvertCPtoTP(StartPixelLeft As Integer, StartPixelTop As Integer, ByVal CX As Single, ByVal CY As Single, tX As Integer, tY As Integer)
'*************************************************
'Author: Unkwown
'Last modified: 20/05/06
'*************************************************
Dim HWindowX                    As Integer
Dim HWindowY                    As Integer

    CX = CX - StartPixelLeft
    CY = CY - StartPixelTop

    HWindowX = (WindowTileWidth \ 2)
    HWindowY = (WindowTileHeight \ 2)

    'Figure out X and Y tiles
    CX = (CX \ TilePixelWidth)
    CY = (CY \ TilePixelHeight)

    If CX > HWindowX Then
        CX = (CX - HWindowX)

    Else
        If CX < HWindowX Then
            CX = (0 - (HWindowX - CX))
        Else
            CX = 0
        End If
    End If

    If CY > HWindowY Then
        CY = (0 - (HWindowY - CY))
    Else
        If CY < HWindowY Then
            CY = (CY - HWindowY)
        Else
            CY = 0
        End If
    End If

    tX = UserPos.X + CX
    tY = UserPos.Y + CY

End Sub




Function DeInitTileEngine() As Boolean
'*************************************************
'Author: Unkwown
'Last modified: 26/05/06
'*************************************************
Dim LoopC                       As Integer

    EngineRun = False

    '****** Clear DirectX objects ******
    Set PrimarySurface = Nothing
    Set PrimaryClipper = Nothing
    Set BackBufferSurface = Nothing

    Set SurfaceDB = Nothing

    Set DirectDraw = Nothing

    'Reset any channels that are done
    For LoopC = 1 To NumSoundBuffers
        Set DSBuffers(LoopC) = Nothing
    Next LoopC

    Set DirectSound = Nothing

    Set DirectX = Nothing

    DeInitTileEngine = True

End Function


Sub MakeChar(CharIndex As Integer, Body As Integer, Head As Integer, Heading As Byte, X As Integer, Y As Integer)
'*************************************************
'Author: Unkwown
'Last modified: 28/05/06 by GS
'*************************************************


'Update LastChar
    On Error GoTo MakeChar_Error

    If CharIndex > LastChar Then LastChar = CharIndex
    NumChars = NumChars + 1

    'Update head, body, ect.
    CharList(CharIndex).Body = BodyData(Body)
    CharList(CharIndex).Head = HeadData(Head)
    CharList(CharIndex).Heading = Heading

    'Reset moving stats
    CharList(CharIndex).Moving = 0
    CharList(CharIndex).MoveOffset.X = 0
    CharList(CharIndex).MoveOffset.Y = 0

    'Update position
    CharList(CharIndex).Pos.X = X
    CharList(CharIndex).Pos.Y = Y

    'Make active
    CharList(CharIndex).Active = 1

    'Plot on map
    MapData(X, Y).CharIndex = CharIndex

    bRefreshRadar = True       ' GS

    On Error GoTo 0
    Exit Sub

MakeChar_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento MakeChar de Módulo modDirectDraw línea: " & Erl())

End Sub







Sub EraseChar(CharIndex As Integer)
'*************************************************
'Author: Unkwown
'Last modified: 28/05/06 by GS
'*************************************************
    If CharIndex = 0 Then Exit Sub
    'Make un-active
    CharList(CharIndex).Active = 0

    'Update lastchar
    If CharIndex = LastChar Then
        Do Until CharList(LastChar).Active = 1
            LastChar = LastChar - 1
            If LastChar = 0 Then Exit Do
        Loop
    End If

    MapData(CharList(CharIndex).Pos.X, CharList(CharIndex).Pos.Y).CharIndex = 0

    'Update NumChars
    NumChars = NumChars - 1

    bRefreshRadar = True       ' GS

End Sub

'Sub InitGrh(ByRef Grh As Grh, ByVal GrhIndex As Integer, Optional Started As Byte = 2)
'      '*************************************************
'      'Author: Unkwown
'      'Last modified: 31/05/06 - GS
'      '*************************************************
'
'   On Error GoTo InitGrh_Error
'
'10    Grh.GrhIndex = GrhIndex
'20    If Grh.GrhIndex <> 0 Then ' 31/05/2006
'30        If Started = 2 Then
'40            If GrhData(Grh.GrhIndex).NumFrames > 1 Then
'50                Grh.Started = 1
'60            Else
'70                Grh.Started = 0
'80            End If
'90        Else
'100           Grh.Started = Started
'110       End If
'120       Grh.FrameCounter = 1
'130       Grh.SpeedCounter = GrhData(Grh.GrhIndex).Speed
'140   Else
'150       Grh.FrameCounter = 1
'160       Grh.Started = 0
'170       Grh.SpeedCounter = 0
'180   End If
'
'   On Error GoTo 0
'   Exit Sub
'
'InitGrh_Error:
'
'    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento InitGrh de Módulo modDirectDraw línea: " & Erl())
'
'End Sub
Public Sub InitGrh(ByRef Grh As Grh, ByVal GrhIndex As Integer, Optional ByVal Started As Byte = 2)
'*****************************************************************
'Sets up a grh. MUST be done before rendering
'*****************************************************************
10  On Error GoTo InitGrh_Error

20  Grh.GrhIndex = GrhIndex
30
40  If GrhIndex > grhCount Then Exit Sub    '10/05/2016

50  If GrhIndex < 0 Then Exit Sub
60  If Grh.GrhIndex <= 0 Then Exit Sub

70  If Started = 2 Then
80      If GrhData(Grh.GrhIndex).NumFrames > 1 Then
90          Grh.Started = 1
100     Else
110         Grh.Started = 0
120     End If
130 Else

        'Make sure the graphic can be started
140     If GrhData(Grh.GrhIndex).NumFrames = 1 Then Started = 0
150     Grh.Started = Started
160 End If

170 If Grh.Started Then
180     Grh.Loops = INFINITE_LOOPS
190 Else
200     Grh.Loops = 0
210 End If

220 Grh.FrameCounter = 1
230 Grh.Speed = GrhData(Grh.GrhIndex).Speed
240 Grh.SpeedCounter = Grh.Speed
250 On Error GoTo 0
260 Exit Sub

InitGrh_Error:

270 Call LogError("Error " & err.Number & " Descripción: & (" & err.Description & ") del procedimiento InitGrh del Módulo modTileEngine" & " En la linea: " & Erl)
End Sub


Sub MoveCharbyHead(CharIndex As Integer, nHeading As Byte)
'*************************************************
'Author: Unkwown
'Last modified: 20/05/06
'*************************************************
Dim addX                        As Integer
Dim addY                        As Integer
Dim X                           As Integer
Dim Y                           As Integer
Dim nX                          As Integer
Dim nY                          As Integer

    X = CharList(CharIndex).Pos.X
    Y = CharList(CharIndex).Pos.Y

    'Figure out which way to move
    Select Case nHeading

        Case NORTH
            addY = -1

        Case EAST
            addX = 1

        Case SOUTH
            addY = 1

        Case WEST
            addX = -1

    End Select

    nX = X + addX
    nY = Y + addY

    MapData(nX, nY).CharIndex = CharIndex
    CharList(CharIndex).Pos.X = nX
    CharList(CharIndex).Pos.Y = nY
    MapData(X, Y).CharIndex = 0

    CharList(CharIndex).MoveOffset.X = -1 * (TilePixelWidth * addX)
    CharList(CharIndex).MoveOffset.Y = -1 * (TilePixelHeight * addY)

    CharList(CharIndex).Moving = 1
    CharList(CharIndex).Heading = nHeading

End Sub

Sub MoveCharbyPos(CharIndex As Integer, nX As Integer, nY As Integer)
'*************************************************
'Author: Unkwown
'Last modified: 28/05/06 by GS
'*************************************************
Dim X                           As Integer
Dim Y                           As Integer
Dim addX                        As Integer
Dim addY                        As Integer
Dim nHeading                    As Byte

    X = CharList(CharIndex).Pos.X
    Y = CharList(CharIndex).Pos.Y

    addX = nX - X
    addY = nY - Y

    If Sgn(addX) = 1 Then
        nHeading = EAST
    End If

    If Sgn(addX) = -1 Then
        nHeading = WEST
    End If

    If Sgn(addY) = -1 Then
        nHeading = NORTH
    End If

    If Sgn(addY) = 1 Then
        nHeading = SOUTH
    End If

    MapData(nX, nY).CharIndex = CharIndex
    CharList(CharIndex).Pos.X = nX
    CharList(CharIndex).Pos.Y = nY
    MapData(X, Y).CharIndex = 0

    CharList(CharIndex).MoveOffset.X = -1 * (TilePixelWidth * addX)
    CharList(CharIndex).MoveOffset.Y = -1 * (TilePixelHeight * addY)

    CharList(CharIndex).Moving = 1
    CharList(CharIndex).Heading = nHeading

    bRefreshRadar = True       ' GS

End Sub


Function NextOpenChar() As Integer
'*************************************************
'Author: Unkwown
'Last modified: 20/05/06
'*************************************************
Dim LoopC                       As Integer

    LoopC = 1
    Do While CharList(LoopC).Active
        LoopC = LoopC + 1
    Loop

    NextOpenChar = LoopC

End Function

Function LegalPos(X As Integer, Y As Integer) As Boolean
'*************************************************
'Author: Unkwown
'Last modified: 28/05/06 - GS
'*************************************************
    On Error GoTo err:
    LegalPos = True

    'Check to see if its out of bounds
    If X - 8 < 1 Or X - 8 > XMaxMapSize Or Y - 6 < 1 Or Y - 6 > YMaxMapSize Then
        LegalPos = False
        Exit Function
    End If

    If X > XMaxMapSize Or X < XMinMapSize Or Y > YMaxMapSize Or Y < YMaxMapSize Then
        LegalPos = False
        Exit Function
    End If

    'Check to see if its blocked
    If MapData(X, Y).Blocked = 1 Then
        LegalPos = False
        Exit Function
    End If

    'Check for character
    If MapData(X, Y).CharIndex > 0 Then
        LegalPos = False
        Exit Function
    End If
    Exit Function
err:
End Function




Function InMapLegalBounds(X As Integer, Y As Integer) As Boolean
'*************************************************
'Author: Unkwown
'Last modified: 20/05/06
'*************************************************

    If X < MinXBorder Or X > MaxXBorder Or Y < MinYBorder Or Y > MaxYBorder Then
        InMapLegalBounds = False
        Exit Function
    End If

    InMapLegalBounds = True

End Function

Function InMapBounds(X As Integer, Y As Integer) As Boolean
'*************************************************
'Author: Unkwown
'Last modified: 20/05/06
'*************************************************

    If X < XMinMapSize Or X > XMaxMapSize Or Y < YMinMapSize Or Y > YMaxMapSize Then
        InMapBounds = False
        Exit Function
    End If

    InMapBounds = True

End Function

Sub DDrawTransGrhtoSurface(ByRef Surface As DirectDrawSurface7, Grh As Grh, ByVal X As Long, ByVal Y As Long, Center As Byte, Animate As Byte, Optional ByVal KillAnim As Integer = 0)
'*************************************************
'Author: Unkwown
'Last modified: 20/05/06
'*************************************************

    On Error Resume Next
    
    If MapaCargado = False Then Exit Sub

    Dim iGrhIndex               As Integer
    Dim SourceRect              As RECT
    Dim TempGrhIndex            As Integer

    If Grh.GrhIndex = 0 Then Exit Sub

    'Figure out what frame to draw (always 1 if not animated)

    If Grh.GrhIndex > UBound(GrhData) Then Exit Sub

    If GrhData(Grh.GrhIndex).NumFrames = 0 Then
        TempGrhIndex = Grh.GrhIndex
        Grh.GrhIndex = 21
        iGrhIndex = GrhData(Grh.GrhIndex).Frames(Grh.FrameCounter)
    Else
        iGrhIndex = GrhData(Grh.GrhIndex).Frames(1)
    End If

    If iGrhIndex = 0 Then Exit Sub

    'Center Grh over X,Y pos
    If Center Then
        If GrhData(iGrhIndex).TileWidth <> 1 Then
            X = X - Int(GrhData(iGrhIndex).TileWidth * 16) + 16    'hard coded for speed
        End If
        If GrhData(iGrhIndex).TileHeight <> 1 Then
            Y = Y - Int(GrhData(iGrhIndex).TileHeight * 32) + 32    'hard coded for speed
        End If
    End If

    With SourceRect
        .Left = GrhData(iGrhIndex).sX
        .Top = GrhData(iGrhIndex).sY
        .Right = .Left + GrhData(iGrhIndex).pixelWidth
        .Bottom = .Top + GrhData(iGrhIndex).pixelHeight
    End With                   '

    Surface.BltFast X, Y, SurfaceDB.Surface(GrhData(iGrhIndex).FileNum), SourceRect, DDBLTFAST_WAIT Or DDBLTFAST_SRCCOLORKEY

    If TempGrhIndex Then
        Grh.GrhIndex = TempGrhIndex
    End If

End Sub

Sub DibujarGrhInidex(ByRef Surface As DirectDrawSurface7, iGrhIndex As Integer, ByVal X As Integer, ByVal Y As Integer, Center As Byte, Animate As Byte, Optional ByVal KillAnim As Integer = 0, Optional Alpha As Byte = 200)
'*************************************************
'Author: Loopzer
'Last modified: 20/11/07
'*************************************************
    If MapaCargado = False Then Exit Sub


    Dim SourceRect              As RECT


    'Figure out what frame to draw (always 1 if not animated)

    If iGrhIndex = 0 Then Exit Sub
    'Center Grh over X,Y pos
    If Center Then
        If GrhData(iGrhIndex).TileWidth <> 1 Then
            X = X - Int(GrhData(iGrhIndex).TileWidth * 16) + 16    'hard coded for speed
        End If
        If GrhData(iGrhIndex).TileHeight <> 1 Then
            Y = Y - Int(GrhData(iGrhIndex).TileHeight * 32) + 32    'hard coded for speed
        End If
    End If

    With SourceRect
        .Left = GrhData(iGrhIndex).sX
        .Top = GrhData(iGrhIndex).sY
        .Right = .Left + GrhData(iGrhIndex).pixelWidth
        .Bottom = .Top + GrhData(iGrhIndex).pixelHeight
    End With                   '
    'MotorDeEfectos.DBAlpha SurfaceDB.Surface(GrhData(iGrhIndex).FileNum), SourceRect, False, X, Y, Alpha
    Surface.BltFast X, Y, SurfaceDB.Surface(GrhData(iGrhIndex).FileNum), SourceRect, DDBLTFAST_WAIT Or DDBLTFAST_SRCCOLORKEY

End Sub




Sub DrawBackBufferSurface()
'*************************************************
'Author: Unkwown
'Last modified: 20/05/06
'*************************************************
    PrimarySurface.Blt MainViewRect, BackBufferSurface, MainDestRect, DDBLT_WAIT
End Sub


Sub DrawGrhtoHdc(hwnd As Long, hdc As Long, Grh As Integer, SourceRect As RECT, destRect As RECT)
'*************************************************
'Author: Unkwown
'Last modified: 26/05/06 - GS
'*************************************************

    On Error GoTo DrawGrhtoHdc_Error

    If Grh <= 0 Then Exit Sub
    Dim aux                     As Integer
    aux = GrhData(Grh).FileNum
    If aux = 0 Then Exit Sub
    SecundaryClipper.SetHWnd hwnd
    SurfaceDB.Surface(aux).BltToDC hdc, SourceRect, destRect

    On Error GoTo 0
    Exit Sub

DrawGrhtoHdc_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento DrawGrhtoHdc de Módulo modDirectDraw línea: " & Erl())
End Sub

Sub PlayWaveDS(File As String)
'*************************************************
'Author: Unkwown
'Last modified: 20/05/06
'*************************************************

'Cylce through avaiable sound buffers
    LastSoundBufferUsed = LastSoundBufferUsed + 1
    If LastSoundBufferUsed > NumSoundBuffers Then
        LastSoundBufferUsed = 1
    End If

    If LoadWavetoDSBuffer(DirectSound, DSBuffers(LastSoundBufferUsed), File) Then
        DSBuffers(LastSoundBufferUsed).Play DSBPLAY_DEFAULT
    End If

End Sub
' [Loopzer]
Public Sub DePegar()
'*************************************************
'Author: Loopzer
'Last modified: 21/11/07
'*************************************************
Dim X                           As Integer
Dim Y                           As Integer

    For X = 0 To DeSeleccionAncho - 1
        For Y = 0 To DeSeleccionAlto - 1
            MapData(X + DeSeleccionOX, Y + DeSeleccionOY) = DeSeleccionMap(X, Y)
        Next
    Next
    
End Sub

Public Sub PegarSeleccion()    '(mx As Integer, my As Integer)
'*************************************************
'Author: Loopzer
'Last modified: 21/11/07
'*************************************************

'podria usar copy mem , pero por las dudas no XD

Dim X                           As Integer
Dim Y                           As Integer
Static UltimoX                  As Integer
Static UltimoY                  As Integer

    If UltimoX = SobreX And UltimoY = SobreY Then Exit Sub
    
    UltimoX = SobreX
    UltimoY = SobreY
    DeSeleccionAncho = SeleccionAncho
    DeSeleccionAlto = SeleccionAlto
    DeSeleccionOX = SobreX
    DeSeleccionOY = SobreY
    
    ReDim DeSeleccionMap(DeSeleccionAncho, DeSeleccionAlto) As MapBlock

    For X = 0 To DeSeleccionAncho - 1
        For Y = 0 To DeSeleccionAlto - 1
            DeSeleccionMap(X, Y) = MapData(X + SobreX, Y + SobreY)
            MapData(X + SobreX, Y + SobreY) = SeleccionMap(X, Y)
        Next
    Next
    
'    For X = 0 To SeleccionAncho - 1
'        For Y = 0 To SeleccionAlto - 1
'            MapData(X + SobreX, Y + SobreY) = SeleccionMap(X, Y)
'        Next
'    Next
    
    Seleccionando = False
    
End Sub

Public Sub PegarSeleccionAbajo()    '(mx As Integer, my As Integer)

'*************************************************
'Author: Loopzer
'Last modified: 21/11/07
'*************************************************
'podria usar copy mem , pero por las dudas no XD

Dim X                           As Integer
Dim Y                           As Integer
Static UltimoX                  As Integer
Static UltimoY                  As Integer
    
    If UltimoX = SobreX And UltimoY = SobreY Then Exit Sub
    
    UltimoX = SobreX
    UltimoY = SobreY
    DeSeleccionAncho = SeleccionAncho
    DeSeleccionAlto = SeleccionAlto
    DeSeleccionOX = SobreX
    DeSeleccionOY = SobreY
    SobreY = SobreY - 20
    
    ReDim DeSeleccionMap(DeSeleccionAncho, DeSeleccionAlto) As MapBlock

    For X = 0 To DeSeleccionAncho - 1
        For Y = 0 To DeSeleccionAlto - 1
            DeSeleccionMap(X, Y) = MapData(X + SobreX, Y + SobreY)
            MapData(X + SobreX, Y + SobreY) = SeleccionMap(X, Y)
        Next
    Next
    
'    For X = 0 To SeleccionAncho - 1
'        For Y = 0 To SeleccionAlto - 1
'            MapData(X + SobreX, Y + SobreY) = SeleccionMap(X, Y)
'        Next
'    Next
    
    Seleccionando = False
    
End Sub

Public Sub PegarSeleccionDerecha()    '(mx As Integer, my As Integer)
'*************************************************
'Author: Loopzer
'Last modified: 21/11/07
'*************************************************
'podria usar copy mem , pero por las dudas no XD

Dim X                           As Integer
Dim Y                           As Integer
Static UltimoX                  As Integer
Static UltimoY                  As Integer

    If UltimoX = SobreX And UltimoY = SobreY Then Exit Sub
    
    UltimoX = SobreX
    UltimoY = SobreY
    DeSeleccionAncho = SeleccionAncho
    DeSeleccionAlto = SeleccionAlto
    DeSeleccionOX = SobreX
    DeSeleccionOY = SobreY
    SobreX = SobreX - 26
    'SobreY = SobreY - 10
    
    ReDim DeSeleccionMap(DeSeleccionAncho, DeSeleccionAlto) As MapBlock

    For X = 0 To DeSeleccionAncho - 1
        For Y = 0 To DeSeleccionAlto - 1
            DeSeleccionMap(X, Y) = MapData(X + SobreX, Y + SobreY)
            MapData(X + SobreX, Y + SobreY) = SeleccionMap(X, Y)
        Next
    Next
    
'    For X = 0 To SeleccionAncho - 1
'        For Y = 0 To SeleccionAlto - 1
'            MapData(X + SobreX, Y + SobreY) = SeleccionMap(X, Y)
'        Next
'    Next
    
    Seleccionando = False
    
End Sub
Public Sub PegarSeleccionIzquierda()    '(mx As Integer, my As Integer)
'*************************************************
'Author: Loopzer
'Last modified: 21/11/07
'*************************************************
'podria usar copy mem , pero por las dudas no XD
Static UltimoX                  As Integer
Static UltimoY                  As Integer
    If UltimoX = SobreX And UltimoY = SobreY Then Exit Sub
    UltimoX = SobreX
    UltimoY = SobreY
    Dim X                       As Integer
    Dim Y                       As Integer
    DeSeleccionAncho = SeleccionAncho
    DeSeleccionAlto = SeleccionAlto
    DeSeleccionOX = SobreX
    DeSeleccionOY = SobreY
    SobreX = SobreX - 73
    SobreY = SobreY - 20
    ReDim DeSeleccionMap(DeSeleccionAncho, DeSeleccionAlto) As MapBlock

    For X = 0 To DeSeleccionAncho - 1
        For Y = 0 To DeSeleccionAlto - 1
            DeSeleccionMap(X, Y) = MapData(X + SobreX, Y + SobreY)
        Next
    Next
    For X = 0 To SeleccionAncho - 1
        For Y = 0 To SeleccionAlto - 1
            MapData(X + SobreX, Y + SobreY) = SeleccionMap(X, Y)
        Next
    Next
    Seleccionando = False
End Sub

Public Sub PegarSeleccionDerechaAbajo()    '(mx As Integer, my As Integer)
'*************************************************
'Author: Loopzer
'Last modified: 21/11/07
'*************************************************
'podria usar copy mem , pero por las dudas no XD

Dim X                           As Integer
Dim Y                           As Integer
Static UltimoX                  As Integer
Static UltimoY                  As Integer

    If UltimoX = SobreX And UltimoY = SobreY Then Exit Sub
    
    UltimoX = SobreX
    UltimoY = SobreY

    DeSeleccionAncho = SeleccionAncho
    DeSeleccionAlto = SeleccionAlto
    DeSeleccionOX = SobreX
    DeSeleccionOY = SobreY
    SobreX = SobreX - 26
    SobreY = SobreY - 20
    
    ReDim DeSeleccionMap(DeSeleccionAncho, DeSeleccionAlto) As MapBlock

    For X = 0 To DeSeleccionAncho - 1
        For Y = 0 To DeSeleccionAlto - 1
            DeSeleccionMap(X, Y) = MapData(X + SobreX, Y + SobreY)
            MapData(X + SobreX, Y + SobreY) = SeleccionMap(X, Y)
        Next
    Next

    '    For X = 0 To SeleccionAncho - 1
    '        For Y = 0 To SeleccionAlto - 1
    '            MapData(X + SobreX, Y + SobreY) = SeleccionMap(X, Y)
    '        Next
    '    Next

    Seleccionando = False

End Sub
Public Sub AccionSeleccion()
'*************************************************
'Author: Loopzer
'Last modified: 21/11/07
'*************************************************
Dim X                           As Integer
Dim Y                           As Integer
    SeleccionAncho = Abs(SeleccionIX - SeleccionFX) + 1
    SeleccionAlto = Abs(SeleccionIY - SeleccionFY) + 1
    DeSeleccionAncho = SeleccionAncho
    DeSeleccionAlto = SeleccionAlto
    DeSeleccionOX = SeleccionIX
    DeSeleccionOY = SeleccionIY
    ReDim DeSeleccionMap(DeSeleccionAncho, DeSeleccionAlto) As MapBlock

    For X = 0 To SeleccionAncho - 1
        For Y = 0 To SeleccionAlto - 1
            If Y + SeleccionIY < YMaxMapSize And X + SeleccionIX < XMaxMapSize Then
                DeSeleccionMap(X, Y) = MapData(X + SeleccionIX, Y + SeleccionIY)
                ClickEdit vbLeftButton, SeleccionIX + X, SeleccionIY + Y
            End If
        Next
    Next
    
'    For X = 0 To SeleccionAncho - 1
'        For Y = 0 To SeleccionAlto - 1
'            ClickEdit vbLeftButton, SeleccionIX + X, SeleccionIY + Y
'        Next
'    Next
    Seleccionando = False
    
End Sub

Public Sub BlockearSeleccion()
'*************************************************
'Author: Loopzer
'Last modified: 21/11/07
'*************************************************
Dim X                           As Integer
Dim Y                           As Integer
    SeleccionAncho = Abs(SeleccionIX - SeleccionFX) + 1
    SeleccionAlto = Abs(SeleccionIY - SeleccionFY) + 1
    DeSeleccionAncho = SeleccionAncho
    DeSeleccionAlto = SeleccionAlto
    DeSeleccionOX = SeleccionIX
    DeSeleccionOY = SeleccionIY
    ReDim DeSeleccionMap(DeSeleccionAncho, DeSeleccionAlto) As MapBlock

    '[/About]
    For X = 0 To SeleccionAncho - 1
        For Y = 0 To SeleccionAlto - 1
            DeSeleccionMap(X, Y) = MapData(X + SeleccionIX, Y + SeleccionIY)
            If MapData(X + SeleccionIX, Y + SeleccionIY).Blocked = 1 Then
                MapData(X + SeleccionIX, Y + SeleccionIY).Blocked = 0
            Else
                MapData(X + SeleccionIX, Y + SeleccionIY).Blocked = 1
            End If
        Next
    Next
    
'    For X = 0 To SeleccionAncho - 1
'        For Y = 0 To SeleccionAlto - 1
'            If MapData(X + SeleccionIX, Y + SeleccionIY).Blocked = 1 Then
'                MapData(X + SeleccionIX, Y + SeleccionIY).Blocked = 0
'            Else
'                MapData(X + SeleccionIX, Y + SeleccionIY).Blocked = 1
'            End If
'        Next
'    Next
    Seleccionando = False
End Sub
Public Sub CortarSeleccion()
'*************************************************
'Author: Loopzer
'Last modified: 21/11/07
'*************************************************
    CopiarSeleccion
    Dim X                       As Integer
    Dim Y                       As Integer
    Dim Vacio                   As MapBlock
    DeSeleccionAncho = SeleccionAncho
    DeSeleccionAlto = SeleccionAlto
    DeSeleccionOX = SeleccionIX
    DeSeleccionOY = SeleccionIY
    ReDim DeSeleccionMap(DeSeleccionAncho, DeSeleccionAlto) As MapBlock

    For X = 0 To SeleccionAncho - 1
        For Y = 0 To SeleccionAlto - 1
            DeSeleccionMap(X, Y) = MapData(X + SeleccionIX, Y + SeleccionIY)
            MapData(X + SeleccionIX, Y + SeleccionIY) = Vacio
        Next
    Next
    
'    For X = 0 To SeleccionAncho - 1
'        For Y = 0 To SeleccionAlto - 1
'            MapData(X + SeleccionIX, Y + SeleccionIY) = Vacio
'        Next
'    Next

    Seleccionando = False
End Sub
Public Sub CopiarSeleccion()
'*************************************************
'Author: Loopzer
'Last modified: 21/11/07
'*************************************************
'podria usar copy mem , pero por las dudas no XD
Dim X                           As Integer
Dim Y                           As Integer
    Seleccionando = False
    SeleccionAncho = Abs(SeleccionIX - SeleccionFX) + 1
    SeleccionAlto = Abs(SeleccionIY - SeleccionFY) + 1
    ReDim SeleccionMap(SeleccionAncho, SeleccionAlto) As MapBlock
    For X = 0 To SeleccionAncho - 1
        For Y = 0 To SeleccionAlto - 1
            SeleccionMap(X, Y) = MapData(X + SeleccionIX, Y + SeleccionIY)
        Next
    Next
End Sub
Public Sub GenerarVista()
'*************************************************
'Author: Loopzer
'Last modified: 21/11/07
'*************************************************
' hacer una llamada a un seter o geter , es mas lento q una variable
' con esto hacemos q no este preguntando a el objeto cadavez
' q dibuja , Render mas rapido ;)
    VerBlockeados = frmMain.cVerBloqueos.Value
    VerTriggers = frmMain.cVerTriggers.Value
    VerCapa1 = frmMain.mnuVerCapa1.Checked
    VerCapa2 = frmMain.mnuVerCapa2.Checked
    VerCapa3 = frmMain.mnuVerCapa3.Checked
    VerCapa4 = frmMain.mnuVerCapa4.Checked
    VerTranslados = frmMain.mnuVerTranslados.Checked
    VerObjetos = frmMain.mnuVerObjetos.Checked
    VerNpcs = frmMain.mnuVerNPCs.Checked

End Sub
' [/Loopzer]
Public Sub RenderScreen(TileX As Integer, TileY As Integer, PixelOffsetX As Integer, PixelOffsetY As Integer)

'*************************************************
'Author: Unkwown
'Last modified: 31/05/06 by GS
'Last modified: 21/11/07 By Loopzer
'Last modifier: 24/11/08 by GS
'*************************************************

Dim bCapa                       As Byte    'cCapas ' 31/05/2006 - GS, control de Capas
Dim Y                           As Integer    'Keeps track of where on map we are
Dim X                           As Integer
Dim aux                         As Integer
Dim dy                          As Integer
Dim dX                          As Integer
Dim MinY                        As Integer    'Start Y pos on current map
Dim MaxY                        As Integer    'End Y pos on current map
Dim MinX                        As Integer    'Start X pos on current map
Dim MaxX                        As Integer    'End X pos on current map
Dim ScreenX                     As Long    'Keeps track of where to place tile on screen
Dim ScreenY                     As Long
Dim Sobre                       As Integer
Dim iPPx                        As Integer    'Usado en el Layer de Chars
Dim iPPy                        As Integer    'Usado en el Layer de Chars
Dim iGrhIndex                   As Integer    'Usado en el Layer 1
Dim PixelOffsetXTemp            As Integer    'For centering grhs
Dim PixelOffsetYTemp            As Integer
Dim Grh                         As Grh    'Temp Grh for show tile and blocked
Dim TempChar                    As Char
Dim r                           As RECT
Dim rSourceRect                 As RECT    'Usado en el Layer 1

    On Error GoTo RenderScreen_Error

    BackBufferSurface.BltColorFill r, 0    'Solucion a algunos temas molestos :P
    MinY = (TileY - (WindowTileHeight \ 2)) - TileBufferSize
    MaxY = (TileY + (WindowTileHeight \ 2)) + TileBufferSize
    MinX = (TileX - (WindowTileWidth \ 2)) - TileBufferSize
    MaxX = (TileX + (WindowTileWidth \ 2)) + TileBufferSize

    ' 31/05/2006 - GS, control de Capas
    If Val(frmMain.cCapas.Text) >= 1 And (frmMain.cCapas.Text) <= 4 Then
        bCapa = Val(frmMain.cCapas.Text)
    Else
        bCapa = 1
    End If

    GenerarVista               'Loopzer
    ScreenY = 8

    For Y = (MinY + 8) To (MaxY - 8)
        ScreenX = 8
        For X = (MinX + 8) To (MaxX - 8)
            If InMapBounds(X, Y) Then
                If X > XMaxMapSize Or Y < 1 Then Exit For    ' 30/05/2006

                'Layer 1 **********************************
                With MapData(X, Y)

                    If SobreX = X And SobreY = Y Then
                        ' Pone Grh !
                        Sobre = -1
                        If frmMain.cSeleccionarSuperficie.Value = True Then
                            Sobre = .Graphic(bCapa).GrhIndex
                            If frmConfigSup.MOSAICO.Value = vbChecked Then
                                If frmConfigSup.DespMosaic.Value = vbChecked Then
                                    dy = Val(frmConfigSup.DMLargo.Text)
                                    dX = Val(frmConfigSup.DMAncho.Text)
                                Else
                                    dy = 0
                                    dX = 0
                                End If

                                If frmMain.mnuAutoCompletarSuperficies.Checked = False Then
                                    aux = Val(frmMain.cGrh.Text) + _
                                          (((Y + dy) Mod Val(frmConfigSup.mLargo.Text)) * Val(frmConfigSup.mAncho.Text)) + ((X + dX) Mod Val(frmConfigSup.mAncho.Text))
                                    If .Graphic(bCapa).GrhIndex <> aux Then
                                        .Graphic(bCapa).GrhIndex = aux
                                        InitGrh .Graphic(bCapa), aux
                                    End If
                                Else
                                    aux = Val(frmMain.cGrh.Text) + _
                                          (((Y + dy) Mod frmConfigSup.mLargo.Text) * frmConfigSup.mAncho.Text) + ((X + dX) Mod frmConfigSup.mAncho.Text)
                                    If .Graphic(bCapa).GrhIndex <> aux Then
                                        .Graphic(bCapa).GrhIndex = aux
                                        InitGrh .Graphic(bCapa), aux
                                    End If
                                End If
                            Else
                                If .Graphic(bCapa).GrhIndex <> Val(frmMain.cGrh.Text) Then
                                    .Graphic(bCapa).GrhIndex = Val(frmMain.cGrh.Text)
                                    InitGrh .Graphic(bCapa), Val(frmMain.cGrh.Text)
                                End If
                            End If
                        End If
                    Else
                        Sobre = -1
                    End If
                End With

                If VerCapa1 Then

                    With MapData(X, Y).Graphic(1)
                        If (.GrhIndex <> 0) Then
                            If (.Started = 1) Then
                                If (.SpeedCounter > 0) Then
                                    .SpeedCounter = .SpeedCounter - 1
                                    If (.SpeedCounter = 0) Then
                                        .SpeedCounter = GrhData(.GrhIndex).Speed
                                        .FrameCounter = .FrameCounter + 1
                                        If (.FrameCounter > GrhData(.GrhIndex).NumFrames) Then _
                                           .FrameCounter = 1
                                    End If
                                End If
                            End If
                            'Figure out what frame to draw (always 1 if not animated)
                            iGrhIndex = GrhData(.GrhIndex).Frames(.FrameCounter)
                        End If
                    End With
                    If iGrhIndex <> 0 Then
                        rSourceRect.Left = GrhData(iGrhIndex).sX
                        rSourceRect.Top = GrhData(iGrhIndex).sY
                        rSourceRect.Right = rSourceRect.Left + GrhData(iGrhIndex).pixelWidth
                        rSourceRect.Bottom = rSourceRect.Top + GrhData(iGrhIndex).pixelHeight
                        'El width fue hardcodeado para speed!
                        Call BackBufferSurface.BltFast( _
                             ((32 * ScreenX) - 32) + PixelOffsetX, _
                             ((32 * ScreenY) - 32) + PixelOffsetY, _
                             SurfaceDB.Surface(GrhData(iGrhIndex).FileNum), _
                             rSourceRect, _
                             DDBLTFAST_WAIT)
                    End If
                End If

                'Layer 2 **********************************
                If MapData(X, Y).Graphic(2).GrhIndex <> 0 And VerCapa2 Then
                    Call DDrawTransGrhtoSurface(BackBufferSurface, MapData(X, Y).Graphic(2), ((32 * ScreenX) - 32) + PixelOffsetX, ((32 * ScreenY) - 32) + PixelOffsetY, 1, 1)
                End If

                If Sobre >= 0 Then
                    If MapData(X, Y).Graphic(bCapa).GrhIndex <> Sobre Then
                        MapData(X, Y).Graphic(bCapa).GrhIndex = Sobre
                        InitGrh MapData(X, Y).Graphic(bCapa), Sobre
                    End If
                End If
            End If
            ScreenX = ScreenX + 1
        Next X
        ScreenY = ScreenY + 1
        If Y > YMaxMapSize Then Exit For
    Next Y
    ScreenY = 8
    For Y = (MinY + 8) To (MaxY - 1)    '- 8+ 8
        ScreenX = 5
        For X = (MinX + 5) To (MaxX - 5)    '- 8 + 8
            If InMapBounds(X, Y) Then
                If X > XMaxMapSize Or X < -3 Then Exit For    ' 30/05/2006

                iPPx = ((32 * ScreenX) - 32) + PixelOffsetX
                iPPy = ((32 * ScreenY) - 32) + PixelOffsetY
                'Object Layer **********************************
                If MapData(X, Y).OBJInfo.objindex <> 0 And VerObjetos Then
                    Call DDrawTransGrhtoSurface( _
                         BackBufferSurface, _
                         MapData(X, Y).ObjGrh, _
                         iPPx, iPPy, 1, 1)
                End If

                'Char layer **********************************
                If MapData(X, Y).CharIndex <> 0 And VerNpcs Then

                    TempChar = CharList(MapData(X, Y).CharIndex)

                    PixelOffsetXTemp = PixelOffsetX
                    PixelOffsetYTemp = PixelOffsetY

                    'Dibuja solamente players
                    If TempChar.Head.Head(TempChar.Heading).GrhIndex <> 0 Then
                        'Draw Body
                        Call DDrawTransGrhtoSurface(BackBufferSurface, TempChar.Body.Walk(TempChar.Heading), (PixelPos(ScreenX) + PixelOffsetXTemp), PixelPos(ScreenY) + PixelOffsetYTemp, 1, 1)
                        'Draw Head
                        Call DDrawTransGrhtoSurface(BackBufferSurface, TempChar.Head.Head(TempChar.Heading), (PixelPos(ScreenX) + PixelOffsetXTemp) + TempChar.Body.HeadOffset.X, PixelPos(ScreenY) + PixelOffsetYTemp + TempChar.Body.HeadOffset.Y + 35, 1, 0)
                    Else
                        Call DDrawTransGrhtoSurface(BackBufferSurface, Grh, (PixelPos(ScreenX) + PixelOffsetXTemp), PixelPos(ScreenY) + PixelOffsetYTemp, 1, 1)
                    End If

                End If
                'Layer 3 *****************************************
                If MapData(X, Y).Graphic(3).GrhIndex <> 0 And VerCapa3 Then
                    'Draw
                    'Call DDrawTransGrhtoSurface( _
                     BackBufferSurface, _
                     MapData(X, Y).Graphic(3), _
                     ((32 * ScreenX) - 32) + PixelOffsetX, _
                     ((32 * ScreenY) - 32) + PixelOffsetY, _
                     1, 1)
                    Call DDrawTransGrhtoSurface( _
                         BackBufferSurface, _
                         MapData(X, Y).Graphic(3), _
                         iPPx, _
                         iPPy, _
                         1, 1)
                End If
            End If
            ScreenX = ScreenX + 1
        Next X
        ScreenY = ScreenY + 1
    Next Y

    'Tiles blokeadas, techos, triggers , seleccion
    ScreenY = 5
    For Y = (MinY + 5) To (MaxY - 1)
        ScreenX = 5
        For X = (MinX + 5) To (MaxX)
            If X < XMaxMapSize + 1 And X > XMinMapSize - 1 And Y < YMaxMapSize + 1 And Y > YMinMapSize + 1 Then    ' 30/05/2006
                iPPx = ((32 * ScreenX) - 32) + PixelOffsetX
                iPPy = ((32 * ScreenY) - 32) + PixelOffsetY
                If MapData(X, Y).Graphic(4).GrhIndex <> 0 And (frmMain.mnuVerCapa4.Checked = True) Then
                    'Draw
                    Call DDrawTransGrhtoSurface(BackBufferSurface, MapData(X, Y).Graphic(4), iPPx, iPPy, 1, 1)
                End If

                If MapData(X, Y).TileExit.Map <> 0 And VerTranslados Then
                    Grh.GrhIndex = 3
                    Grh.FrameCounter = 1
                    Grh.Started = 0
                    Call DDrawTransGrhtoSurface(BackBufferSurface, Grh, iPPx, iPPy, 1, 1)
                End If
                'Show blocked tiles
                If VerBlockeados And MapData(X, Y).Blocked = 1 Then
                    Grh.GrhIndex = 270
                    Grh.FrameCounter = 1
                    Grh.Started = 0
                    Call DDrawTransGrhtoSurface(BackBufferSurface, Grh, ((32 * ScreenX) - 32) + PixelOffsetX, ((32 * ScreenY) - 32) + PixelOffsetY, 1, 1)
                End If

                If VerGrilla Then
                    ' Grilla 24/11/2008 by GS
                    'BackBufferSurface.SetForeColor vbRed
                    'BackBufferSurface.DrawLine ((32 * ScreenX) - 32) + PixelOffsetX, ((32 * ScreenY) - 32) + PixelOffsetY, iPPx, iPPy + 32
                    'BackBufferSurface.DrawLine ((32 * ScreenX) - 32) + PixelOffsetX, ((32 * ScreenY) - 32) + PixelOffsetY, iPPx + 32, iPPy
                    Grh.GrhIndex = 2
                    Grh.FrameCounter = 1
                    Grh.Started = 0
                    Call DDrawTransGrhtoSurface(BackBufferSurface, Grh, ((32 * ScreenX) - 32) + PixelOffsetX, ((32 * ScreenY) - 32) + PixelOffsetY, 1, 1)
                End If

                If VerTriggers And str(MapData(X, Y).Trigger) > 0 Then
                    Call DrawText(PixelPos(ScreenX), PixelPos(ScreenY), str(MapData(X, Y).Trigger), vbGreen)
                End If

                If Seleccionando Then
                    'If ScreenX >= SeleccionIX And ScreenX <= SeleccionFX And ScreenY >= SeleccionIY And ScreenY <= SeleccionFY Then
                    If X >= SeleccionIX And Y >= SeleccionIY Then
                        If X <= SeleccionFX And Y <= SeleccionFY Then
                            BackBufferSurface.SetForeColor vbGreen
                            BackBufferSurface.SetFillStyle 1
                            BackBufferSurface.DrawBox iPPx, iPPy, iPPx + 32, iPPy + 32
                        End If
                    End If
                End If

            End If
            ScreenX = ScreenX + 1
        Next X
        ScreenY = ScreenY + 1
    Next Y

    On Error GoTo 0
    Exit Sub

RenderScreen_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento RenderScreen de Módulo modDirectDraw línea: " & Erl())

End Sub



Public Sub DrawText(lngXPos As Integer, lngYPos As Integer, strText As String, lngColor As Long)
'*************************************************
'Author: Unkwown
'Last modified: 26/05/06
'*************************************************
    If LenB(strText) <> 0 Then
        'BackBufferSurface.SetFontTransparency True                           'Set the transparency flag to true
        'BackBufferSurface.SetForeColor vbBlack                               'Set the color of the text to the color passed to the sub
        'BackBufferSurface.SetFont frmMain.Font                               'Set the font used to the font on the form
        'BackBufferSurface.DrawText lngXPos - 2, lngYPos - 1, strText, False  'Draw the text on to the screen, in the coordinates specified


        BackBufferSurface.SetFontTransparency True    'Set the transparency flag to true
        BackBufferSurface.SetForeColor lngColor    'Set the color of the text to the color passed to the sub
        BackBufferSurface.SetFont frmMain.Font    'Set the font used to the font on the form
        BackBufferSurface.DrawText lngXPos, lngYPos, strText, False    'Draw the text on to the screen, in the coordinates specified
    End If
End Sub

Function HayUserAbajo(X As Integer, Y As Integer, GrhIndex) As Boolean
'*************************************************
'Author: Unkwown
'Last modified: 20/05/06
'*************************************************
    HayUserAbajo = _
    CharList(UserCharIndex).Pos.X >= X - (GrhData(GrhIndex).TileWidth \ 2) _
                   And CharList(UserCharIndex).Pos.X <= X + (GrhData(GrhIndex).TileWidth \ 2) _
                   And CharList(UserCharIndex).Pos.Y >= Y - (GrhData(GrhIndex).TileHeight - 1) _
                   And CharList(UserCharIndex).Pos.Y <= Y
End Function



Function PixelPos(X As Long) As Long
'*************************************************
'Author: Unkwown
'Last modified: 20/05/06
'*************************************************

    PixelPos = (TilePixelWidth * X) - TilePixelWidth

End Function

Function InitTileEngine(ByRef setDisplayFormhWnd As Long, setMainViewTop As Integer, setMainViewLeft As Integer, setTilePixelHeight As Integer, setTilePixelWidth As Integer, setWindowTileHeight As Integer, setWindowTileWidth As Integer, setTileBufferSize As Integer) As Boolean
'*************************************************
'Author: Unkwown
'Last modified: 15/10/06 by GS
'*************************************************

Dim SurfaceDesc                 As DDSURFACEDESC2
Dim ddck                        As DDCOLORKEY

    'Fill startup variables
    DisplayFormhWnd = setDisplayFormhWnd
    MainViewTop = setMainViewTop
    MainViewLeft = setMainViewLeft
    TilePixelWidth = setTilePixelWidth
    TilePixelHeight = setTilePixelHeight
    WindowTileHeight = setWindowTileHeight
    WindowTileWidth = setWindowTileWidth
    TileBufferSize = setTileBufferSize

    '[GS] 02/10/2006
    MinXBorder = XMinMapSize + (ClienteWidth \ 2)
    MaxXBorder = XMaxMapSize - (ClienteWidth \ 2)
    MinYBorder = YMinMapSize + (ClienteHeight \ 2)
    MaxYBorder = YMaxMapSize - (ClienteHeight \ 2)

    MainViewWidth = (TilePixelWidth * WindowTileWidth)
    MainViewHeight = (TilePixelHeight * WindowTileHeight)
    'Resize mapdata array

    ReDim MapData(XMinMapSize To XMaxMapSize, YMinMapSize To YMaxMapSize) As MapBlock

    '****** INIT DirectDraw ******
    ' Create the root DirectDraw object

    Set DirectX = New DirectX7
    Set DirectDraw = DirectX.DirectDrawCreate("")

    DirectDraw.SetCooperativeLevel DisplayFormhWnd, DDSCL_NORMAL

    'Primary Surface
    With SurfaceDesc
        .lFlags = DDSD_CAPS
        .ddsCaps.lCaps = DDSCAPS_PRIMARYSURFACE
    End With

    Set PrimarySurface = DirectDraw.CreateSurface(SurfaceDesc)

    Set PrimaryClipper = DirectDraw.CreateClipper(0)
    PrimaryClipper.SetHWnd frmMain.hwnd
    PrimarySurface.SetClipper PrimaryClipper

    Set SecundaryClipper = DirectDraw.CreateClipper(0)

    'Back Buffer Surface
    With BackBufferRect
        .Left = 0
        .Top = 0
        .Right = TilePixelWidth * (WindowTileWidth + (2 * TileBufferSize))
        .Bottom = TilePixelHeight * (WindowTileHeight + (2 * TileBufferSize))
    End With

    With SurfaceDesc
        .lFlags = DDSD_CAPS Or DDSD_HEIGHT Or DDSD_WIDTH
        If ClientSetup.bUseVideo Then
            .ddsCaps.lCaps = DDSCAPS_OFFSCREENPLAIN
        Else
            .ddsCaps.lCaps = DDSCAPS_OFFSCREENPLAIN Or DDSCAPS_SYSTEMMEMORY
        End If
        .lHeight = BackBufferRect.Bottom
        .lWidth = BackBufferRect.Right
    End With

    ' Create surface
    Set BackBufferSurface = DirectDraw.CreateSurface(SurfaceDesc)

    'Set color key
    ddck.low = 0
    ddck.high = 0
    BackBufferSurface.SetColorKey DDCKEY_SRCBLT, ddck

    'Load graphic data into memory
    'modIndices.CargarIndicesDeGraficos
    LoadGrhData
    If LenB(Dir(DirGraficos & "1.bmp", vbArchive)) = 0 Then
        MsgBox "La carpeta de Graficos esta vacia o incompleta!", vbCritical
        End
    Else
        frmCargando.X.Caption = "Iniciando Control de Superficies..."
        '    DoEvents
        Call SurfaceDB.Initialize(DirectDraw, ClientSetup.bUseVideo, DirGraficos, ClientSetup.byMemory)
    End If

    'Wave Sound
    Set DirectSound = DirectX.DirectSoundCreate("")
    DirectSound.SetCooperativeLevel DisplayFormhWnd, DSSCL_PRIORITY
    LastSoundBufferUsed = 1

    InitTileEngine = True
    EngineRun = True
    DoEvents
End Function
