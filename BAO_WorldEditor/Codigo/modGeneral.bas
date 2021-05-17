Attribute VB_Name = "modGeneral"
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
' modGeneral
'
' @remarks Funciones Generales
' @author unkwown
' @version 0.4.11
' @date 20061015

Option Explicit

Public Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (ByRef dest As Any, ByRef Source As Any, ByVal byteCount As Long)

Public Type typDevMODE
    dmDeviceName                    As String * 32
    dmSpecVersion               As Integer
    dmDriverVersion             As Integer
    dmSize                      As Integer
    dmDriverExtra               As Integer
    dmFields                    As Long
    dmOrientation               As Integer
    dmPaperSize                 As Integer
    dmPaperLength               As Integer
    dmPaperWidth                As Integer
    dmScale                     As Integer
    dmCopies                    As Integer
    dmDefaultSource             As Integer
    dmPrintQuality              As Integer
    dmColor                     As Integer
    dmDuplex                    As Integer
    dmYResolution               As Integer
    dmTTOption                  As Integer
    dmCollate                   As Integer
    dmFormName                  As String * 32
    dmUnusedPadding             As Integer
    dmBitsPerPel                As Integer
    dmPelsWidth                 As Long
    dmPelsHeight                As Long
    dmDisplayFlags              As Long
    dmDisplayFrequency          As Long
End Type
Public Declare Function EnumDisplaySettings Lib "user32" Alias "EnumDisplaySettingsA" (ByVal lpszDeviceName As Long, ByVal iModeNum As Long, lptypDevMode As Any) As Boolean
Public Declare Function ChangeDisplaySettings Lib "user32" Alias "ChangeDisplaySettingsA" (lptypDevMode As Any, ByVal dwFlags As Long) As Long

Public Const CCDEVICENAME = 32
Public Const CCFORMNAME = 32
Public Const DM_BITSPERPEL = &H40000
Public Const DM_PELSWIDTH = &H80000
Public Const DM_DISPLAYFREQUENCY = &H400000
Public Const DM_PELSHEIGHT = &H100000
Public Const CDS_UPDATEREGISTRY = &H1
Public Const CDS_TEST = &H4
Public Const DISP_CHANGE_SUCCESSFUL = 0
Public Const DISP_CHANGE_RESTART = 1

Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

''
' Realiza acciones de desplasamiento segun las teclas que hallamos precionado
'

