VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsRecursosBender"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit

Public Sub Initialize()

    On Error GoTo Initialize_Error

    Dim Paths(6)                As String

10  Paths(0) = "Graficos.ind"
20  Paths(1) = "Cabezas.ind"
30  Paths(2) = "Personajes.ind"
40  Paths(3) = "Cascos.ind"
50  Paths(4) = "Escudos.dat"
60  Paths(5) = "Armas.dat"
70  Paths(6) = "Fxs.ind"
80  DoEvents
90  frmCargando.lblLoading.Caption = "Cargando LoadGrhData..."

100 Call LoadGrhData(AppInit & "\" & Paths(0))
    'Sleep 100: DoEvents

110 frmCargando.lblLoading.Caption = "Cargando Cabezas..."
120 Call CargarCabezas(AppInit & "\" & Paths(1))
    'Sleep 100: DoEvents

130 frmCargando.lblLoading.Caption = "Cargando Cuerpos..."
140 Call CargarCuerpos(AppInit & "\" & Paths(2))
    'Sleep 100: DoEvents

150 frmCargando.lblLoading.Caption = "Cargando Cascos..."
160 Call CargarCascos(AppInit & "\" & Paths(3))
    'Sleep 100: DoEvents

170 frmCargando.lblLoading.Caption = "Cargando Escudos..."
180 Call CargarAnimEscudos(AppInit & "\" & Paths(4))
    'Sleep 100: DoEvents

190 frmCargando.lblLoading.Caption = "Cargando Armas..."
200 Call CargarAnimArmas(AppInit & "\" & Paths(5))
    'Sleep 100: DoEvents

210 frmCargando.lblLoading.Caption = "Cargando FXs..."
220 Call CargarFxs(AppInit & "\" & Paths(6))
    'Sleep 100: DoEvents

230 Call LoadResourceInterface

240 frmCargando.lblLoading.Caption = "Listo!"
    'Sleep 500: DoEvents
250 frmMain.Caption = FrmMainCaption
    On Error GoTo 0
    Exit Sub

Initialize_Error:
    Dim Index                   As Integer
270 Index = Erl() - 1
    Call LogError("No se ha podido cargar correctamente el archivo " & Paths(Index) & " Error " & err.Number & " (" & err.Description & ") in procedure Initialize of Módulo de clase clsRecursosBender Linea: " & Erl())

End Sub

Public Sub Index_To_Expo()

Dim i                           As Long
Dim J                           As Long
Dim nfile                       As Integer
Dim Line                        As String

    On Error GoTo Index_To_Expo_Error

10  nfile = FreeFile

20  frmMain.Caption = FrmMainCaption & " - Exportando..."

30  If FileExist(AppExpo & "\Graficos.ini", vbArchive) Then Kill AppExpo & "\Graficos.ini"

40  Open AppExpo & "\Graficos.ini" For Output As #nfile
50  Print #nfile, "'ADVERTENCIA: No tener este archivo abierto cuando se vaya a trabajar con el INDEXADOR."
60  Print #nfile, "[INIT]"
70  Print #nfile, "CountGrh=" & grhCount
80  Print #nfile, ""

90  Print #nfile, "[GRAFICOS]"

100 For i = 1 To grhCount
110     Print #nfile, ProcessGraphicBinToLine(i)
120 Next i

130 Close #nfile

140 Open AppExpo & "\GraficosParsed.ini" For Output As #nfile
150 Print #nfile, "[GRAFICOS]"

160 For i = 1 To grhCount
170     Print #nfile, i & "=" & ReadField(2, ProcessGraphicBinToLine(i), Asc("."))
180 Next i

190 Close #nfile

200 frmMain.Caption = FrmMainCaption & " - Listo!"
    'Sleep 500
210 frmMain.Caption = FrmMainCaption

    On Error GoTo 0
    Exit Sub

Index_To_Expo_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure Index_To_Expo of Módulo de clase clsRecursosBender Linea: " & Erl())

End Sub

Public Sub Save_Indexs()
    On Error GoTo Save_Indexs_Error

10  frmCargando.lblLoading.Caption = "Guardando GrhData..."
20  Call SaveGrhData(AppInit & "\Graficos.ind")
30  frmCargando.lblLoading.Caption = "Listo!"
    'Call LoadResourceInterface

    On Error GoTo 0
    Exit Sub

Save_Indexs_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure Save_Indexs of Módulo de clase clsRecursosBender Linea: " & Erl())

End Sub

Public Sub Expo_To_Index()

10  On Error GoTo Expo_To_Index_Error

    Dim nfile                   As Integer
    Dim sValue                  As String

    Dim i                       As Long
20  frmMain.Caption = FrmMainCaption & " - Indexando..."
30  DoEvents
40  grhCount = Val(GetVar(AppExpo & "\Graficos.ini", "INIT", "CountGrh"))

50  If grhCount = 0 Then
60      MsgBox "Graficos.ini invalidos. Verifiquelos ya que no se encuentra el ""CountGrh""."
70      Exit Sub
80  End If

90  ReDim GrhData(1 To grhCount) As GrhData

100 nfile = FreeFile           ' obtenemos un canal
110 Open AppExpo & "\Graficos.ini" For Input As #nfile
120 While Not EOF(nfile)
130     Line Input #nfile, sValue
140     If Len(sValue) Then Call ProcessGraphicLineToBin(sValue)
150 Wend
160 Close

    'CopyMemory GrhData(1), GrhTemp(1), NumberBytes
170 frmCargando.lblLoading.Caption = "Guardando GrhData..."
180 Call SaveGrhData(AppInit & "\Graficos.ind")

190 If FileExist(App.Path & "\..\BAO_WorldEditor\INIT\Graficos.ind", vbArchive) And FileExist(AppInit & "\Graficos.ind", vbArchive) Then
200     FileCopy AppInit & "\Graficos.ind", App.Path & "\..\BAO_WorldEditor\INIT\Graficos.ind"
210 End If

220 frmCargando.lblLoading.Caption = "Listo!"
230 Call LoadResourceInterface
240 frmCargando.lblLoading.Caption = "Listo!"
250 Sleep 50
260 frmMain.Caption = FrmMainCaption

270 On Error GoTo 0
280 Exit Sub

Expo_To_Index_Error:
290 frmCargando.lblLoading.Caption = "Recuperandose del error..."
300 Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure Expo_To_Index of Módulo de clase clsRecursosBender Linea: " & Erl() & " AppInit: " & AppInit & " Path: " & App.Path & "\..\BAO_WorldEditor\INIT\Graficos.ind")

310 ReDim GrhData(0)
320 Call LoadGrhData(AppInit & "\Graficos.ind")
330 frmCargando.lblLoading.Caption = "Listo!"
340 Sleep 50
350 frmMain.Caption = FrmMainCaption

End Sub

Private Function AddText(ByRef Message As String, ByRef Text As String)
    On Error GoTo AddText_Error

10  If Len(Message) = 0 Then
20      Message = Message & Text
30  Else
40      Message = Message & ", " & Text
50  End If

    On Error GoTo 0
    Exit Function

AddText_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure AddText of Módulo de clase clsRecursosBender Linea: " & Erl())

End Function

Private Function LoadGrhData(Path As String) As Boolean
    'On Error GoTo ErrorHandler
Dim Errors                      As String
Dim TempError                   As String
Dim isError                     As Boolean

Dim Grh                         As Long
Dim Frame                       As Long
Dim handle                      As Integer
Dim fileVersion                 As Long

Dim lastNum                     As Integer

    'Open files
    On Error GoTo LoadGrhData_Error

10  handle = FreeFile()
20  Open Path For Binary Access Read As handle
30  Seek #1, 1

    'Get file version
40  Get handle, , fileVersion

    'Get number of grhs
50  Get handle, , grhCount

    'Resize arrays
60  ReDim GrhData(1 To grhCount) As GrhData

70  While Not EOF(handle)
80      Get handle, , Grh
90      TempError = ""
100     If Grh <> 0 Then
110         With GrhData(Grh)
                'Get number of frames
120             Get handle, , .NumFrames
130             If .NumFrames <= 0 Then
140                 .NumFrames = 1    'GoTo ErrorHandler
150                 isError = True
160                 Call AddText(TempError, "NumFrames")
170             End If

180             ReDim .Frames(1 To GrhData(Grh).NumFrames)

190             If .NumFrames > 1 Then
                    'Read a animation GRH set
200                 For Frame = 1 To .NumFrames
210                     Get handle, , .Frames(Frame)
220                     If .Frames(Frame) <= 0 Or .Frames(Frame) > grhCount Then
230                         .Frames(Frame) = 1
240                         isError = True
250                         Call AddText(TempError, "Frame" & Frame)
260                     End If
270                 Next Frame

280                 Get handle, , .speed

290                 If .speed <= 0 Then
300                     .speed = 1
310                     isError = True
320                     Call AddText(TempError, "Speed")
330                 End If

                    'Compute width and height
340                 .pixelHeight = GrhData(.Frames(1)).pixelHeight
350                 If .pixelHeight <= 0 Then
360                     .pixelHeight = 1
370                     isError = True
380                     Call AddText(TempError, "pixelHeight")
390                 End If

400                 .pixelWidth = GrhData(.Frames(1)).pixelWidth
410                 If .pixelWidth <= 0 Then
420                     .pixelWidth = 1
430                     isError = True
440                     Call AddText(TempError, "pixelWidth")
450                 End If

460                 .TileWidth = GrhData(.Frames(1)).TileWidth
470                 If .TileWidth <= 0 Then
480                     .TileWidth = 1
490                     isError = True
500                     Call AddText(TempError, "TileWidth")
510                 End If

520                 .TileHeight = GrhData(.Frames(1)).TileHeight
530                 If .TileHeight <= 0 Then
540                     .TileHeight = 1
550                     isError = True
560                     Call AddText(TempError, "TileHeight")
570                 End If

                    '                    If lastNum <> .FileNum Then
                    '                        If FileExist(UCase$(AppGraficos & "\" & .FileNum & ".PNG"), vbArchive) Then
                    '                            FileCopy AppGraficos & "\" & CStr(.FileNum) & ".png", AppGraficos & "\VERDADEROS\" & .FileNum & ".png"
                    '                            lastNum = .FileNum
                    '                        End If
                    '                    End If

580             Else

                    'Read in normal GRH data
590                 Get handle, , .FileNum

                    'ESTO SIRVE PARA REVISAR GRAFICOS EN DESUSO!

                    '                    If Not FileExist(AppGraficos & "\VERDADEROS", vbDirectory) Then
                    '                        MkDir AppGraficos & "\VERDADEROS"
                    '                    End If

                    '                    If lastNum <> .FileNum Then
                    '                        If FileExist(UCase$(AppGraficos & "\" & .FileNum & ".PNG"), vbArchive) Then
                    '                            FileCopy AppGraficos & "\" & CStr(.FileNum) & ".png", AppGraficos & "\VERDADEROS\" & .FileNum & ".png"
                    '                            lastNum = .FileNum
                    '                        End If
                    '                    End If

600                 If .FileNum <= 0 Then
610                     .FileNum = 1
620                     isError = True
630                     Call AddText(TempError, "FileNum")
640                 End If

650                 Get handle, , GrhData(Grh).sX
660                 If .sX < 0 Then
670                     .sX = 1
680                     isError = True
690                     Call AddText(TempError, "sX")
700                 End If

710                 Get handle, , .sY
720                 If .sY < 0 Then
730                     .sY = 1
740                     isError = True
750                     Call AddText(TempError, "sY")
760                 End If

770                 Get handle, , .pixelWidth
780                 If .pixelWidth <= 0 Then
790                     .pixelWidth = 1
800                     isError = True
810                     Call AddText(TempError, "pixelWidth")
820                 End If

830                 Get handle, , .pixelHeight
840                 If .pixelHeight <= 0 Then
850                     .pixelHeight = 1
860                     isError = True
870                     Call AddText(TempError, "pixelHeight")
880                 End If

                    'Compute width and height
890                 .TileWidth = .pixelWidth / 32
900                 .TileHeight = .pixelHeight / 32

910                 .Frames(1) = Grh
920             End If
930         End With
940     End If

950     If isError Then
960         Errors = Errors & "Grh " & Grh & ": " & TempError & vbCrLf
970         isError = False
980     End If

990 Wend

1000 Close handle

1010 LoadGrhData = True
1020 If Len(Errors) > 0 Then
1030    MsgBox "Errores detectados: " & Errors & " " & Grh
1040 End If

    On Error GoTo 0
    Exit Function

LoadGrhData_Error:
    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure LoadGrhData of Módulo de clase clsRecursosBender Linea: " & Erl() & " Grh: " & Grh & " Errors: " & Errors)
1060 Debug.Print Grh
1070 LoadGrhData = False
1080 Close handle

End Function

Private Function SaveGrhData(Path As String) As Boolean

    On Error GoTo SaveGrhData_Error

    Dim Grh                     As Long
    Dim Frame                   As Long
    Dim handle                  As Integer
    Dim fileVersion             As Long

20  If FileExist(Path, vbNormal) Then Kill Path
    'Open files
30  handle = FreeFile()
40  Open Path For Binary Access Write As handle
50  Seek #1, 1

    'Get file version
60  Put handle, , fileVersion

    'Get number of grhs
70  Put handle, , grhCount

80  For Grh = 1 To grhCount
90      With GrhData(Grh)
100         If .NumFrames > 0 Then
110             Put handle, , Grh

                'Get number of frames
120             Put handle, , .NumFrames

130             If .NumFrames > 1 Then
                    'Read a animation GRH set
140                 For Frame = 1 To .NumFrames
150                     Put handle, , .Frames(Frame)
160                 Next Frame

170                 Put handle, , .speed
180             Else
                    'Read in normal GRH data
190                 Put handle, , .FileNum

200                 Put handle, , GrhData(Grh).sX

210                 Put handle, , .sY

220                 Put handle, , .pixelWidth

230                 Put handle, , .pixelHeight
240             End If
250         End If
260     End With
270 Next Grh
280 Close handle

290 SaveGrhData = True
    On Error GoTo 0
    Exit Function

SaveGrhData_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure SaveGrhData of Módulo de clase clsRecursosBender Linea: " & Erl())
310 SaveGrhData = False


End Function

Private Sub CargarCabezas(Path As String)
Dim n                           As Integer
Dim i                           As Long
Dim Miscabezas()                As tIndiceCabeza

    On Error GoTo CargarCabezas_Error

10  n = FreeFile()
20  Open Path For Binary Access Read As #n

    'cabecera
30  Get #n, , MiCabecera

    'num de cabezas
40  Get #n, , Numheads

    'Resize array
50  ReDim HeadData(0 To Numheads) As HeadData
60  ReDim Miscabezas(0 To Numheads) As tIndiceCabeza

70  For i = 1 To Numheads
80      Get #n, , Miscabezas(i)

90      If Miscabezas(i).Head(1) Then
100         Call InitGrh(HeadData(i).Head(1), Miscabezas(i).Head(1), 0)
110         Call InitGrh(HeadData(i).Head(2), Miscabezas(i).Head(2), 0)
120         Call InitGrh(HeadData(i).Head(3), Miscabezas(i).Head(3), 0)
130         Call InitGrh(HeadData(i).Head(4), Miscabezas(i).Head(4), 0)
140     End If
150 Next i

160 Close #n

    On Error GoTo 0
    Exit Sub

CargarCabezas_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure CargarCabezas of Módulo de clase clsRecursosBender Linea: " & Erl())
End Sub

Private Sub CargarCascos(Path As String)
Dim n                           As Integer
Dim i                           As Long

Dim Miscabezas()                As tIndiceCabeza

    On Error GoTo CargarCascos_Error

10  n = FreeFile()
20  Open Path For Binary Access Read As #n

    'cabecera
30  Get #n, , MiCabecera

    'num de cabezas
40  Get #n, , NumCascos

    'Resize array
50  ReDim CascoAnimData(0 To NumCascos) As HeadData
60  ReDim Miscabezas(0 To NumCascos) As tIndiceCabeza

70  For i = 1 To NumCascos
80      Get #n, , Miscabezas(i)

90      If Miscabezas(i).Head(1) Then
100         Call InitGrh(CascoAnimData(i).Head(1), Miscabezas(i).Head(1), 0)
110         Call InitGrh(CascoAnimData(i).Head(2), Miscabezas(i).Head(2), 0)
120         Call InitGrh(CascoAnimData(i).Head(3), Miscabezas(i).Head(3), 0)
130         Call InitGrh(CascoAnimData(i).Head(4), Miscabezas(i).Head(4), 0)
140     End If
150 Next i

160 Close #n

    On Error GoTo 0
    Exit Sub

CargarCascos_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure CargarCascos of Módulo de clase clsRecursosBender Linea: " & Erl())
End Sub

Private Sub CargarCuerpos(Path As String)

Dim n                           As Integer
Dim i                           As Long
Dim MisCuerpos()                As tIndiceCuerpo

    On Error GoTo CargarCuerpos_Error

10  On Error GoTo CargarCuerpos_Error

20  n = FreeFile()
30  Open Path For Binary Access Read As #n

    'cabecera
40  Get #n, , MiCabecera

    'num de cabezas
50  Get #n, , NumBodies

    'Resize array
60  ReDim BodyData(0 To NumBodies) As BodyData
70  ReDim MisCuerpos(0 To NumBodies) As tIndiceCuerpo

80  For i = 1 To NumBodies
90      Get #n, , MisCuerpos(i)

100     If MisCuerpos(i).Body(1) Then
110         InitGrh BodyData(i).Walk(1), MisCuerpos(i).Body(1), 0
120         InitGrh BodyData(i).Walk(2), MisCuerpos(i).Body(2), 0
130         InitGrh BodyData(i).Walk(3), MisCuerpos(i).Body(3), 0
140         InitGrh BodyData(i).Walk(4), MisCuerpos(i).Body(4), 0

150         BodyData(i).HeadOffset.X = MisCuerpos(i).HeadOffsetX
160         BodyData(i).HeadOffset.Y = MisCuerpos(i).HeadOffsetY
170     End If
180 Next i

190 Close #n

200 On Error GoTo 0
210 Exit Sub

CargarCuerpos_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure CargarCuerpos of Módulo de clase clsRecursosBender Linea: " & Erl() & " - " & i)

End Sub


Sub CargarAnimEscudos(ByRef arch As String)
Dim loopc                       As Long

    On Error GoTo CargarAnimEscudos_Error

10  NumEscudosAnims = Val(GetVar(arch, "INIT", "NumEscudos"))

20  ReDim ShieldAnimData(1 To NumEscudosAnims) As ShieldAnimData

    Dim DirNum                  As Integer
    Dim i                       As Long

30  For loopc = 1 To NumEscudosAnims
40      For i = 1 To 4
50          DirNum = Val(GetVar(arch, "ESC" & loopc, "Dir" & i))
60          If DirNum > 0 Then InitGrh ShieldAnimData(loopc).ShieldWalk(i), DirNum, 0
70      Next i
80  Next loopc

    On Error GoTo 0
    Exit Sub

CargarAnimEscudos_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure CargarAnimEscudos of Módulo de clase clsRecursosBender Linea: " & Erl())
End Sub

Sub CargarAnimArmas(ByRef arch As String)
Dim loopc                       As Long

    On Error GoTo CargarAnimArmas_Error

10  NumWeaponAnims = Val(GetVar(arch, "INIT", "NumArmas"))

20  ReDim WeaponAnimData(1 To NumWeaponAnims) As WeaponAnimData

    Dim i                       As Long
    Dim DirNum                  As Integer

30  For loopc = 1 To NumWeaponAnims
40      For i = 1 To 4
50          DirNum = Val(GetVar(arch, "ARMA" & loopc, "Dir" & i))
60          If DirNum > 0 Then InitGrh WeaponAnimData(loopc).WeaponWalk(i), DirNum, 0
70      Next i
80  Next loopc

    On Error GoTo 0
    Exit Sub

CargarAnimArmas_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure CargarAnimArmas of Módulo de clase clsRecursosBender Linea: " & Erl())
End Sub

Sub CargarFxs(ByRef arch As String)
Dim n                           As Integer
Dim i                           As Long

    On Error GoTo CargarFxs_Error

10  n = FreeFile()
20  Open arch For Binary Access Read As #n

    'cabecera
30  Get #n, , MiCabecera

    'num de cabezas
40  Get #n, , NumFxs

    'Resize array
50  ReDim FxData(1 To NumFxs) As tIndiceFx

60  For i = 1 To NumFxs
70      Get #n, , FxData(i)
80  Next i

90  Close #n

    On Error GoTo 0
    Exit Sub

CargarFxs_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure CargarFxs of Módulo de clase clsRecursosBender Linea: " & Erl())
End Sub

Sub SaveFxs(ByRef arch As String)
Dim n                           As Integer
Dim i                           As Long

    On Error GoTo SaveFxs_Error

10  n = FreeFile()

20  If FileExist(arch, vbArchive) Then Kill arch

30  MiCabecera.desc = "Copyright © Bender Games"

40  Open arch For Binary Access Write As #n

    'cabecera
50  Put #n, , MiCabecera

    'num de cabezas
60  Put #n, , NumFxs

70  For i = 1 To NumFxs
80      Put #n, , FxData(i)
90  Next i

100 Close #n

    On Error GoTo 0
    Exit Sub

SaveFxs_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure SaveFxs of Módulo de clase clsRecursosBender Linea: " & Erl())
End Sub

Sub SaveAnimArmas(ByRef arch As String)
Dim loopc                       As Long

    On Error GoTo SaveAnimArmas_Error

10  Call WriteVar(arch, "INIT", "NumArmas", CStr(NumWeaponAnims))

    Dim i                       As Long
20  For loopc = 1 To NumWeaponAnims
30      For i = 1 To 4
40          Call WriteVar(arch, "ARMA" & loopc, "Dir" & i, CStr(WeaponAnimData(loopc).WeaponWalk(i).GrhIndex))
50      Next i
60  Next loopc

    On Error GoTo 0
    Exit Sub

SaveAnimArmas_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure SaveAnimArmas of Módulo de clase clsRecursosBender Linea: " & Erl())
End Sub

Sub SaveAnimEscudos(ByRef arch As String)
Dim loopc                       As Long

    On Error GoTo SaveAnimEscudos_Error

10  Call WriteVar(arch, "INIT", "NumEscudos", CStr(NumEscudosAnims))

    Dim i                       As Long

20  For loopc = 1 To NumEscudosAnims
30      For i = 1 To 4
40          Call WriteVar(arch, "ESC" & loopc, "Dir" & i, CStr(ShieldAnimData(loopc).ShieldWalk(i).GrhIndex))
50      Next i
60  Next loopc

    On Error GoTo 0
    Exit Sub

SaveAnimEscudos_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure SaveAnimEscudos of Módulo de clase clsRecursosBender Linea: " & Erl())
End Sub



Sub SaveCabezas(Path As String)
Dim n                           As Integer
Dim i                           As Long
Dim J                           As Long
Dim Miscabezas                  As tIndiceCabeza


    On Error GoTo SaveCabezas_Error

10  MiCabecera.desc = "Copyright © Bender Games"

20  n = FreeFile()
30  Open Path For Binary Access Write As #n

    'cabecera
40  Put #n, , MiCabecera

    'num de cabezas
50  Put #n, , Numheads

60  For i = 1 To Numheads
70      For J = 1 To 4
80          Miscabezas.Head(J) = HeadData(i).Head(J).GrhIndex
90      Next J

100     Put #n, , Miscabezas
110 Next i

120 Close #n

    On Error GoTo 0
    Exit Sub

SaveCabezas_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure SaveCabezas of Módulo de clase clsRecursosBender Linea: " & Erl())
End Sub

Sub SaveCascos(Path As String)
Dim n                           As Integer
Dim i                           As Long
Dim J                           As Byte


Dim Miscabezas                  As tIndiceCabeza

    On Error GoTo SaveCascos_Error

10  n = FreeFile()
20  Open Path For Binary Access Write As #n


30  MiCabecera.desc = "Copyright © Bender Games"
    'cabecera
40  Put #n, , MiCabecera

    'num de cabezas
50  Put #n, , NumCascos

60  For i = 1 To NumCascos
70      For J = 1 To 4
80          Miscabezas.Head(J) = CascoAnimData(i).Head(J).GrhIndex
90      Next J
100     Put #n, , Miscabezas
110 Next i

120 Close #n

    On Error GoTo 0
    Exit Sub

SaveCascos_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure SaveCascos of Módulo de clase clsRecursosBender Linea: " & Erl())
End Sub

Sub SaveCuerpos(Path As String)
Dim n                           As Integer
Dim i                           As Long
Dim J                           As Byte
Dim MisCuerpos                  As tIndiceCuerpo

    On Error GoTo SaveCuerpos_Error

10  On Error GoTo CargarCuerpos_Error

20  n = FreeFile()
30  MiCabecera.desc = "Copyright © Bender Games"

40  Open Path For Binary Access Write As #n

    'cabecera
50  Put #n, , MiCabecera

    'num de cabezas
60  Put #n, , NumBodies


70  For i = 1 To NumBodies
80      For J = 1 To 4
90          MisCuerpos.Body(J) = BodyData(i).Walk(J).GrhIndex
100     Next J

110     MisCuerpos.HeadOffsetX = BodyData(i).HeadOffset.X
120     MisCuerpos.HeadOffsetY = BodyData(i).HeadOffset.Y

130     Put #n, , MisCuerpos
140 Next i

150 Close #n

160 On Error GoTo 0
170 Exit Sub

CargarCuerpos_Error:

180 MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure CargarCuerpos of Módulo de clase clsRecursosBender " & Erl() & "-" & i

    On Error GoTo 0
    Exit Sub

SaveCuerpos_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure SaveCuerpos of Módulo de clase clsRecursosBender Linea: " & Erl())
End Sub

Private Sub InitGrh(ByRef Grh As Grh, ByVal GrhIndex As Integer, Optional ByVal Started As Byte = 2)
    '*****************************************************************
    'Sets up a grh. MUST be done before rendering
    '*****************************************************************
    On Error GoTo InitGrh_Error

10  Grh.GrhIndex = GrhIndex

20  If Started = 2 Then
30      If GrhData(Grh.GrhIndex).NumFrames > 1 Then
40          Grh.Started = 1
50      Else
60          Grh.Started = 0
70      End If
80  Else
        'Make sure the graphic can be started
90      If Grh.GrhIndex <= UBound(GrhData) Then
100         If GrhData(Grh.GrhIndex).NumFrames = 1 Then Started = 0
110         Grh.Started = Started
120     End If
130 End If


140 If Grh.Started Then
150     Grh.Loops = INFINITE_LOOPS
160 Else
170     Grh.Loops = 0
180 End If

190 Grh.FrameCounter = 1
200 If Grh.GrhIndex <= UBound(GrhData) Then
210     Grh.speed = GrhData(Grh.GrhIndex).speed
220 End If

    On Error GoTo 0
    Exit Sub

InitGrh_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure InitGrh of Módulo de clase clsRecursosBender Linea: " & Erl())
End Sub
