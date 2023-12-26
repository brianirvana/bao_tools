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
   On Error GoTo Main_Error

10        Load frmMain
20        FrmMainCaption = "PlusIndex - By Mateo & About v" & App.Major & "." & App.Minor & "." & App.Revision
30        frmMain.Caption = FrmMainCaption
          '[/INICIAMOS INTERFAZ]
LoopPaths:
          'Tiramos algo de facha para empezar :P
40        frmDirectory.Caption = "Directorios"
50        If Not Detect_Paths Then
60            frmDirectory.Show vbModal
70            If Not Detect_Paths Then
80                If frmDirectory.Continue Then
90                    MsgBox "Directorios invalidos."
100                   GoTo LoopPaths
110               Else
120                   End
130               End If
140           End If
150       End If
          '[/DETECCIÓN DE PATHS]
          
160       FirstRun = True

          '[INICIALIZAMOS VARIABLES]
170       frmCargando.Show
          
180       If CheckEntropia Then
190           Debug.Print "Se registró Entropia.dll"
200       End If
          
210       frmCargando.lblLoading.Caption = "Inicializando el motor gráfico..."

          'Iniciamos el TileEngine
220       Set TileEngine = New clsTileEngine
230       Call TileEngine.Initialize

240       Set Resource = New clsRecursosBender
250       Resource.Initialize

          '[/INICIALIZAMOS VARIABLES]
260       Unload frmCargando
270       frmMain.Show
280       frmMain.Enabled = True
290       Call TileEngine.StartGameLoop    '[INICIAMOS A CORRER TODO]

   On Error GoTo 0
   Exit Sub

Main_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure Main of Módulo modGeneral Linea: " & Erl())
          
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

10        strBuf = String(255, 0)
20        lngSize = 255
30        Retval = GetSystemDirectoryA(strBuf, lngSize)
40        strBuf = Left(strBuf, Retval)
50        ObtenerDirectorioSO = strBuf

60        If FileExist(ObtenerDirectorioSO & "\..\SysWOW64\", vbDirectory) Then
70            ObtenerDirectorioSO = ObtenerDirectorioSO & "\..\SysWOW64"
80        End If

   On Error GoTo 0
   Exit Function

ObtenerDirectorioSO_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure ObtenerDirectorioSO of Módulo modGeneral Linea: " & Erl())

End Function

Public Function CheckEntropia() As Boolean
          
   On Error GoTo CheckEntropia_Error

10        If Not FileExist(ObtenerDirectorioSO & "/Entropia.dll", vbArchive) Then
20            If FileExist(App.Path & "/Entropia.dll", vbArchive) Then
30                Call mCopyFile(App.Path & "/Entropia.dll", ObtenerDirectorioSO & "/Entropia.dll")
40                Call Shell("regsvr32 """ & ObtenerDirectorioSO & "/Entropia.dll" & """ /s")
50                CheckEntropia = True
60            Else
70                MsgBox "No se encuentra la librería Entropia.dll en la carpeta " & App.Path
80                CheckEntropia = False
90                End
100           End If
110       End If

   On Error GoTo 0
   Exit Function

CheckEntropia_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure CheckEntropia of Módulo modGeneral Linea: " & Erl())

End Function

Public Function Detect_Paths() As Boolean
   On Error GoTo Detect_Paths_Error

10        AppPNG = IIf(modFunctions.Load_Settings("AppPNG") = "1", True, False)
20        AppGraficos = modFunctions.Load_Settings("AppGraficos")
30        AppInit = modFunctions.Load_Settings("AppInit")
40        AppExpo = modFunctions.Load_Settings("AppExpo")
          
50        Detect_Paths = FileExist(AppGraficos, vbDirectory) And FileExist(AppInit, vbDirectory) And FileExist(AppExpo, vbDirectory)
60        Detect_Paths = Len(AppGraficos) <> 0 And Len(AppInit) <> 0 And Len(AppExpo) <> 0

   On Error GoTo 0
   Exit Function

Detect_Paths_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure Detect_Paths of Módulo modGeneral Linea: " & Erl())
End Function
Public Function EraseArrayInteger(ByRef ElArray() As Integer)
          Dim max As Integer
          Dim min As Integer
          Dim i As Integer
   On Error GoTo EraseArrayInteger_Error

10        max = UBound(ElArray)
20        min = LBound(ElArray)
30        For i = min To max
40            ElArray(i) = 0
50        Next i

   On Error GoTo 0
   Exit Function

EraseArrayInteger_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure EraseArrayInteger of Módulo modGeneral Linea: " & Erl())
End Function


Public Function Error(ByVal desc As String) As String

    MsgBox desc
    
End Function