Public Sub CheckKeys()
'*************************************************
'Author: ^[GS]^
'Last modified: 01/11/08
'*************************************************

    If HotKeysAllow = False Then Exit Sub

    If IsAppActive Then

        '[Loopzer]
        If GetKeyState(vbKeyControl) < 0 Then    'If GetKeyState(vbKeyControl) < 0 And GetKeyState(vbKeyD) < 0 Then
            If Seleccionando Then
                If GetKeyState(vbKeyC) < 0 Then CopiarSeleccion
                If GetKeyState(vbKeyX) < 0 Then CortarSeleccion
                If GetKeyState(vbKeyB) < 0 Then BlockearSeleccion
                If GetKeyState(vbKeyD) < 0 Then AccionSeleccion
                '    Else
                If GetKeyState(vbKeyS) < 0 Then DePegar    ' GS
                If GetKeyState(vbKeyV) < 0 Then PegarSeleccion
                If GetKeyState(vbKeyV) < 0 Then PegarSeleccionAbajo
            End If

        End If
        '[/Loopzer]

        If GetKeyState(vbKeyUp) < 0 Then
            Debug.Print "¡¡UP!! " & UserPos.Y
            If UserPos.Y < 1 Then Exit Sub    ' 10
            Debug.Print "¿Pase ese EXIT SUB :|?"
            Debug.Print "¿WalkMode WTF? " & WalkMode
            If LegalPos(UserPos.X, UserPos.Y - 1) And WalkMode = True Then
                If dLastWalk + 50 > GetTickCount Then Exit Sub
                UserPos.Y = UserPos.Y - 1
                MoveCharbyPos UserCharIndex, UserPos.X, UserPos.Y
                dLastWalk = GetTickCount
            ElseIf WalkMode = False Then
                UserPos.Y = UserPos.Y - 1
                Debug.Print "asd"
            End If
            Debug.Print "¿what the fuck?"
            bRefreshRadar = True    ' Radar
            frmMain.SetFocus
            Exit Sub
        End If

        If GetKeyState(vbKeyRight) < 0 Then
            If UserPos.X > XMaxMapSize Then Exit Sub    ' 89
            If LegalPos(UserPos.X + 1, UserPos.Y) And WalkMode = True Then
                If dLastWalk + 50 > GetTickCount Then Exit Sub
                UserPos.X = UserPos.X + 1
                MoveCharbyPos UserCharIndex, UserPos.X, UserPos.Y
                dLastWalk = GetTickCount
            ElseIf WalkMode = False Then
                UserPos.X = UserPos.X + 1
            End If
            bRefreshRadar = True    ' Radar
            frmMain.SetFocus
            Exit Sub
        End If

        If GetKeyState(vbKeyDown) < 0 Then
            If UserPos.Y > YMaxMapSize Then Exit Sub    ' 92
            If LegalPos(UserPos.X, UserPos.Y + 1) And WalkMode = True Then
                If dLastWalk + 50 > GetTickCount Then Exit Sub
                UserPos.Y = UserPos.Y + 1
                MoveCharbyPos UserCharIndex, UserPos.X, UserPos.Y
                dLastWalk = GetTickCount
            ElseIf WalkMode = False Then
                UserPos.Y = UserPos.Y + 1
            End If
            bRefreshRadar = True    ' Radar
            frmMain.SetFocus
            Exit Sub
        End If

        If GetKeyState(vbKeyLeft) < 0 Then
            If UserPos.X < 1 Then Exit Sub    ' 12
            If LegalPos(UserPos.X - 1, UserPos.Y) And WalkMode = True Then
                If dLastWalk + 50 > GetTickCount Then Exit Sub
                UserPos.X = UserPos.X - 1
                MoveCharbyPos UserCharIndex, UserPos.X, UserPos.Y
                dLastWalk = GetTickCount
            ElseIf WalkMode = False Then
                UserPos.X = UserPos.X - 1
            End If
            bRefreshRadar = True    ' Radar
            frmMain.SetFocus
            Exit Sub
        End If
    End If

End Sub

Public Function ReadField(Pos As Integer, Text As String, SepASCII As Integer) As String
'*************************************************
'Author: Unkwown
'Last modified: 20/05/06
'*************************************************
Dim i                           As Integer
Dim LastPos                     As Integer
Dim CurChar                     As String * 1
Dim FieldNum                    As Integer
Dim Seperator                   As String

    Seperator = Chr(SepASCII)
    LastPos = 0
    FieldNum = 0

    For i = 1 To Len(Text)
        CurChar = mid(Text, i, 1)
        If CurChar = Seperator Then
            FieldNum = FieldNum + 1
            If FieldNum = Pos Then
                ReadField = mid(Text, LastPos + 1, (InStr(LastPos + 1, Text, Seperator, vbTextCompare) - 1) - (LastPos))
                Exit Function
            End If
            LastPos = i
        End If
    Next i
    FieldNum = FieldNum + 1

    If FieldNum = Pos Then
        ReadField = mid(Text, LastPos + 1)
    End If

End Function


''
' Completa y corrije un path
'
' @param Path Especifica el path con el que se trabajara
' @return   Nos devuelve el path completado

