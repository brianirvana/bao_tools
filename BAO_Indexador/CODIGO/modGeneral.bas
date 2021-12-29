Attribute VB_Name = "modGeneral"
Option Explicit
'modGeneral - Programado por MaTeO - 18:46hs 13/05/2012
'Changelog (ultima modificacion 13/05/2012):
'13/05/2012 - Primer release de este modulo, este modulo tendra todo lo que sea general

Public FirstRun As Boolean

'Unico acceso entre el modulo general y toda la renderizacion del juego.
Public TexFactory As TextureFactory
Public TexList() As Long
Public SP_Main As Sprite
Public SP_Anim As Sprite
Public SP_Fondo As Sprite
Public SP_Armas(3) As Sprite
Public SP_Cabezas(3) As Sprite
Public SP_Cascos(3) As Sprite
Public SP_Cuerpos(3) As Sprite
Public SP_Escudos(3) As Sprite
Public SP_Efectos As Sprite

Public NumGraphic As Integer
Public NumGraphic_Anim As Integer
Public NumGraphic_Fondo As Integer
Public NumGraphic_Armas(3) As Integer
Public NumGraphic_Cabezas(3) As Integer
Public NumGraphic_Cascos(3) As Integer
Public NumGraphic_Cuerpos(3) As Integer
Public NumGraphic_Escudos(3) As Integer
Public NumGraphic_Efectos As Integer

Public numSelectIndexs As Integer
Public SelectIndexs() As Integer

Public Enum TipList
    Armas
    Cabezas
    Cascos
    Cuerpos
    Escudos
    Efectos
    Graficos
End Enum

Public NumAnim_Armas As Integer
Public NumAnim_Cabezas As Integer
Public NumAnim_Cascos As Integer
Public NumAnim_Cuerpos As Integer
Public NumAnim_Escudos As Integer
Public NumAnim_Efectos As Integer

Public FrmMainCaption As String
Public TileEngine As clsTileEngine
Public Resource As clsRecursosBender

'Directorios de graficos, init y exportaciones
Public AppPNG As Boolean
Public AppGraficos As String
Public AppInit As String
Public AppExpo As String

'Primera funcion que se ejecuta cuando iniciamos el programa
Sub Main()

'[DETECCIÓN DE PATHS]
'Explicación: Lo que hace esto es verificar si las carpetas Graficos, Init y Expo son correctas. Si no lo estan sigue preguntando y dice "Paths Incorrectos."
'[INICIAMOS INTERFAZ]
    Load frmMain
    FrmMainCaption = "PlusIndex - Desarrollado por MaTeO v" & App.Major & "." & App.Minor & "." & App.Revision
    frmMain.Caption = FrmMainCaption
    '[/INICIAMOS INTERFAZ]
LoopPaths:
    'Tiramos algo de facha para empezar :P
    frmDirectory.Caption = "Directorios"
    If Not Detect_Paths Then
        frmDirectory.Show vbModal
        If Not Detect_Paths Then
            If frmDirectory.Continue Then
                MsgBox "Directorios invalidos."
                GoTo LoopPaths
            Else
                End
            End If
        End If
    End If
    '[/DETECCIÓN DE PATHS]
    
    FirstRun = True

    '[INICIALIZAMOS VARIABLES]
    frmCargando.Show
    
    If CheckEntropia Then
        Debug.Print "Se registró Entropia.dll"
    End If
    
    frmCargando.lblLoading.Caption = "Inicializando el motor gráfico..."

    'Iniciamos el TileEngine
    Set TileEngine = New clsTileEngine
    Call TileEngine.Initialize

    Set Resource = New clsRecursosBender
    Resource.Initialize

    '[/INICIALIZAMOS VARIABLES]
    Unload frmCargando
    frmMain.Show
    frmMain.Enabled = True
    Call TileEngine.StartGameLoop    '[INICIAMOS A CORRER TODO]
    
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
    strBuf = String(255, 0)
    lngSize = 255
    Retval = GetSystemDirectoryA(strBuf, lngSize)
    strBuf = Left(strBuf, Retval)
    ObtenerDirectorioSO = strBuf

    If FileExist(ObtenerDirectorioSO & "\..\SysWOW64\", vbDirectory) Then
        ObtenerDirectorioSO = ObtenerDirectorioSO & "\..\SysWOW64"
    End If

End Function

Public Function CheckEntropia() As Boolean
    
    If Not FileExist(ObtenerDirectorioSO & "/Entropia.dll", vbArchive) Then
        If FileExist(App.Path & "/Entropia.dll", vbArchive) Then
            Call mCopyFile(App.Path & "/Entropia.dll", ObtenerDirectorioSO & "/Entropia.dll")
            Call Shell("regsvr32 """ & ObtenerDirectorioSO & "/Entropia.dll" & """ /s")
            CheckEntropia = True
        Else
            MsgBox "No se encuentra la librería Entropia.dll en la carpeta " & App.Path
            CheckEntropia = False
            End
        End If
    End If

End Function

Public Function Detect_Paths() As Boolean
    AppPNG = IIf(modFunctions.Load_Settings("AppPNG") = "1", True, False)
    AppGraficos = modFunctions.Load_Settings("AppGraficos")
    AppInit = modFunctions.Load_Settings("AppInit")
    AppExpo = modFunctions.Load_Settings("AppExpo")
    
    Detect_Paths = FileExist(AppGraficos, vbDirectory) And FileExist(AppInit, vbDirectory) And FileExist(AppExpo, vbDirectory)
    Detect_Paths = Len(AppGraficos) <> 0 And Len(AppInit) <> 0 And Len(AppExpo) <> 0
End Function
Public Function EraseArrayInteger(ByRef ElArray() As Integer)
    Dim max As Integer
    Dim min As Integer
    Dim i As Integer
    max = UBound(ElArray)
    min = LBound(ElArray)
    For i = min To max
        ElArray(i) = 0
    Next i
End Function


Public Function Error(ByVal desc As String) As String

    MsgBox desc
    
End Function
