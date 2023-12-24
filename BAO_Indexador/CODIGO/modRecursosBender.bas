Attribute VB_Name = "modRecursosBender"
Option Explicit
Public Const Separator         As String = "."

Public Enum E_Heading
    NORTH = 1
    EAST = 2
    SOUTH = 3
    WEST = 4
End Enum

Public Type Position
    X                           As Long
    Y                           As Long
End Type

Public Type GrhData
    sX                          As Integer    '2
    sY                          As Integer    '4

    FileNum                     As Long    '8
    
    pixelWidth                  As Integer    '10
    pixelHeight                 As Integer    '12
    
    TileWidth                   As Single    '16
    TileHeight                  As Single    '20
    
    NumFrames                   As Integer    '22
    Frames()                    As Long    '26
    
    speed                       As Single    '30
End Type

Public Type Grh
    GrhIndex                    As Integer
    FrameCounter                As Single
    speed                       As Single
    Started                     As Byte
    Loops                       As Integer
End Type

'Lista de cuerpos
Public Type BodyData
    Walk(E_Heading.NORTH To E_Heading.WEST) As Grh
    HeadOffset                  As Position
End Type

'Lista de cabezas
Public Type HeadData
    Head(E_Heading.NORTH To E_Heading.WEST) As Grh
End Type

'Lista de las animaciones de las armas
Public Type WeaponAnimData
    WeaponWalk(E_Heading.NORTH To E_Heading.WEST) As Grh
End Type

'Lista de las animaciones de los escudos
Public Type ShieldAnimData
    ShieldWalk(E_Heading.NORTH To E_Heading.WEST) As Grh
End Type

'Lista de cabezas
Public Type tIndiceCabeza
    Head(1 To 4)                As Integer
End Type

Public Type tIndiceCuerpo
    Body(1 To 4)                As Integer
    HeadOffsetX                 As Integer
    HeadOffsetY                 As Integer
End Type

Public Type tIndiceFx
    Animacion                   As Integer
    OffsetX                     As Integer
    OffsetY                     As Integer
End Type

Public grhCount                 As Long
Public NumCascos                As Integer
Public NumBodies                As Integer
Public Numheads                 As Integer
Public NumFxs                   As Integer
Public NumWeaponAnims           As Integer
Public NumEscudosAnims          As Integer

Public GrhData()                As GrhData    'Guarda todos los grh
Public BodyData()               As BodyData
Public HeadData()               As HeadData
Public FxData()                 As tIndiceFx
Public WeaponAnimData()         As WeaponAnimData
Public ShieldAnimData()         As ShieldAnimData
Public CascoAnimData()          As HeadData

Public MiCabecera               As tCabecera

Public Const INFINITE_LOOPS     As Integer = -1

Public Type tCabecera          'Cabecera de los con
    desc                        As String * 255
    CRC                         As Long
    MagicWord                   As Long
End Type

Public Sub LoadResourceInterface()

Dim i                           As Long
Dim IsEnabled                   As Boolean
Dim IsVisible                   As Boolean

    On Error GoTo LoadResourceInterface_Error

20  IsEnabled = frmMain.Enabled
30  frmMain.Enabled = False
40  IsVisible = frmMain.Visible
50  If IsVisible Then
60      frmMain.Visible = False
70      frmCargando.Show
80  End If

90  frmCargando.lblLoading.Caption = "Cargando interfaz de usuario..."
100 frmMain.lstGraphics.Clear
110 frmMain.cmbFondo.Clear
120 DoEvents
130 frmMain.cmbFondo.AddItem "0"

140 frmMain.lstGraphics.Visible = False
150 frmMain.cmbFondo.Visible = False

160 For i = 1 To grhCount
170     frmMain.lstGraphics.AddItem NameLineGraphic(i)
        'frmMain.cmbFondo.AddItem NameLineGraphic(i)
        'frmMain.cmbAnim.AddItem NameLineGraphic(i)
180 Next i

190 frmMain.lstGraphics.AddItem "Resize"

    '    frmMain.cmbArmas.AddItem "0"
    '    frmMain.cmbCabezas.AddItem "0"
    '    frmMain.cmbCascos.AddItem "0"
    '    frmMain.cmbCuerpos.AddItem "0"
    '    frmMain.cmbEscudos.AddItem "0"
    '    frmMain.cmbEfectos.AddItem "0"

    'Armas
200 frmMain.cmbArmas.Clear
210 For i = 0 To NumWeaponAnims
220     frmMain.cmbArmas.AddItem i & IIf(i = 2, " (No-Anim)", "")
230 Next i

