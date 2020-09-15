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
On Error GoTo err:
     Dim Paths(6) As String
     Paths(0) = "Graficos.ind"
     Paths(1) = "Cabezas.ind"
     Paths(2) = "Personajes.ind"
     Paths(3) = "Cascos.ind"
     Paths(4) = "Escudos.dat"
     Paths(5) = "Armas.dat"
     Paths(6) = "Fxs.ind"
     DoEvents
     frmCargando.lblLoading.Caption = "Cargando LoadGrhData..."
1    Call LoadGrhData(AppInit & "\" & Paths(0))
     Sleep 100: DoEvents
     
     frmCargando.lblLoading.Caption = "Cargando Cabezas..."
2    Call CargarCabezas(AppInit & "\" & Paths(1))
     Sleep 100: DoEvents
     
     frmCargando.lblLoading.Caption = "Cargando Cuerpos..."
3    Call CargarCuerpos(AppInit & "\" & Paths(2))
     Sleep 100: DoEvents
     
     frmCargando.lblLoading.Caption = "Cargando Cascos..."
4    Call CargarCascos(AppInit & "\" & Paths(3))
     Sleep 100: DoEvents
     
     frmCargando.lblLoading.Caption = "Cargando Escudos..."
5    Call CargarAnimEscudos(AppInit & "\" & Paths(4))
     Sleep 100: DoEvents
     
     frmCargando.lblLoading.Caption = "Cargando Armas..."
6    Call CargarAnimArmas(AppInit & "\" & Paths(5))
     Sleep 100: DoEvents
     
     frmCargando.lblLoading.Caption = "Cargando FXs..."
7    Call CargarFxs(AppInit & "\" & Paths(6))
     Sleep 100: DoEvents
     
     Call LoadResourceInterface
     
     frmCargando.lblLoading.Caption = "Listo!"
     Sleep 500: DoEvents
     frmMain.Caption = FrmMainCaption
Exit Sub
err:
    Dim Index As Integer
    Index = Erl() - 1
    MsgBox "No se ha podido cargar correctamente el archivo " & Paths(Index)
End Sub
Public Sub Index_To_Expo()
Dim i As Long
Dim J As Long
Dim nfile As Integer
Dim Line As String
nfile = FreeFile

frmMain.Caption = FrmMainCaption & " - Exportando..."

If FileExist(AppExpo & "\Graficos.ini", vbArchive) Then Kill AppExpo & "\Graficos.ini"

Open AppExpo & "\Graficos.ini" For Output As #nfile
    Print #nfile, "'ADVERTENCIA: No tener este archivo abierto cuando se vaya a trabajar con el INDEXADOR."
    Print #nfile, "[INIT]"
    Print #nfile, "CountGrh=" & grhcount
    Print #nfile, ""
    
    Print #nfile, "[GRAFICOS]"
For i = 1 To grhcount
    Print #nfile, ProcessGraphicBinToLine(i)
Next i

Close #nfile

frmMain.Caption = FrmMainCaption & " - Listo!"
Sleep 500
frmMain.Caption = FrmMainCaption
End Sub

Public Sub Save_Indexs()
    frmCargando.lblLoading.Caption = "Guardando GrhData..."
    Call SaveGrhData(AppInit & "\Graficos.ind")
    frmCargando.lblLoading.Caption = "Listo!"
    'Call LoadResourceInterface
End Sub

Public Sub Expo_To_Index()
On Error GoTo err:
    Dim nfile As Integer
    Dim sValue As String
    
    Dim i As Long
    frmMain.Caption = FrmMainCaption & " - Indexando..."
    DoEvents
    grhcount = Val(GetVar(AppExpo & "\Graficos.ini", "INIT", "CountGrh"))
    If grhcount = 0 Then
        MsgBox "Graficos.ini invalidos. Verifiquelos ya que no se encuentra el ""CountGrh""."
        Exit Sub
    End If
    ReDim GrhData(1 To grhcount) As GrhData
    
    nfile = FreeFile ' obtenemos un canal
    Open AppExpo & "\Graficos.ini" For Input As #nfile
        While Not EOF(nfile)
            Line Input #nfile, sValue
            If Len(sValue) Then Call ProcessGraphicLineToBin(sValue)
        Wend
    Close
    'CopyMemory GrhData(1), GrhTemp(1), NumberBytes
    frmCargando.lblLoading.Caption = "Guardando GrhData..."
    Call SaveGrhData(AppInit & "\Graficos.ind")
    frmCargando.lblLoading.Caption = "Listo!"
    Call LoadResourceInterface
frmCargando.lblLoading.Caption = "Listo!"
Sleep 500
frmMain.Caption = FrmMainCaption
Exit Sub
err:
frmCargando.lblLoading.Caption = "Recuperandose del error..."
MsgBox "Error en la sintaxis de la linea: " & vbCrLf & sValue
ReDim GrhData(0)
Call LoadGrhData(AppInit & "\Graficos.ind")
frmCargando.lblLoading.Caption = "Listo!"
Sleep 500
frmMain.Caption = FrmMainCaption
End Sub
Private Function AddText(ByRef Message As String, ByRef Text As String)
    If Len(Message) = 0 Then
        Message = Message & Text
    Else
        Message = Message & ", " & Text
    End If
End Function
Private Function LoadGrhData(Path As String) As Boolean
'On Error GoTo ErrorHandler
    Dim Errors As String
    Dim TempError As String
    Dim isError As Boolean
    
    Dim Grh As Long
    Dim Frame As Long
    Dim handle As Integer
    Dim fileVersion As Long
    
    'Open files
    handle = FreeFile()
    Open Path For Binary Access Read As handle
    Seek #1, 1
    
    'Get file version
    Get handle, , fileVersion
    
    'Get number of grhs
    Get handle, , grhcount
    
    'Resize arrays
    ReDim GrhData(1 To grhcount) As GrhData
    
    While Not EOF(handle)
        Get handle, , Grh
        TempError = ""
        If Grh <> 0 Then
            With GrhData(Grh)
                'Get number of frames
                Get handle, , .NumFrames
                If .NumFrames <= 0 Then
                    .NumFrames = 1 'GoTo ErrorHandler
                    isError = True
                    Call AddText(TempError, "NumFrames")
                End If
                
                ReDim .Frames(1 To GrhData(Grh).NumFrames)
                
                If .NumFrames > 1 Then
                    'Read a animation GRH set
                    For Frame = 1 To .NumFrames
                        Get handle, , .Frames(Frame)
                        If .Frames(Frame) <= 0 Or .Frames(Frame) > grhcount Then
                            .Frames(Frame) = 1
                            isError = True
                            Call AddText(TempError, "Frame" & Frame)
                        End If
                    Next Frame
                    
                    Get handle, , .speed
                    
                    If .speed <= 0 Then
                        .speed = 1
                        isError = True
                        Call AddText(TempError, "Speed")
                    End If
                    
                    'Compute width and height
                    .pixelHeight = GrhData(.Frames(1)).pixelHeight
                    If .pixelHeight <= 0 Then
                        .pixelHeight = 1
                        isError = True
                        Call AddText(TempError, "pixelHeight")
                    End If
                    
                    .pixelWidth = GrhData(.Frames(1)).pixelWidth
                    If .pixelWidth <= 0 Then
                        .pixelWidth = 1
                        isError = True
                        Call AddText(TempError, "pixelWidth")
                    End If
                    
                    .TileWidth = GrhData(.Frames(1)).TileWidth
                    If .TileWidth <= 0 Then
                        .TileWidth = 1
                        isError = True
                        Call AddText(TempError, "TileWidth")
                    End If
                    
                    .TileHeight = GrhData(.Frames(1)).TileHeight
                    If .TileHeight <= 0 Then
                        .TileHeight = 1
                        isError = True
                        Call AddText(TempError, "TileHeight")
                    End If
                Else
                    'Read in normal GRH data
                    Get handle, , .FileNum
                    If .FileNum <= 0 Then
                        .FileNum = 1
                        isError = True
                        Call AddText(TempError, "FileNum")
                    End If
                    
                    Get handle, , GrhData(Grh).sX
                    If .sX < 0 Then
                        .sX = 1
                        isError = True
                        Call AddText(TempError, "sX")
                    End If
                    
                    Get handle, , .sY
                    If .sY < 0 Then
                        .sY = 1
                        isError = True
                        Call AddText(TempError, "sY")
                    End If
                    
                    Get handle, , .pixelWidth
                    If .pixelWidth <= 0 Then
                        .pixelWidth = 1
                        isError = True
                        Call AddText(TempError, "pixelWidth")
                    End If
                    
                    Get handle, , .pixelHeight
                    If .pixelHeight <= 0 Then
                        .pixelHeight = 1
                        isError = True
                        Call AddText(TempError, "pixelHeight")
                    End If
                    
                    'Compute width and height
                    .TileWidth = .pixelWidth / 32
                    .TileHeight = .pixelHeight / 32
                    
                    .Frames(1) = Grh
                End If
            End With
        End If
        
        If isError Then
            Errors = Errors & "Grh " & Grh & ": " & TempError & vbCrLf
            isError = False
        End If
        
    Wend
    
    Close handle
    
    LoadGrhData = True
    If Len(Errors) > 0 Then
        MsgBox "Errores detectados: " & Errors & " " & Grh
    End If
Exit Function

ErrorHandler:
    Debug.Print Grh
    LoadGrhData = False
    Close handle
    
End Function

Private Function SaveGrhData(Path As String) As Boolean

10    On Error GoTo ErrorHandler
          Dim Grh As Long
          Dim Frame As Long
          Dim handle As Integer
          Dim fileVersion As Long

20        If FileExist(Path, vbNormal) Then Kill Path
          'Open files
30        handle = FreeFile()
40        Open Path For Binary Access Write As handle
50        Seek #1, 1
          
          'Get file version
60        Put handle, , fileVersion
          
          'Get number of grhs
70        Put handle, , grhcount
          
80        For Grh = 1 To grhcount
90            With GrhData(Grh)
100               If .NumFrames > 0 Then
110                   Put handle, , Grh
                      
                      'Get number of frames
120                   Put handle, , .NumFrames
                      
130                   If .NumFrames > 1 Then
                          'Read a animation GRH set
140                       For Frame = 1 To .NumFrames
150                           Put handle, , .Frames(Frame)
160                       Next Frame
                          
170                       Put handle, , .speed
180                   Else
                          'Read in normal GRH data
190                       Put handle, , .FileNum
          
200                       Put handle, , GrhData(Grh).sX
                          
210                       Put handle, , .sY
          
220                       Put handle, , .pixelWidth
          
230                       Put handle, , .pixelHeight
240                   End If
250               End If
260           End With
270       Next Grh
280       Close handle
          
290       SaveGrhData = True
300   Exit Function

ErrorHandler:
310       SaveGrhData = False
          MsgBox err.Description

End Function

Private Sub CargarCabezas(Path As String)
    Dim n As Integer
    Dim i As Long
    Dim Miscabezas() As tIndiceCabeza
    
    n = FreeFile()
    Open Path For Binary Access Read As #n
    
    'cabecera
    Get #n, , MiCabecera
    
    'num de cabezas
    Get #n, , Numheads
    
    'Resize array
    ReDim HeadData(0 To Numheads) As HeadData
    ReDim Miscabezas(0 To Numheads) As tIndiceCabeza
    
    For i = 1 To Numheads
        Get #n, , Miscabezas(i)
        
        If Miscabezas(i).Head(1) Then
            Call InitGrh(HeadData(i).Head(1), Miscabezas(i).Head(1), 0)
            Call InitGrh(HeadData(i).Head(2), Miscabezas(i).Head(2), 0)
            Call InitGrh(HeadData(i).Head(3), Miscabezas(i).Head(3), 0)
            Call InitGrh(HeadData(i).Head(4), Miscabezas(i).Head(4), 0)
        End If
    Next i
    
    Close #n
End Sub

Private Sub CargarCascos(Path As String)
    Dim n As Integer
    Dim i As Long

    Dim Miscabezas() As tIndiceCabeza
    
    n = FreeFile()
    Open Path For Binary Access Read As #n
    
    'cabecera
    Get #n, , MiCabecera
    
    'num de cabezas
    Get #n, , NumCascos
    
    'Resize array
    ReDim CascoAnimData(0 To NumCascos) As HeadData
    ReDim Miscabezas(0 To NumCascos) As tIndiceCabeza
    
    For i = 1 To NumCascos
        Get #n, , Miscabezas(i)
        
        If Miscabezas(i).Head(1) Then
            Call InitGrh(CascoAnimData(i).Head(1), Miscabezas(i).Head(1), 0)
            Call InitGrh(CascoAnimData(i).Head(2), Miscabezas(i).Head(2), 0)
            Call InitGrh(CascoAnimData(i).Head(3), Miscabezas(i).Head(3), 0)
            Call InitGrh(CascoAnimData(i).Head(4), Miscabezas(i).Head(4), 0)
        End If
    Next i
    
    Close #n
End Sub

Private Sub CargarCuerpos(Path As String)
          Dim n As Integer
          Dim i As Long
          Dim MisCuerpos() As tIndiceCuerpo
          
10       On Error GoTo CargarCuerpos_Error

20        n = FreeFile()
30        Open Path For Binary Access Read As #n
          
          'cabecera
40        Get #n, , MiCabecera
          
          'num de cabezas
50        Get #n, , NumBodies
          
          'Resize array
60        ReDim BodyData(0 To NumBodies) As BodyData
70        ReDim MisCuerpos(0 To NumBodies) As tIndiceCuerpo
          
80        For i = 1 To NumBodies
90            Get #n, , MisCuerpos(i)
              
100           If MisCuerpos(i).Body(1) Then
110               InitGrh BodyData(i).Walk(1), MisCuerpos(i).Body(1), 0
120               InitGrh BodyData(i).Walk(2), MisCuerpos(i).Body(2), 0
130               InitGrh BodyData(i).Walk(3), MisCuerpos(i).Body(3), 0
140               InitGrh BodyData(i).Walk(4), MisCuerpos(i).Body(4), 0
                  
150               BodyData(i).HeadOffset.X = MisCuerpos(i).HeadOffsetX
160               BodyData(i).HeadOffset.Y = MisCuerpos(i).HeadOffsetY
170           End If
180       Next i
          
190       Close #n

200      On Error GoTo 0
210      Exit Sub

CargarCuerpos_Error:

220       MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure CargarCuerpos of Módulo de clase clsRecursosBender " & Erl() & "-" & i
End Sub


Sub CargarAnimEscudos(ByRef arch As String)
    Dim loopc As Long

    NumEscudosAnims = Val(GetVar(arch, "INIT", "NumEscudos"))
    
    ReDim ShieldAnimData(1 To NumEscudosAnims) As ShieldAnimData
    
    Dim DirNum As Integer
    Dim i As Long
    
    For loopc = 1 To NumEscudosAnims
        For i = 1 To 4
            DirNum = Val(GetVar(arch, "ESC" & loopc, "Dir" & i))
            If DirNum > 0 Then InitGrh ShieldAnimData(loopc).ShieldWalk(i), DirNum, 0
        Next i
    Next loopc
End Sub

Sub CargarAnimArmas(ByRef arch As String)
    Dim loopc As Long
    
    NumWeaponAnims = Val(GetVar(arch, "INIT", "NumArmas"))
    
    ReDim WeaponAnimData(1 To NumWeaponAnims) As WeaponAnimData
    
    Dim i As Long
    Dim DirNum As Integer
    
    For loopc = 1 To NumWeaponAnims
        For i = 1 To 4
            DirNum = Val(GetVar(arch, "ARMA" & loopc, "Dir" & i))
            If DirNum > 0 Then InitGrh WeaponAnimData(loopc).WeaponWalk(i), DirNum, 0
        Next i
    Next loopc
End Sub
Sub CargarFxs(ByRef arch As String)
    Dim n As Integer
    Dim i As Long
    
    n = FreeFile()
    Open arch For Binary Access Read As #n
    
    'cabecera
    Get #n, , MiCabecera
    
    'num de cabezas
    Get #n, , NumFxs
    
    'Resize array
    ReDim FxData(1 To NumFxs) As tIndiceFx
    
    For i = 1 To NumFxs
        Get #n, , FxData(i)
    Next i
    
    Close #n
End Sub
Sub SaveFxs(ByRef arch As String)
    Dim n As Integer
    Dim i As Long
    
    n = FreeFile()
    
    If FileExist(arch, vbArchive) Then Kill arch
    
    MiCabecera.desc = "Copyright © Bender Games"
    
    Open arch For Binary Access Write As #n
    
        'cabecera
        Put #n, , MiCabecera
    
        'num de cabezas
        Put #n, , NumFxs
    
        For i = 1 To NumFxs
            Put #n, , FxData(i)
        Next i
    
    Close #n
End Sub
Sub SaveAnimArmas(ByRef arch As String)
    Dim loopc As Long
    
    Call WriteVar(arch, "INIT", "NumArmas", CStr(NumWeaponAnims))
    
    Dim i As Long
    For loopc = 1 To NumWeaponAnims
        For i = 1 To 4
            Call WriteVar(arch, "ARMA" & loopc, "Dir" & i, CStr(WeaponAnimData(loopc).WeaponWalk(i).GrhIndex))
        Next i
    Next loopc
End Sub
Sub SaveAnimEscudos(ByRef arch As String)
    Dim loopc As Long

    Call WriteVar(arch, "INIT", "NumEscudos", CStr(NumEscudosAnims))
        
    Dim i As Long
    
    For loopc = 1 To NumEscudosAnims
        For i = 1 To 4
            Call WriteVar(arch, "ESC" & loopc, "Dir" & i, CStr(ShieldAnimData(loopc).ShieldWalk(i).GrhIndex))
        Next i
    Next loopc
End Sub



Sub SaveCabezas(Path As String)
    Dim n As Integer
    Dim i As Long
    Dim J As Long
    Dim Miscabezas As tIndiceCabeza
    
    
    MiCabecera.desc = "Copyright © Bender Games"
    
    n = FreeFile()
    Open Path For Binary Access Write As #n
    
    'cabecera
    Put #n, , MiCabecera
    
    'num de cabezas
    Put #n, , Numheads
    
    For i = 1 To Numheads
        For J = 1 To 4
            Miscabezas.Head(J) = HeadData(i).Head(J).GrhIndex
        Next J
        
        Put #n, , Miscabezas
    Next i
    
    Close #n
End Sub

Sub SaveCascos(Path As String)
    Dim n As Integer
    Dim i As Long
    Dim J As Byte
    

    Dim Miscabezas As tIndiceCabeza
    
    n = FreeFile()
    Open Path For Binary Access Write As #n
    
    
    MiCabecera.desc = "Copyright © Bender Games"
    'cabecera
    Put #n, , MiCabecera
    
    'num de cabezas
    Put #n, , NumCascos
    
    For i = 1 To NumCascos
        For J = 1 To 4
            Miscabezas.Head(J) = CascoAnimData(i).Head(J).GrhIndex
        Next J
        Put #n, , Miscabezas
    Next i
    
    Close #n
End Sub
Sub SaveCuerpos(Path As String)
    Dim n As Integer
    Dim i As Long
    Dim J As Byte
    Dim MisCuerpos As tIndiceCuerpo
    
   On Error GoTo CargarCuerpos_Error

    n = FreeFile()
    MiCabecera.desc = "Copyright © Bender Games"
    
    Open Path For Binary Access Write As #n
    
    'cabecera
    Put #n, , MiCabecera
    
    'num de cabezas
    Put #n, , NumBodies
    
    
    For i = 1 To NumBodies
        For J = 1 To 4
            MisCuerpos.Body(J) = BodyData(i).Walk(J).GrhIndex
        Next J
        
        MisCuerpos.HeadOffsetX = BodyData(i).HeadOffset.X
        MisCuerpos.HeadOffsetY = BodyData(i).HeadOffset.Y
        
        Put #n, , MisCuerpos
    Next i
    
    Close #n

   On Error GoTo 0
   Exit Sub

CargarCuerpos_Error:

    MsgBox "Error " & err.Number & " (" & err.Description & ") in procedure CargarCuerpos of Módulo de clase clsRecursosBender " & Erl() & "-" & i
End Sub

Private Sub InitGrh(ByRef Grh As Grh, ByVal GrhIndex As Integer, Optional ByVal Started As Byte = 2)
'*****************************************************************
'Sets up a grh. MUST be done before rendering
'*****************************************************************
    Grh.GrhIndex = GrhIndex
    
    If Started = 2 Then
        If GrhData(Grh.GrhIndex).NumFrames > 1 Then
            Grh.Started = 1
        Else
            Grh.Started = 0
        End If
    Else
        'Make sure the graphic can be started
        If GrhData(Grh.GrhIndex).NumFrames = 1 Then Started = 0
        Grh.Started = Started
    End If
    
    
    If Grh.Started Then
        Grh.Loops = INFINITE_LOOPS
    Else
        Grh.Loops = 0
    End If
    
    Grh.FrameCounter = 1
    Grh.speed = GrhData(Grh.GrhIndex).speed
End Sub