Private Function autoCompletaPath(ByVal Path As String) As String
'*************************************************
'Author: ^[GS]^
'Last modified: 22/05/06
'*************************************************
    Path = Replace(Path, "/", "\")
    If Left(Path, 1) = "\" Then
        ' agrego app.path & path
        Path = App.Path & Path
    End If
    If Right(Path, 1) <> "\" Then
        ' me aseguro que el final sea con "\"
        Path = Path & "\"
    End If
    autoCompletaPath = Path
End Function

''
' Carga la configuracion del WorldEditor de WorldEditor.ini
'

Private Sub CargarMapIni()
'*************************************************
'Author: ^[GS]^
'Last modified: 24/11/08
'*************************************************

    On Error GoTo Fallo
    Dim tStr                    As String
    Dim Leer                    As New clsIniReader

    IniPath = App.Path & "\"

    If FileExist(IniPath & "WorldEditor.ini", vbArchive) = False Then
        '    frmMain.mnuGuardarUltimaConfig.Checked = True
        '    DirGraficos = IniPath & "Graficos-bmp\"
        '    DirIndex = IniPath & "INIT\"
        '    DirMidi = IniPath & "MIDI\"
        '    frmMusica.fleMusicas.Path = DirMidi
        '    DirDats = IniPath & "DATS\"
        '    MaxGrhs = 32000 '[/About] Que hijo de puta
        '    UserPos.X = 50
        '    UserPos.Y = 50
        '    PantallaX = 30
        '    PantallaY = 30
        MsgBox "Falta el archivo 'WorldEditor.ini' de configuración.", vbInformation
        End
    End If

    Call Leer.Initialize(IniPath & "WorldEditor.ini")

    ' Obj de Translado
    Cfg_TrOBJ = Val(Leer.GetValue("CONFIGURACION", "ObjTranslado"))
    frmMain.mnuAutoCapturarTranslados.Checked = Val(Leer.GetValue("CONFIGURACION", "AutoCapturarTrans"))
    frmMain.mnuAutoCapturarSuperficie.Checked = Val(Leer.GetValue("CONFIGURACION", "AutoCapturarSup"))
    frmMain.mnuUtilizarDeshacer.Checked = False    'Val(Leer.GetValue("CONFIGURACION", "UtilizarDeshacer"))

    ' Guardar Ultima Configuracion
    frmMain.mnuGuardarUltimaConfig.Checked = Val(Leer.GetValue("CONFIGURACION", "GuardarConfig"))

    ' Index
    MaxGrhs = Val(GetVar(IniPath & "WorldEditor.ini", "INDEX", "MaxGrhs"))
    If MaxGrhs < 1 Then MaxGrhs = 32000

    'Reciente
    frmMain.Dialog.InitDir = Leer.GetValue("PATH", "UltimoMapa")
    DirGraficos = autoCompletaPath(Leer.GetValue("PATH", "DirGraficos"))
    If DirGraficos = "\" Then
        DirGraficos = IniPath & "Graficos-BMP\"
    End If

    Debug.Print "Dir Graficos: " & DirGraficos

    If FileExist(DirGraficos, vbDirectory) = False Then
        MsgBox "El directorio de Graficos es incorrecto", vbCritical + vbOKOnly
        End
    End If
    DirMidi = autoCompletaPath(Leer.GetValue("PATH", "DirMidi"))
    If DirMidi = "\" Then
        DirMidi = IniPath & "MIDI\"
    End If
    If FileExist(DirMidi, vbDirectory) = False Then
        MsgBox "El directorio de MIDI es incorrecto", vbCritical + vbOKOnly
        End
    End If
    frmMusica.fleMusicas.Path = DirMidi
    DirIndex = autoCompletaPath(Leer.GetValue("PATH", "DirIndex"))
    If DirIndex = "\" Then
        DirIndex = IniPath & "INIT\"
    End If
    If FileExist(DirIndex, vbDirectory) = False Then
        MsgBox "El directorio de Index es incorrecto", vbCritical + vbOKOnly
        End
    End If
    DirDats = autoCompletaPath(Leer.GetValue("PATH", "DirDats"))
    If DirDats = "\" Then
        DirDats = IniPath & "DATS\"
    End If
    If FileExist(DirDats, vbDirectory) = False Then
        MsgBox "El directorio de Dats es incorrecto", vbCritical + vbOKOnly
        End
    End If

    tStr = Leer.GetValue("MOSTRAR", "LastPos")    ' x-y
    UserPos.X = Val(ReadField(1, tStr, Asc("-")))
    UserPos.Y = Val(ReadField(2, tStr, Asc("-")))
    If UserPos.X < XMinMapSize Or UserPos.X > XMaxMapSize Then
        UserPos.X = 50
    End If
    If UserPos.Y < YMinMapSize Or UserPos.Y > YMaxMapSize Then
        UserPos.Y = 50
    End If

    ' Menu Mostrar
    frmMain.mnuVerAutomatico.Checked = Val(Leer.GetValue("MOSTRAR", "ControlAutomatico"))
    frmMain.mnuVerCapa2.Checked = Val(Leer.GetValue("MOSTRAR", "Capa2"))
    frmMain.mnuVerCapa3.Checked = Val(Leer.GetValue("MOSTRAR", "Capa3"))
    frmMain.mnuVerCapa4.Checked = Val(Leer.GetValue("MOSTRAR", "Capa4"))
    frmMain.mnuVerTranslados.Checked = Val(Leer.GetValue("MOSTRAR", "Translados"))
    frmMain.mnuVerObjetos.Checked = Val(Leer.GetValue("MOSTRAR", "Objetos"))
    frmMain.mnuVerNPCs.Checked = Val(Leer.GetValue("MOSTRAR", "NPCs"))
    frmMain.mnuVerTriggers.Checked = Val(Leer.GetValue("MOSTRAR", "Triggers"))
    frmMain.mnuVerGrilla.Checked = Val(Leer.GetValue("MOSTRAR", "Grilla"))    ' Grilla
    VerGrilla = frmMain.mnuVerGrilla.Checked
    frmMain.mnuVerBloqueos.Checked = Val(Leer.GetValue("MOSTRAR", "Bloqueos"))
    frmMain.cVerTriggers.Value = frmMain.mnuVerTriggers.Checked
    frmMain.cVerBloqueos.Value = frmMain.mnuVerBloqueos.Checked

    ' Tamaño de visualizacion
    PantallaX = Val(Leer.GetValue("MOSTRAR", "PantallaX"))
    PantallaY = Val(Leer.GetValue("MOSTRAR", "PantallaY"))

    'If PantallaX > 23 Or PantallaX <= 2 Then PantallaX = 23
    'If PantallaY > 32 Or PantallaY <= 2 Then PantallaY = 32
    PantallaX = 29
    PantallaY = 51

    ' [GS] 02/10/06
    ' Tamaño de visualizacion en el cliente
    ClienteHeight = Val(Leer.GetValue("MOSTRAR", "ClienteHeight"))
    ClienteWidth = Val(Leer.GetValue("MOSTRAR", "ClienteWidth"))
    If ClienteHeight <= 0 Then ClienteHeight = 13
    If ClienteWidth <= 0 Then ClienteWidth = 17

    Exit Sub
Fallo:
    MsgBox "ERROR " & err.Number & " en WorldEditor.ini" & vbCrLf & err.Description, vbCritical
    Resume Next
End Sub

Public Function TomarBPP() As Integer
Dim ModoDeVideo                 As typDevMODE
    Call EnumDisplaySettings(0, -1, ModoDeVideo)
    TomarBPP = CInt(ModoDeVideo.dmBitsPerPel)
End Function

Public Sub CambioDeVideo()
'*************************************************
'Author: Loopzer
'*************************************************
    Exit Sub
    Dim ModoDeVideo             As typDevMODE
    Dim r                       As Long
    Call EnumDisplaySettings(0, -1, ModoDeVideo)
    If ModoDeVideo.dmPelsWidth < 1024 Or ModoDeVideo.dmPelsHeight < 768 Then
        Select Case MsgBox("La aplicacion necesita una resolucion minima de 1024 X 768 ,¿Acepta el Cambio de resolucion?", vbInformation + vbOKCancel, "World Editor")
            Case vbOK
                ModoDeVideo.dmPelsWidth = 1024
                ModoDeVideo.dmPelsHeight = 768
                ModoDeVideo.dmFields = DM_PELSWIDTH Or DM_PELSHEIGHT
                r = ChangeDisplaySettings(ModoDeVideo, CDS_TEST)
                If r <> 0 Then
                    MsgBox "Error al cambiar la resolucion, La aplicacion se cerrara."
                    End
                End If
            Case vbCancel
                End
        End Select
    End If
End Sub

Public Sub Main()
'*************************************************
'Author: Unkwown
'Last modified: 25/11/08 - GS
'*************************************************

Dim OffsetCounterX              As Integer
Dim OffsetCounterY              As Integer
Dim Chkflag                     As Integer

10  On Error GoTo Main_Error

20  If App.PrevInstance = True Then
30      MsgBox "Hay otra instancia del Editor de Mapas abierto. No se puede continuar (Ni idea por qué.. pero we)"
40      End
50  End If

60  CambioDeVideo

70  ReDim MapInfo(0 To 3)
80  Call CargarMapIni
90  Call IniciarCabecera(GameHeader)

100 If FileExist(IniPath & "WorldEditor.jpg", vbArchive) Then frmCargando.Picture1.Picture = LoadPicture(IniPath & "WorldEditor.jpg")
110 frmCargando.verX = "v" & App.Major & "." & App.Minor & "." & App.Revision
120 frmCargando.Show
130 frmCargando.SetFocus
140 DoEvents
150 frmCargando.X.Caption = "Iniciando DirectSound..."
160 IniciarDirectSound
170 DoEvents
180 frmCargando.X.Caption = "Cargando Indice de Superficies..."
190 modIndices.CargarIndicesSuperficie
200 DoEvents
210 frmCargando.X.Caption = "Indexando Cargado de Imagenes..."
220 DoEvents

    'If FileExist(DirIndex & "AO.dat", vbArchive) Then
    '    Call LoadClientSetup
    'If ClientSetup.bDinamic Then
    '        Set SurfaceDB = New clsSurfaceManDyn
    'Else
    '    Set SurfaceDB = New clsSurfaceManStatic
    'End If
    'Else
    'Por default usamos el dinámico

230 ClientSetup.bDinamic = True
240 ClientSetup.byMemory = 128
250 ClientSetup.bUseVideo = False
260 Set SurfaceDB = New clsSurfaceManDyn

    'End If

270 frmMain.MainViewShp.Width = PantallaX ^ 3    ' ver ReyarB
280 frmMain.MainViewShp.Height = PantallaY ^ 3    ' ver ReyarB

290 If InitTileEngine(frmMain.hwnd, frmMain.MainViewShp.Top + 47, frmMain.MainViewShp.Left + 4, 32, 32, PantallaX, PantallaY, 9) Then    ' 30/05/2006
        'Display form handle, View window offset from 0,0 of display form, Tile Size, Display size in tiles, Screen buffer
300     frmCargando.P1.Visible = True
310     frmCargando.L(0).Visible = True
320     frmCargando.X.Caption = "Cargando Cuerpos..."
330     modIndices.CargarIndicesDeCuerpos
340     DoEvents
350     frmCargando.P2.Visible = True
360     frmCargando.L(1).Visible = True
370     frmCargando.X.Caption = "Cargando Cabezas..."
380     modIndices.CargarIndicesDeCabezas
390     DoEvents
400     frmCargando.P3.Visible = True
410     frmCargando.L(2).Visible = True
420     frmCargando.X.Caption = "Cargando NPC's..."
430     modIndices.CargarIndicesNPC
440     DoEvents
450     frmCargando.P4.Visible = True
460     frmCargando.L(3).Visible = True
470     frmCargando.X.Caption = "Cargando Objetos..."
480     modIndices.CargarIndicesOBJ
490     DoEvents
500     frmCargando.P5.Visible = True
510     frmCargando.L(4).Visible = True
520     frmCargando.X.Caption = "Cargando Triggers..."
530     modIndices.CargarIndicesTriggers
540     DoEvents
550     frmCargando.P6.Visible = True
560     frmCargando.L(5).Visible = True
570     DoEvents
580 End If
590 frmCargando.SetFocus
600 frmCargando.X.Caption = "Iniciando Ventana de Edición..."
610 DoEvents
620 If LenB(Dir(App.Path & "\manual\index.html", vbArchive)) = 0 Then
630     frmMain.mnuManual.Enabled = False
640     frmMain.mnuManual.Caption = "&Manual (no implementado)"
650 End If
660 frmCargando.Hide
670 frmMain.Show
680 modMapIO.NuevoMapa
690 DoEvents
700 With MainDestRect
710     .Left = (TilePixelWidth * TileBufferSize) - TilePixelWidth
720     .Top = (TilePixelHeight * TileBufferSize) - TilePixelHeight
730     .Right = .Left + MainViewWidth
740     .Bottom = .Top + MainViewHeight
750 End With
760 With MainViewRect
770     .Left = (frmMain.Left / Screen.TwipsPerPixelX) + MainViewLeft
780     .Top = (frmMain.Top / Screen.TwipsPerPixelY) + MainViewTop
790     .Right = .Left + MainViewWidth
800     .Bottom = .Top + MainViewHeight
810 End With
820 prgRun = True
830 cFPS = 0
840 Chkflag = 0
850 dTiempoGT = GetTickCount


860 Do While prgRun
870     With MainViewRect
880         .Left = (frmMain.Left / Screen.TwipsPerPixelX) + MainViewLeft
890         .Top = (frmMain.Top / Screen.TwipsPerPixelY) + MainViewTop
900         .Right = .Left + MainViewWidth
910         .Bottom = .Top + MainViewHeight
920     End With
930     If (GetTickCount - dTiempoGT) >= 1000 Then
940         CaptionWorldEditor frmMain.Dialog.FileName, (MapInfo(CurMap).Changed = 1)
950         frmMain.FPS.Caption = "FPS: " & cFPS
960         cFPS = 1
970         dTiempoGT = GetTickCount
980     Else
990         cFPS = cFPS + 1
1000    End If
1010    If AddtoUserPos.X <> 0 Then
1020        OffsetCounterX = (OffsetCounterX - (8 * Sgn(AddtoUserPos.X)))
1030        If Abs(OffsetCounterX) >= Abs(TilePixelWidth * AddtoUserPos.X) Then
1040            OffsetCounterX = 0
1050            AddtoUserPos.X = 0
1060        End If
1070    ElseIf AddtoUserPos.Y <> 0 Then
1080        OffsetCounterY = OffsetCounterY - (8 * Sgn(AddtoUserPos.Y))
1090        If Abs(OffsetCounterY) >= Abs(TilePixelHeight * AddtoUserPos.Y) Then
1100            OffsetCounterY = 0
1110            AddtoUserPos.Y = 0
1120        End If
1130    End If

1140    If Chkflag = 3 Then
1150        If frmMain.WindowState <> 1 Then Call CheckKeys
1160        Call RenderScreen(UserPos.X - AddtoUserPos.X, UserPos.Y - AddtoUserPos.Y, OffsetCounterX, OffsetCounterY)
1170        modDirectDraw.DrawText 260, 260, "X: " & UserPos.X & " - Y: " & UserPos.Y, vbWhite
1180        Call DrawBackBufferSurface    'Draw to the screen!

1190        Chkflag = 0
1200    End If

1210    Chkflag = Chkflag + 1

1220    If CurrentGrh.GrhIndex = 0 Then
1230        InitGrh CurrentGrh, 1
1240    End If
1250    If bRefreshRadar = True Then
1260        Call RefreshAllChars
1270        bRefreshRadar = False
1280    End If
1290    If frmMain.PreviewGrh.Visible = True Then
1300        Call modPaneles.VistaPreviaDeSup
1310    End If
1320    DoEvents
        'Sleep 1
1330 Loop

1340 If MapInfo(CurMap).Changed = 1 Then
1350    If MsgBox(MSGMod, vbExclamation + vbYesNo) = vbYes Then
1360        modMapIO.GuardarMapa frmMain.Dialog.FileName
1370    End If
1380 End If




1390 DeInitTileEngine
1400 LiberarDirectSound
    Dim f
1410 For Each f In Forms
1420    Unload f
1430 Next

1440 End

1450 On Error GoTo 0
1460 Exit Sub

Main_Error:

1470 Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento Main de Módulo modGeneral línea: " & Erl())

End Sub

Public Function GetVar(File As String, Main As String, Var As String) As String
'*************************************************
'Author: Unkwown
'Last modified: 20/05/06
'*************************************************
Dim sSpaces                     As String    ' This will hold the input that the program will retrieve
Dim szReturn                    As String    ' This will be the defaul value if the string is not found
    szReturn = vbNullString
    sSpaces = Space(5000)      ' This tells the computer how long the longest string can be. If you want, you can change the number 75 to any number you wish
    GetPrivateProfileString Main, Var, szReturn, sSpaces, Len(sSpaces), File
    GetVar = RTrim(sSpaces)
    GetVar = Left(GetVar, Len(GetVar) - 1)
End Function

Public Sub WriteVar(File As String, Main As String, Var As String, Value As String)
'*************************************************
'Author: Unkwown
'Last modified: 20/05/06
'*************************************************
    writeprivateprofilestring Main, Var, Value, File
End Sub

Public Sub LogError(ByVal descError As String)

Dim nfile                       As Integer
Dim tempDescError               As String

    On Error GoTo LogError_Error

    tempDescError = Replace(descError, "{", "-")
    tempDescError = Replace(descError, "}", "-")

    nfile = FreeFile
    Open App.Path & "\Errores.log" For Append Shared As #nfile
    Print #nfile, Date & " " & Time & " " & tempDescError
    Close #nfile

    On Error GoTo 0
    Exit Sub
LogError_Error:
    MsgBox "¡Error en LogError! " & err.Number & " " & err.Description & " Linea: " & Erl & " Error en: " & descError

End Sub


Public Sub ToggleWalkMode()
'*************************************************
'Author: Unkwown
'Last modified: 28/05/06 - GS
'*************************************************
    On Error GoTo fin:
    If WalkMode = False Then
        WalkMode = True
    Else
        frmMain.mnuModoCaminata.Checked = False
        WalkMode = False
    End If

    If WalkMode = False Then
        'Erase character
        Call EraseChar(UserCharIndex)
        MapData(UserPos.X, UserPos.Y).CharIndex = 0
    Else
        'MakeCharacter
        If LegalPos(UserPos.X, UserPos.Y) Then
            Call MakeChar(NextOpenChar(), 1, 1, SOUTH, UserPos.X, UserPos.Y)
            UserCharIndex = MapData(UserPos.X, UserPos.Y).CharIndex
            frmMain.mnuModoCaminata.Checked = True
        Else
            MsgBox "ERROR: Ubicacion ilegal."
            WalkMode = False
        End If
    End If
fin:
End Sub

Public Sub FixCoasts(ByVal GrhIndex As Integer, ByVal X As Integer, ByVal Y As Integer)
'*************************************************
'Author: Unkwown
'Last modified: 20/05/06
'*************************************************

    If GrhIndex = 7284 Or GrhIndex = 7290 Or GrhIndex = 7291 Or GrhIndex = 7297 Or _
       GrhIndex = 7300 Or GrhIndex = 7301 Or GrhIndex = 7302 Or GrhIndex = 7303 Or _
       GrhIndex = 7304 Or GrhIndex = 7306 Or GrhIndex = 7308 Or GrhIndex = 7310 Or _
       GrhIndex = 7311 Or GrhIndex = 7313 Or GrhIndex = 7314 Or GrhIndex = 7315 Or _
       GrhIndex = 7316 Or GrhIndex = 7317 Or GrhIndex = 7319 Or GrhIndex = 7321 Or _
       GrhIndex = 7325 Or GrhIndex = 7326 Or GrhIndex = 7327 Or GrhIndex = 7328 Or GrhIndex = 7332 Or _
       GrhIndex = 7338 Or GrhIndex = 7339 Or GrhIndex = 7345 Or GrhIndex = 7348 Or _
       GrhIndex = 7349 Or GrhIndex = 7350 Or GrhIndex = 7351 Or GrhIndex = 7352 Or _
       GrhIndex = 7349 Or GrhIndex = 7350 Or GrhIndex = 7351 Or _
       GrhIndex = 7354 Or GrhIndex = 7357 Or GrhIndex = 7358 Or GrhIndex = 7360 Or _
       GrhIndex = 7362 Or GrhIndex = 7363 Or GrhIndex = 7365 Or GrhIndex = 7366 Or _
       GrhIndex = 7367 Or GrhIndex = 7368 Or GrhIndex = 7369 Or GrhIndex = 7371 Or _
       GrhIndex = 7373 Or GrhIndex = 7375 Or GrhIndex = 7376 Then MapData(X, Y).Graphic(2).GrhIndex = 0

End Sub

Public Function RandomNumber(ByVal LowerBound As Variant, ByVal UpperBound As Variant) As Single
'*************************************************
'Author: Unkwown
'Last modified: 20/05/06
'*************************************************
    Randomize Timer
    RandomNumber = (UpperBound - LowerBound + 1) * Rnd + LowerBound
End Function


''
' Actualiza todos los Chars en el mapa
'

Public Sub RefreshAllChars()
'*************************************************
'Author: ^[GS]^
'Last modified: 28/05/06
'*************************************************

Dim LoopC                       As Integer
Dim pX                          As Single
Dim pY                          As Single

    On Error GoTo RefreshAllChars_Error


10  frmMain.ApuntadorRadar.Move (UserPos.X - 12) / 12, (UserPos.Y - 10) / 12
20  frmMain.picRadar.Cls
30  For LoopC = 1 To LastChar
40      If CharList(LoopC).Active = 1 Then
41          pX = CharList(LoopC).Pos.X * 9.3 / 106
7           pY = CharList(LoopC).Pos.Y * 9.3 / 106
            'pX = Round(pX, 0)
            'pY = Round(pY, 0)
50          MapData(CharList(LoopC).Pos.X, CharList(LoopC).Pos.Y).CharIndex = LoopC
60          'If CharList(LoopC).Heading <> 0 Then

70          frmMain.picRadar.ForeColor = vbGreen
            frmMain.picRadar.Line (0 + (pX), 0 + (pY))-(2 + (pX), 0 + (pY))
            frmMain.picRadar.Line (0 + (pX), 1 + (pY))-(2 + (pX), 1 + (pY))
80          'frmMain.picRadar.Line (0 + (CharList(LoopC).Pos.X), 0 + (CharList(LoopC).Pos.Y / 107))-(2 + CharList(LoopC).Pos.X / 106, 0 + CharList(LoopC).Pos.Y / 107)
90          'frmMain.picRadar.Line (0 + CharList(LoopC).Pos.X, 1 + (CharList(LoopC).Pos.Y))-(2 + CharList(LoopC).Pos.X / 106, 1 + CharList(LoopC).Pos.Y)
100         'End If
110     End If
120 Next LoopC
130 bRefreshRadar = False

    On Error GoTo 0
    Exit Sub

RefreshAllChars_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento RefreshAllChars de Módulo modGeneral línea: " & Erl())
End Sub


''
' Actualiza el Caption del menu principal
'
' @param Trabajando Indica el path del mapa con el que se esta trabajando
' @param Editado Indica si el mapa esta editado

Public Sub CaptionWorldEditor(ByVal Trabajando As String, ByVal Editado As Boolean)
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************
    If Trabajando = vbNullString Then
        Trabajando = "Nuevo Mapa"
    End If
    frmMain.Caption = "WorldEditor BenderAO v" & App.Major & "." & App.Minor & " Build " & App.Revision & " - [" & Trabajando & "]"
    If Editado = True Then
        frmMain.Caption = frmMain.Caption & " (modificado)"
    End If
End Sub

Private Sub LoadClientSetup()
'**************************************************************
'Author: Juan Martín Sotuyo Dodero (Maraxus)
'Last Modify Date: 26/05/2006
'26/05/2005 - GS . DirIndex
'**************************************************************
Dim fHandle                     As Integer

    fHandle = FreeFile
    Open DirIndex & "ao.dat" For Binary Access Read Lock Write As fHandle
    Get fHandle, , ClientSetup
    Close fHandle

End Sub
