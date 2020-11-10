Attribute VB_Name = "modRecursosBender"
Option Explicit
Private Const Separator As String = "."

Public Enum E_Heading
    NORTH = 1
    EAST = 2
    SOUTH = 3
    WEST = 4
End Enum

Public Type Position
    X As Long
    Y As Long
End Type

Public Type GrhData
    sX As Integer '2
    sY As Integer '4
    
    FileNum As Long '8
    
    pixelWidth As Integer '10
    pixelHeight As Integer '12
    
    TileWidth As Single '16
    TileHeight As Single '20
    
    NumFrames As Integer '22
    Frames() As Long '26
    
    speed As Single '30
End Type

Public Type Grh
    GrhIndex As Integer
    FrameCounter As Single
    speed As Single
    Started As Byte
    Loops As Integer
End Type

'Lista de cuerpos
Public Type BodyData
    Walk(E_Heading.NORTH To E_Heading.WEST) As Grh
    HeadOffset As Position
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
    Head(1 To 4) As Integer
End Type

Public Type tIndiceCuerpo
    Body(1 To 4) As Integer
    HeadOffsetX As Integer
    HeadOffsetY As Integer
End Type

Public Type tIndiceFx
    Animacion As Integer
    OffsetX As Integer
    OffsetY As Integer
End Type

Public grhCount As Long
Public NumCascos As Integer
Public NumBodies As Integer
Public Numheads As Integer
Public NumFxs As Integer
Public NumWeaponAnims As Integer
Public NumEscudosAnims As Integer

Public GrhData() As GrhData 'Guarda todos los grh
Public BodyData() As BodyData
Public HeadData() As HeadData
Public FxData() As tIndiceFx
Public WeaponAnimData() As WeaponAnimData
Public ShieldAnimData() As ShieldAnimData
Public CascoAnimData() As HeadData

Public MiCabecera As tCabecera

Public Const INFINITE_LOOPS As Integer = -1

Public Type tCabecera 'Cabecera de los con
    desc As String * 255
    CRC As Long
    MagicWord As Long
End Type
Public Sub LoadResourceInterface()

    Dim i As Long
    Dim IsEnabled As Boolean
    Dim IsVisible As Boolean
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
    For i = 1 To NumWeaponAnims
        frmMain.cmbArmas.AddItem i & IIf(i = 2, " (No-Anim)", "")
    Next i
    
    frmMain.cmbArmas.ListIndex = NumAnim_Armas
    
    'Cabezas
    frmMain.cmbCabezas.Clear
    For i = 1 To Numheads
        frmMain.cmbCabezas.AddItem i & IIf(HeadData(i).Head(1).GrhIndex = 0, " (Libre)", "")
    Next i
    frmMain.cmbCabezas.ListIndex = NumAnim_Cabezas
    
    'Cascos
    frmMain.cmbCascos.Clear
    For i = 1 To NumCascos
        frmMain.cmbCascos.AddItem i & IIf(i = 2, " (No-Anim)", "")
    Next i
    frmMain.cmbCascos.ListIndex = NumAnim_Cascos
    
    'Cuerpos
    frmMain.cmbCuerpos.Clear
    For i = 1 To NumBodies
        frmMain.cmbCuerpos.AddItem i
    Next i
    
    frmMain.cmbCuerpos.ListIndex = NumAnim_Cuerpos
    
    'Escudos
    frmMain.cmbEscudos.Clear
    For i = 1 To NumEscudosAnims
        frmMain.cmbEscudos.AddItem i & IIf(i = 2, " (No-Anim)", "")
    Next i
    
    frmMain.cmbEscudos.ListIndex = NumAnim_Escudos
    
    'Efectos
    frmMain.cmbEfectos.Clear
    For i = 1 To NumFxs
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

On Error GoTo err:

          Dim TempValue As String
          Dim TempValueB As String
          Dim GrhIndex As Integer
          Dim i As Long

10        If StrComp(UCase$(Left$(sValue, 3)), "GRH") = 0 Then

20            TempValue = ReadField(1, sValue, Asc("="))
30            TempValue = Right$(TempValue, Len(TempValue) - 3)

40            If Not IsNumeric(TempValue) Then GoTo err

50            GrhIndex = Val(TempValue)
              
60            TempValue = ReadField(2, sValue, Asc("="))
              
70            With GrhData(GrhIndex)
80                Call changeValue(.NumFrames, GetValueExpo(TempValue, 1)) 'IIf(GetValueExpo(TempValue, 1) = -1, .NumFrames, GetValueExpo(TempValue, 1))
90                If .NumFrames > 1 Then
                      'Animacion
100                   If .NumFrames > 100 Then .NumFrames = 100
110                   ReDim .Frames(1 To .NumFrames)
120                   For i = 1 To .NumFrames
130                       Call changeValue(.Frames(i), GetValueExpo(TempValue, i + 1))
140                   Next i
150                   Call changeValue(.speed, GetValueExpo(TempValue, .NumFrames + 2))
160                   If .Frames(1) Then
170                       .pixelWidth = GrhData(.Frames(1)).pixelWidth
180                       .pixelHeight = GrhData(.Frames(1)).pixelHeight
                      
190                       .TileWidth = GrhData(.Frames(1)).TileWidth
200                       .TileHeight = GrhData(.Frames(1)).TileHeight
210                   End If
220                   .FileNum = 0
230                   .sX = 0
240                   .sY = 0
250               ElseIf .NumFrames = 1 Then
260                   ReDim .Frames(0)
                      '1 solo grafico
270                   Call changeValue(.FileNum, GetValueExpo(TempValue, 2))
280                   Call changeValue(.sX, GetValueExpo(TempValue, 3))
290                   Call changeValue(.sY, GetValueExpo(TempValue, 4))
300                   Call changeValue(.pixelWidth, GetValueExpo(TempValue, 5))
310                   Call changeValue(.pixelHeight, GetValueExpo(TempValue, 6))
                      
320                   .TileWidth = .pixelWidth / 32
330                   .TileHeight = .pixelHeight / 32
340               Else
                      'Error
          GoTo err:
350               End If
360           End With
370       End If
380   Exit Sub
err:
390   Debug.Print "Error! " & err.Description & " - " & Erl() & " - " & GrhIndex
End Sub

Public Function ProcessGraphicBinToLine(ByVal i As Integer) As String
    Dim J As Long
    Dim Line As String
    With GrhData(i)
        If .NumFrames > 0 Then
            Line = "Grh" & i & "=" & .NumFrames
            If .NumFrames > 1 Then
            
                If .NumFrames > 100 Then .NumFrames = 100
                
                For J = 1 To .NumFrames
                    Line = Line & Separator & .Frames(J)
                Next J
                Line = Line & Separator & .speed
            Else
                Line = Line & Separator & .FileNum & Separator & .sX & Separator & .sY & Separator & .pixelWidth & Separator & .pixelHeight
            End If
        End If
    End With
    ProcessGraphicBinToLine = Line
End Function

Private Function GetValueExpo(sValue As String, Pos As Integer) As Single

On Error Resume Next

    Dim TempS As String
    
    TempS = ReadField(Pos, sValue, Asc(Separator))
    
    If IsNumeric(TempS) Then
        GetValueExpo = CSng(TempS)
    ElseIf TempS = "*" Then
        GetValueExpo = -1
    Else
        err.Number = 1
    End If
    
End Function