240 frmMain.cmbArmas.ListIndex = NumAnim_Armas

    'Cabezas
250 frmMain.cmbCabezas.Clear
260 For i = 0 To Numheads
270     frmMain.cmbCabezas.AddItem i & IIf(HeadData(i).Head(1).GrhIndex = 0, " (Libre)", "")
280 Next i
290 frmMain.cmbCabezas.ListIndex = NumAnim_Cabezas

    'Cascos
300 frmMain.cmbCascos.Clear
310 For i = 0 To NumCascos
320     frmMain.cmbCascos.AddItem i & IIf(i = 2, " (No-Anim)", "")
330 Next i
340 frmMain.cmbCascos.ListIndex = NumAnim_Cascos

    'Cuerpos
350 frmMain.cmbCuerpos.Clear
360 For i = 0 To NumBodies
370     frmMain.cmbCuerpos.AddItem i
380 Next i

390 frmMain.cmbCuerpos.ListIndex = NumAnim_Cuerpos

    'Escudos
400 frmMain.cmbEscudos.Clear
410 For i = 0 To NumEscudosAnims
420     frmMain.cmbEscudos.AddItem i & IIf(i = 2, " (No-Anim)", "")
430 Next i

440 frmMain.cmbEscudos.ListIndex = NumAnim_Escudos

    'Efectos
450 frmMain.cmbEfectos.Clear
460 For i = 0 To NumFxs
470     frmMain.cmbEfectos.AddItem i
480 Next i

490 frmMain.cmbEfectos.ListIndex = NumAnim_Efectos

500 frmMain.cmbArmas.AddItem "Resize"
510 frmMain.cmbCabezas.AddItem "Resize"
520 frmMain.cmbCascos.AddItem "Resize"
530 frmMain.cmbCuerpos.AddItem "Resize"
540 frmMain.cmbEscudos.AddItem "Resize"
550 frmMain.cmbEfectos.AddItem "Resize"

560 frmMain.lstGraphics.Visible = True
570 frmMain.cmbFondo.Visible = True

580 frmMain.cmbTipo.ListIndex = 0
590 frmMain.lstGraphics.ListIndex = 0
600 frmMain.cmbFondo.ListIndex = 0

610 Sleep 100: DoEvents
620 frmMain.Enabled = IsEnabled
630 If IsVisible Then
640     frmMain.Visible = True
650     Unload frmCargando
660 End If

670 On Error GoTo 0
680 Exit Sub

LoadResourceInterface_Error:

690 Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure LoadResourceInterface of Módulo modRecursosBender line " & Erl())

End Sub

Public Function NameLineGraphic(ByRef i As Long) As String
    NameLineGraphic = i & IIf(GrhData(i).NumFrames > 1, " (ANIMACION)", "") & IIf(GrhData(i).NumFrames = 0, " (NULO)", "")
End Function

Private Sub changeValue(ByRef data As Variant, ByVal newValue As Single)
    If newValue <> -1 Then
        data = newValue
    End If
End Sub

Public Sub ProcessGraphicLineToBin(ByRef sValue As String)

10  On Error GoTo ProcessGraphicLineToBin_Error

    Dim TempValue               As String
    Dim TempValueB              As String
    Dim GrhIndex                As Integer
    Dim i                       As Long

20  If StrComp(UCase$(Left$(sValue, 3)), "GRH") = 0 Then

30      TempValue = ReadField(1, sValue, Asc("="))
40      TempValue = Right$(TempValue, Len(TempValue) - 3)

50      If Not IsNumeric(TempValue) Then
60          MsgBox "Error, el valor no es numérico: " & TempValue
70          Exit Sub
80      End If

90      GrhIndex = Val(TempValue)

100     TempValue = ReadField(2, sValue, Asc("="))

110     With GrhData(GrhIndex)
120         Call changeValue(.NumFrames, GetValueExpo(TempValue, 1))    'IIf(GetValueExpo(TempValue, 1) = -1, .NumFrames, GetValueExpo(TempValue, 1))
130         If .NumFrames > 1 Then
                'Animacion
140             If .NumFrames > 100 Then .NumFrames = 100
150             ReDim .Frames(1 To .NumFrames)
160             For i = 1 To .NumFrames
170                 Call changeValue(.Frames(i), GetValueExpo(TempValue, i + 1))
180             Next i
190             Call changeValue(.speed, GetValueExpo(TempValue, .NumFrames + 2))
200             If .Frames(1) Then
210                 .pixelWidth = GrhData(.Frames(1)).pixelWidth
220                 .pixelHeight = GrhData(.Frames(1)).pixelHeight

