Attribute VB_Name = "modGeneral"
Option Explicit
'modGeneral - Programado por MaTeO - 18:46hs 13/05/2012
'Changelog (ultima modificacion 13/05/2012):
'13/05/2012 - Primer release de este modulo, este modulo tendra todo lo que sea general

Public FirstRun                 As Boolean

Public Const PNG_FORMAT         As String = ".png"
Public Const BMP_FORMAT         As String = ".bmp"

'Unico acceso entre el modulo general y toda la renderizacion del juego.
Public TexFactory               As TextureFactory
Public TextureList()            As Long
Public SP_Main                  As Sprite
Public SP_Anim                  As Sprite
Public SP_Fondo                 As Sprite
Public SP_Armas(3)              As Sprite
Public SP_Cabezas(3)            As Sprite
Public SP_Cascos(3)             As Sprite
Public SP_Cuerpos(3)            As Sprite
Public SP_Escudos(3)            As Sprite
Public SP_Efectos               As Sprite

Public NumGraphic               As Long
Public NumGraphic_Anim          As Long
Public NumGraphic_Fondo         As Long
Public NumGraphic_Armas(3)      As Long
Public NumGraphic_Cabezas(3)    As Long
Public NumGraphic_Cascos(3)     As Long
Public NumGraphic_Cuerpos(3)    As Long
Public NumGraphic_Escudos(3)    As Long
Public NumGraphic_Efectos       As Long

Public numSelectIndexs          As Long
Public SelectIndexs()           As Long

Public Enum TipList
    Armas
    Cabezas
    Cascos
    Cuerpos
    Escudos
    Efectos
    Graficos
End Enum

Public NumAnim_Armas            As Long
Public NumAnim_Cabezas          As Long
Public NumAnim_Cascos           As Long
Public NumAnim_Cuerpos          As Long
Public NumAnim_Escudos          As Long
Public NumAnim_Efectos          As Long

Public FrmMainCaption           As String
Public TileEngine               As clsTileEngine
Public Resource                 As clsRecursosBender

'Directorios de graficos, init y exportaciones
Public AppPNG                   As Boolean
Public AppGraficos              As String
Public AppInit                  As String
Public AppExpo                  As String

Public Declare Function VarPtrArray Lib "msvbvm60.dll" Alias "VarPtr" (var() As Any) As Long
Public Declare Function SendMessageString Lib "user32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As String) As Long
Public Const LB_SETHORIZONTALEXTENT = &H194
 
Public Sub AddHScroll(lst As ListBox)
'***************************************************************************
'Purpose: Add a horizontal scrollbar to a listbox. This routine only works
'         if it is called after the listbox is filled.
'Inputs:  lst - The listbox
'Outputs: None
'***************************************************************************
 
    Dim intIndex As Long
    Dim lngLength As Long
    Dim lngWidth As Long
    
    'see what the longest entry is
   On Error GoTo AddHScroll_Error

    For intIndex = 0 To lst.ListCount - 1
        If Len(lst.List(intIndex)) = Len(lst.List(lngLength)) Then
            lngLength = intIndex
        End If
    Next intIndex
    
    'add a little space
    lngWidth = lst.Parent.TextWidth(lst.List(lngLength) + Space$(5))
    
    'Convert to Pixels
    lngWidth = lngWidth \ Screen.TwipsPerPixelX
 
    'Use api to add scrollbar
    Call SendMessageString(lst.hWnd, LB_SETHORIZONTALEXTENT, lngWidth, ByVal 0&)
    

   On Error GoTo 0
   Exit Sub

AddHScroll_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure AddHScroll of M�dulo modGeneral Linea: " & Erl())
 
End Sub

Public Sub AddItem(ByVal pstrText As String)
Dim lngIndex    As Long
Dim strTemp     As String

    If Printer.TextWidth(pstrText) > frmMain.lstGraphics.Width Then
        For lngIndex = 1 To Len(pstrText)
            If Printer.TextWidth(strTemp & Mid$(pstrText, lngIndex, 1) & "...") > frmMain.lstGraphics.Width Then
                Exit For
            Else
                strTemp = strTemp & Mid$(pstrText, lngIndex, 1)
            End If
        Next lngIndex
        strTemp = Trim$(strTemp) & "..."
    Else
        strTemp = pstrText
    End If
    frmMain.lstGraphics.AddItem strTemp
End Sub

'Primera funcion que se ejecuta cuando iniciamos el programa
Sub Main()



    '[DETECCI�N DE PATHS]
    'Explicaci�n: Lo que hace esto es verificar si las carpetas Graficos, Init y Expo son correctas. Si no lo estan sigue preguntando y dice "Paths Incorrectos."
    '[INICIAMOS INTERFAZ]
    On Error GoTo Main_Error

10  Load frmMain
20  FrmMainCaption = "PlusIndex - By Mateo & About v" & App.Major & "." & App.Minor & "." & App.Revision
30  frmMain.Caption = FrmMainCaption
    '[/INICIAMOS INTERFAZ]
