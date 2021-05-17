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

    IsEnabled = frmMain.Enabled
    frmMain.Enabled = False
    IsVisible = frmMain.Visible
    If IsVisible Then
        frmMain.Visible = False
        frmCargando.Show
    End If

    frmCargando.lblLoading.Caption = "Cargando interfaz de usuario..."
    frmMain.lstGraphics.Clear
    frmMain.cmbFondo.Clear
    DoEvents
    frmMain.cmbFondo.AddItem "0"

    frmMain.lstGraphics.Visible = False
    frmMain.cmbFondo.Visible = False

    For i = 1 To grhCount
        frmMain.lstGraphics.AddItem NameLineGraphic(i)
        'frmMain.cmbFondo.AddItem NameLineGraphic(i)
        'frmMain.cmbAnim.AddItem NameLineGraphic(i)
    Next i

    frmMain.lstGraphics.AddItem "Resize"

    '    frmMain.cmbArmas.AddItem "0"
    '    frmMain.cmbCabezas.AddItem "0"
    '    frmMain.cmbCascos.AddItem "0"
    '    frmMain.cmbCuerpos.AddItem "0"
    '    frmMain.cmbEscudos.AddItem "0"
    '    frmMain.cmbEfectos.AddItem "0"

    'Armas
    frmMain.cmbArmas.Clear
    For i = 0 To NumWeaponAnims
        frmMain.cmbArmas.AddItem i & IIf(i = 2, " (No-Anim)", "")
    Next i

    frmMain.cmbArmas.ListIndex = NumAnim_Armas

    'Cabezas
    frmMain.cmbCabezas.Clear
    For i = 0 To Numheads
        frmMain.cmbCabezas.AddItem i & IIf(HeadData(i).Head(1).GrhIndex = 0, " (Libre)", "")
    Next i
    frmMain.cmbCabezas.ListIndex = NumAnim_Cabezas

    'Cascos
    frmMain.cmbCascos.Clear
    For i = 0 To NumCascos
        frmMain.cmbCascos.AddItem i & IIf(i = 2, " (No-Anim)", "")
    Next i
    frmMain.cmbCascos.ListIndex = NumAnim_Cascos

    'Cuerpos
    frmMain.cmbCuerpos.Clear
    For i = 0 To NumBodies
        frmMain.cmbCuerpos.AddItem i
    Next i

    frmMain.cmbCuerpos.ListIndex = NumAnim_Cuerpos

    'Escudos
    frmMain.cmbEscudos.Clear
    For i = 0 To NumEscudosAnims
        frmMain.cmbEscudos.AddItem i & IIf(i = 2, " (No-Anim)", "")
    Next i

    frmMain.cmbEscudos.ListIndex = NumAnim_Escudos

    'Efectos
    frmMain.cmbEfectos.Clear
    For i = 0 To NumFxs
        frmMain.cmbEfectos.AddItem i
    Next i

    frmMain.cmbEfectos.ListIndex = NumAnim_Efectos

    frmMain.cmbArmas.AddItem "Resize"
    frmMain.cmbCabezas.AddItem "Resize"
    frmMain.cmbCascos.AddItem "Resize"
    frmMain.cmbCuerpos.AddItem "Resize"
    frmMain.cmbEscudos.AddItem "Resize"
    frmMain.cmbEfectos.AddItem "Resize"

    frmMain.lstGraphics.Visible = True
    frmMain.cmbFondo.Visible = True

    frmMain.cmbTipo.ListIndex = 0
    frmMain.lstGraphics.ListIndex = 0
    frmMain.cmbFondo.ListIndex = 0

    Sleep 100: DoEvents
    frmMain.Enabled = IsEnabled
    If IsVisible Then
        frmMain.Visible = True
        Unload frmCargando
    End If

    On Error GoTo 0
    Exit Sub

LoadResourceInterface_Error:

    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure LoadResourceInterface of Módulo modRecursosBender line " & Erl()
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
    With GrhData(i)
        If .NumFrames > 0 Then
            Line = "Grh" & i & "=" & .NumFrames
            If .NumFrames > 1 Then

                If .NumFrames > 100 Then .NumFrames = 100

                For J = 1 To .NumFrames
                    Line = Line & Separator & .Frames(J)
                Next J
                Line = Line & Separator & .speed
                
                frmMain.txtNumFrames.Text = .NumFrames
                'frmMain.lblNumPNG.Caption = "Num Grh's"
                frmMain.txtNumPNG.Enabled = False
                frmMain.txtXFrom.Text = .sX
                frmMain.txtYFrom.Text = .sY
                
                frmMain.txtXTo.Text = 0 '.pixelWidth
                frmMain.txtYTo.Text = 0 '.pixelHeight
                
                frmMain.txtXTo.Enabled = False
                frmMain.txtYTo.Enabled = False
                
                frmMain.txtXFrom.Enabled = False
                frmMain.txtYFrom.Enabled = False
                
                frmMain.txtVelocity.Text = .speed
                
            Else
                Line = Line & Separator & .FileNum & Separator & .sX & Separator & .sY & Separator & .pixelWidth & Separator & .pixelHeight
                
                If frmMain.Visible Then
                    frmMain.txtNumFrames.Text = .NumFrames
                    frmMain.txtNumPNG.Enabled = True
                    frmMain.txtNumPNG.Text = .FileNum
                    'frmMain.lblNumPNG.Caption = "Num PNG"
                    frmMain.txtXFrom.Text = .sX
                    frmMain.txtYFrom.Text = .sY
                    frmMain.txtXTo.Text = .pixelWidth
                    frmMain.txtYTo.Text = .pixelHeight
                    frmMain.txtVelocity.Text = 0
                    
                    frmMain.txtXTo.Enabled = True
                    frmMain.txtYTo.Enabled = True
                    
                    frmMain.txtXFrom.Enabled = True
                    frmMain.txtYFrom.Enabled = True
                End If
            End If
        End If
    End With
    ProcessGraphicBinToLine = Line
End Function

Private Function GetValueExpo(sValue As String, Pos As Integer) As Single

    On Error Resume Next

    Dim TempS                   As String

    TempS = ReadField(Pos, sValue, Asc(Separator))

    If IsNumeric(TempS) Then
        GetValueExpo = CSng(TempS)
    ElseIf TempS = "*" Then
        GetValueExpo = -1
    Else
        err.Number = 1
    End If

End Function