230                 .TileWidth = GrhData(.Frames(1)).TileWidth
240                 .TileHeight = GrhData(.Frames(1)).TileHeight
250             End If
260             .FileNum = 0
270             .sX = 0
280             .sY = 0
290         ElseIf .NumFrames = 1 Then
300             ReDim .Frames(0)
                '1 solo grafico
310             Call changeValue(.FileNum, GetValueExpo(TempValue, 2))
320             Call changeValue(.sX, GetValueExpo(TempValue, 3))
330             Call changeValue(.sY, GetValueExpo(TempValue, 4))
340             Call changeValue(.pixelWidth, GetValueExpo(TempValue, 5))
350             Call changeValue(.pixelHeight, GetValueExpo(TempValue, 6))

360             .TileWidth = .pixelWidth / 32
370             .TileHeight = .pixelHeight / 32
380         End If
390     End With
400 End If

410 On Error GoTo 0
420 Exit Sub

ProcessGraphicLineToBin_Error:

430 Call LogError("Error " & err.Number & " (" & err.Description & ") procedimiento ProcessGraphicLineToBin Módulo modRecursosBender línea: " & Erl())

End Sub

Public Function ProcessGraphicBinToLine(ByVal i As Integer) As String

Dim J                           As Long
Dim Line                        As String

    On Error GoTo ProcessGraphicBinToLine_Error

10  With GrhData(i)
20      If .NumFrames > 0 Then
30          Line = "Grh" & i & "=" & .NumFrames
40          If .NumFrames > 1 Then

50              If .NumFrames > 100 Then .NumFrames = 100

60              For J = 1 To .NumFrames
70                  Line = Line & Separator & .Frames(J)
80              Next J
90              Line = Line & Separator & .speed

100             frmMain.txtNumFrames.Text = .NumFrames
                'frmMain.lblNumPNG.Caption = "Num Grh's"
110             frmMain.txtNumPNG.Enabled = False
120             frmMain.txtXFrom.Text = .sX
130             frmMain.txtYFrom.Text = .sY

140             frmMain.txtXTo.Text = 0    '.pixelWidth
150             frmMain.txtYTo.Text = 0    '.pixelHeight

160             frmMain.txtXTo.Enabled = False
170             frmMain.txtYTo.Enabled = False

180             frmMain.txtXFrom.Enabled = False
190             frmMain.txtYFrom.Enabled = False

200             frmMain.txtVelocity.Text = .speed

210         Else
220             Line = Line & Separator & .FileNum & Separator & .sX & Separator & .sY & Separator & .pixelWidth & Separator & .pixelHeight

230             If frmMain.Visible Then
240                 frmMain.txtNumFrames.Text = .NumFrames
250                 frmMain.txtNumPNG.Enabled = True
260                 frmMain.txtNumPNG.Text = .FileNum
                    'frmMain.lblNumPNG.Caption = "Num PNG"
270                 frmMain.txtXFrom.Text = .sX
280                 frmMain.txtYFrom.Text = .sY
290                 frmMain.txtXTo.Text = .pixelWidth
300                 frmMain.txtYTo.Text = .pixelHeight
310                 frmMain.txtVelocity.Text = 0

320                 frmMain.txtXTo.Enabled = True
330                 frmMain.txtYTo.Enabled = True

340                 frmMain.txtXFrom.Enabled = True
350                 frmMain.txtYFrom.Enabled = True
360             End If
370         End If
380     End If
390 End With

400 ProcessGraphicBinToLine = Line

    On Error GoTo 0
    Exit Function

ProcessGraphicBinToLine_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure ProcessGraphicBinToLine of Módulo modRecursosBender Linea: " & Erl())

End Function

Private Function GetValueExpo(sValue As String, Pos As Integer) As Single

    On Error GoTo GetValueExpo_Error

10  On Error Resume Next

    Dim TempS                   As String

20  TempS = ReadField(Pos, sValue, Asc(Separator))

30  If IsNumeric(TempS) Then
40      GetValueExpo = CSng(TempS)
50  ElseIf TempS = "*" Then
60      GetValueExpo = -1
70  Else
80      err.Number = 1
90  End If

    On Error GoTo 0
    Exit Function

GetValueExpo_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure GetValueExpo of Módulo modRecursosBender Linea: " & Erl())

End Function