LoopPaths:
    'Tiramos algo de facha para empezar :P
40  frmDirectory.Caption = "Directorios"
50  If Not Detect_Paths Then
60      frmDirectory.Show vbModal
70      If Not Detect_Paths Then
80          If frmDirectory.Continue Then
90              MsgBox "Directorios invalidos."
100             GoTo LoopPaths
110         Else
120             End
130         End If
140     End If
150 End If
    '[/DETECCI�N DE PATHS]

160 FirstRun = True

    '[INICIALIZAMOS VARIABLES]
170 frmCargando.Show

180 If CheckEntropia Then
190     Debug.Print "Se registr� Entropia.dll"
200 End If

210 frmCargando.lblLoading.Caption = "Inicializando el motor gr�fico..."

    'Iniciamos el TileEngine
220 Set TileEngine = New clsTileEngine
230 Call TileEngine.Initialize

240 Set Resource = New clsRecursosBender
250 Resource.Initialize

    '[/INICIALIZAMOS VARIABLES]
260 Unload frmCargando
270 frmMain.Show
280 frmMain.Enabled = True
290 Call TileEngine.StartGameLoop    '[INICIAMOS A CORRER TODO]

    On Error GoTo 0
    Exit Sub

Main_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure Main of M�dulo modGeneral Linea: " & Erl())

End Sub

Public Sub CloseProgram()
    If Not (TileEngine Is Nothing) Then
        Call TileEngine.StopGameLoop
        Call TileEngine.Terminate
    End If
    Call UnloadAllForms
    End
End Sub

'**************************************************************
'Author: About
'Last Modify Date: ?/?/?
'
'**************************************************************
Public Function ObtenerDirectorioSO() As String

Dim lngSize                     As Long
Dim Retval                      As Long
Dim strBuf                      As String

    'Obtener directorio de sistema
    On Error GoTo ObtenerDirectorioSO_Error

10  strBuf = String(255, 0)
20  lngSize = 255
30  Retval = GetSystemDirectoryA(strBuf, lngSize)
40  strBuf = Left(strBuf, Retval)
50  ObtenerDirectorioSO = strBuf

60  If FileExist(ObtenerDirectorioSO & "\..\SysWOW64\", vbDirectory) Then
70      ObtenerDirectorioSO = ObtenerDirectorioSO & "\..\SysWOW64"
80  End If

    On Error GoTo 0
    Exit Function

ObtenerDirectorioSO_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure ObtenerDirectorioSO of M�dulo modGeneral Linea: " & Erl())

End Function

Public Function CheckEntropia() As Boolean

    On Error GoTo CheckEntropia_Error

10  If Not FileExist(ObtenerDirectorioSO & "/Entropia.dll", vbArchive) Then
20      If FileExist(App.Path & "/Entropia.dll", vbArchive) Then
30          Call mCopyFile(App.Path & "/Entropia.dll", ObtenerDirectorioSO & "/Entropia.dll")
40          Call Shell("regsvr32 """ & ObtenerDirectorioSO & "/Entropia.dll" & """ /s")
50          CheckEntropia = True
60      Else
70          MsgBox "No se encuentra la librer�a Entropia.dll en la carpeta " & App.Path
80          CheckEntropia = False
90          End
100     End If
110 End If

    On Error GoTo 0
    Exit Function

CheckEntropia_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure CheckEntropia of M�dulo modGeneral Linea: " & Erl())

End Function

Public Function Detect_Paths() As Boolean
    On Error GoTo Detect_Paths_Error

10  AppPNG = IIf(modFunctions.Load_Settings("AppPNG") = "1", True, False)
20  AppGraficos = modFunctions.Load_Settings("AppGraficos")
30  AppInit = modFunctions.Load_Settings("AppInit")
40  AppExpo = modFunctions.Load_Settings("AppExpo")

50  Detect_Paths = FileExist(AppGraficos, vbDirectory) And FileExist(AppInit, vbDirectory) And FileExist(AppExpo, vbDirectory)
60  Detect_Paths = Len(AppGraficos) <> 0 And Len(AppInit) <> 0 And Len(AppExpo) <> 0

    On Error GoTo 0
    Exit Function

Detect_Paths_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure Detect_Paths of M�dulo modGeneral Linea: " & Erl())
End Function

Public Function EraseArray(ByRef ElArray() As Long)

Dim max                         As Long
Dim min                         As Long
Dim i                           As Long

    On Error GoTo EraseArray_Error

10  max = UBound(ElArray)
20  min = LBound(ElArray)

30  For i = min To max
40      ElArray(i) = 0
50  Next i

    On Error GoTo 0
    Exit Function

EraseArray_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure EraseArray of M�dulo modGeneral Linea: " & Erl())

End Function

Public Function Error(ByVal Desc As String) As String

    MsgBox Desc

End Function
