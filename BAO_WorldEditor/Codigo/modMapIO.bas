Attribute VB_Name = "modMapIO"
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
' modMapIO
'
' @remarks Funciones Especificas al trabajo con Archivos de Mapas
' @author gshaxor@gmail.com
' @version 0.1.15
' @date 20060602

Option Explicit

Global LeerNPCs                 As New clsIniReader

Public Type tCabecera          'Cabecera
    Desc                            As String * 255
    CrC                         As Long
    MagicWord                   As Long
End Type

Public GameHeader               As tCabecera



Private MapTitulo               As String    ' GS > Almacena el titulo del mapa para el .dat


Public Sub IniciarCabecera(ByRef Cabecera As tCabecera)
    Cabecera.Desc = "Copyright © Bender Games"
    Cabecera.CrC = Rnd * 100
    Cabecera.MagicWord = Rnd * 10
End Sub
''
' Obtener el tamaño de un archivo
'
' @param FileName Especifica el path del archivo
' @return   Nos devuelve el tamaño

Public Function FileSize(ByVal FileName As String) As Long
'*************************************************
'Author: Unkwown
'Last modified: 20/05/06
'*************************************************

    On Error GoTo FalloFile
    Dim nFileNum                As Integer
    Dim lFileSize               As Long

    nFileNum = FreeFile
    Open FileName For Input As nFileNum
    lFileSize = LOF(nFileNum)
    Close nFileNum
    FileSize = lFileSize

    Exit Function
FalloFile:
    FileSize = -1
End Function

''
' Nos dice si existe el archivo/directorio
'
' @param file Especifica el path
' @param FileType Especifica el tipo de archivo/directorio
' @return   Nos devuelve verdadero o falso

Public Function FileExist(ByVal File As String, ByVal FileType As VbFileAttribute) As Boolean
'*************************************************
'Author: Unkwown
'Last modified: 26/05/06
'*************************************************
    If LenB(Dir(File, FileType)) = 0 Then
        FileExist = False
    Else
        FileExist = True
    End If

End Function

''
' Abre un Mapa
'
' @param Path Especifica el path del mapa

Public Sub AbrirMapa(ByVal Path As String)
'*************************************************
'Author: ^[GS]^
'Last modified: 01/11/08
'*************************************************

    Call MapaV2_Cargar(Path)

End Sub

''
' Guarda el Mapa
'
' @param Path Especifica el path del mapa

Public Sub GuardarMapa(Optional Path As String)
'*************************************************
'Author: ^[GS]^
'Last modified: 01/11/08
'*************************************************

    frmMain.Dialog.CancelError = True
    On Error GoTo ErrHandler

    If LenB(Path) = 0 Then
        frmMain.ObtenerNombreArchivo True
        Path = frmMain.Dialog.FileName
        If LenB(Path) = 0 Then Exit Sub
    End If

    Call MapaV2_Guardar(Path)

ErrHandler:
End Sub

''
' Nos pregunta donde guardar el mapa en caso de modificarlo
'
' @param Path Especifica si existiera un path donde guardar el mapa

Public Sub DeseaGuardarMapa(Optional Path As String)
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************

    If MapInfo(CurMap).Changed = 1 Then
        If MsgBox(MSGMod, vbExclamation + vbYesNo) = vbYes Then
            GuardarMapa Path
        End If
    End If
End Sub


''
' Limpia todo el mapa a uno nuevo
'

Public Sub NuevoMapa()
'*************************************************
'Author: ^[GS]^
'Last modified: 21/05/06
'*************************************************



Dim LoopC                       As Integer
Dim Y                           As Integer
Dim X                           As Integer

    On Error GoTo NuevoMapa_Error

10  bAutoGuardarMapaCount = 0

    'frmMain.mnuUtirialNuevoFormato.Checked = True
20  frmMain.mnuReAbrirMapa.Enabled = False
30  frmMain.TimAutoGuardarMapa.Enabled = False
40  frmMain.lblMapVersion.Caption = 0

50  MapaCargado = False

60  For LoopC = 0 To frmMain.MapPest.Count - 1
70      frmMain.MapPest(LoopC).Enabled = False
80  Next

90  frmMain.MousePointer = 11

100 For Y = YMinMapSize To YMaxMapSize
110     For X = XMinMapSize To XMaxMapSize

            ' Capa 1
120         MapData(X, Y).Graphic(1).GrhIndex = 1

            ' Bloqueos
130         MapData(X, Y).Blocked = 0

            ' Capas 2, 3 y 4
140         MapData(X, Y).Graphic(2).GrhIndex = 0
150         MapData(X, Y).Graphic(3).GrhIndex = 0
160         MapData(X, Y).Graphic(4).GrhIndex = 0

            ' NPCs
170         If MapData(X, Y).NPCIndex > 0 Then
180             EraseChar MapData(X, Y).CharIndex
190             MapData(X, Y).NPCIndex = 0
200         End If

            ' OBJs
210         MapData(X, Y).OBJInfo.objindex = 0
220         MapData(X, Y).OBJInfo.Amount = 0
230         MapData(X, Y).ObjGrh.GrhIndex = 0

            ' Translados
240         MapData(X, Y).TileExit.Map = 0
250         MapData(X, Y).TileExit.X = 0
260         MapData(X, Y).TileExit.Y = 0

            ' Triggers
270         MapData(X, Y).Trigger = 0

280         InitGrh MapData(X, Y).Graphic(1), 1
290     Next X
300 Next Y

310 MapInfo(CurMap).MapVersion = 0
320 MapInfo(CurMap).Name = ""
330 'MapInfo.Music = 0
340 'MapInfo.PK = True
350 'MapInfo.MagiaSinEfecto = 0
360 'MapInfo.InviSinEfecto = 0
370 'MapInfo.ResuSinEfecto = 0
380 'MapInfo.Terreno = "BOSQUE"
390 'MapInfo.Zona = "CAMPO"
400 'MapInfo.Restringir = "No"
410 MapInfo(CurMap).NoEncriptarMP = 0

420 Call MapInfo_Actualizar

430 bRefreshRadar = True       ' Radar

    'Set changed flag
440 MapInfo(CurMap).Changed = 0
450 frmMain.MousePointer = 0

    ' Vacio deshacer
460 modEdicion.Deshacer_Clear

470 MapaCargado = True
480 EngineRun = True

490 frmMain.SetFocus

    On Error GoTo 0
    Exit Sub

NuevoMapa_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento NuevoMapa de Módulo modMapIO línea: " & Erl())

End Sub

Public Sub GrabarMapa(ByVal MAPFILE As String)
'***************************************************
'Author: Unknown
'Last Modification: 28/10/2010
'10/08/2010 - Pato: Implemento el clsByteBuffer para el grabado de mapas
'28/10/2010:ZaMa - Ahora no se hace backup de los pretorianos.
'***************************************************

Dim EsPretoriano                As Boolean
Dim Map                         As Byte
Dim ByFlags                     As Byte
Dim FreeFileMap                 As Long
Dim FreeFileInf                 As Long
Dim Y                           As Long
Dim X                           As Long
Dim LoopC                       As Long
Dim tMap                        As String
Dim MapWriter                   As clsByteBuffer
Dim InfWriter                   As clsByteBuffer
Dim IniManager                  As clsIniReader

    If FileExist(MAPFILE, vbNormal) = True Then
        If MsgBox("¿Desea sobrescribir " & MAPFILE & "?", vbCritical + vbYesNo) = vbNo Then
            Exit Sub
        Else
            Kill MAPFILE
        End If
    End If

    frmMain.MousePointer = 11

    Map = Val(Right$(MAPFILE, 5))
    tMap = Left$(MAPFILE, Len(MAPFILE) - 4) & ".inf"
    Set MapWriter = New clsByteBuffer
    Set InfWriter = New clsByteBuffer
    Set IniManager = New clsIniReader

    If FileExist(MAPFILE, vbNormal) Then
        Kill MAPFILE
    End If

    ' y borramos el .inf tambien
    If FileExist(Left$(MAPFILE, Len(MAPFILE) - 4) & ".inf", vbNormal) = True Then
        Kill Left(MAPFILE, Len(MAPFILE) - 4) & ".inf"
    End If

    'Open .map file
    FreeFileMap = FreeFile
    Open MAPFILE For Binary As FreeFileMap

    Call MapWriter.initializeWriter(FreeFileMap)

    Call MapWriter.initializeWriter(FreeFileMap)

    'Open .inf file
    FreeFileInf = FreeFile
    Open tMap For Binary As FreeFileInf

    Call InfWriter.initializeWriter(FreeFileInf)

    'map Header
    Call MapWriter.putInteger(MapInfo(CurMap).MapVersion)

    Call MapWriter.putString(GameHeader.Desc, False)
    Call MapWriter.putLong(GameHeader.CrC)
    Call MapWriter.putLong(GameHeader.MagicWord)

    Call MapWriter.putDouble(0)

    'inf Header
    Call InfWriter.putDouble(0)
    Call InfWriter.putInteger(0)

    'Write .map file
    For Y = YMinMapSize To YMaxMapSize
        For X = XMinMapSize To XMaxMapSize
            With MapData(X, Y)
                ByFlags = 0

                If .Blocked Then ByFlags = ByFlags Or 1
                If .Graphic(2).GrhIndex > 0 Then ByFlags = ByFlags Or 2
                If .Graphic(3).GrhIndex > 0 Then ByFlags = ByFlags Or 4
                If .Graphic(4).GrhIndex > 0 Then ByFlags = ByFlags Or 8
                If .Trigger Then ByFlags = ByFlags Or 16

                Call MapWriter.putByte(ByFlags)

                Call MapWriter.putInteger(.Graphic(1).GrhIndex)

                For LoopC = 2 To 4
                    If .Graphic(LoopC).GrhIndex Then Call MapWriter.putInteger(.Graphic(LoopC).GrhIndex)
                Next LoopC

                If .Trigger Then Call MapWriter.putInteger(CInt(.Trigger))

                '.inf file
                ByFlags = 0

                If .TileExit.Map Then ByFlags = ByFlags Or 1

                If .NPCIndex Then
                    ByFlags = ByFlags Or 2
                End If

                If .OBJInfo.objindex Then ByFlags = ByFlags Or 4

                Call InfWriter.putByte(ByFlags)

                If .TileExit.Map Then
                    'If .TileExit.X = 10 Then Stop
                    Call InfWriter.putInteger(.TileExit.Map)
                    Call InfWriter.putInteger(.TileExit.X)
                    Call InfWriter.putInteger(.TileExit.Y)
                End If

                '[/About] ESTO ES LO QUE ME BUGEA TODO? LPM!?
                If ByFlags And 2 Then Call InfWriter.putInteger(.NPCIndex)

                If .OBJInfo.objindex Then
                    Call InfWriter.putInteger(.OBJInfo.objindex)
                    Call InfWriter.putInteger(.OBJInfo.Amount)
                End If
            End With
        Next X
    Next Y

    Call MapWriter.saveBuffer
    Call InfWriter.saveBuffer

    'Close .map file
    Close FreeFileMap

    'Close .inf file
    Close FreeFileInf

    Set MapWriter = Nothing
    Set InfWriter = Nothing

    With MapInfo(CurMap)
        'write .dat file
        Call IniManager.ChangeValue("Mapa" & CurMap, "Name", .Name)
        'Call IniManager.ChangeValue("Mapa" & CurMap, "MusicNum", .Music)
        'Call IniManager.ChangeValue("Mapa" & CurMap, "StartPos", .StartPos.Map & "-" & .StartPos.X & "-" & .StartPos.Y)
        Call IniManager.ChangeValue("Mapa" & CurMap, "BackUp", str(.Backup))
        Call IniManager.ChangeValue("Mapa" & CurMap, "NoEncriptarMP", .NoEncriptarMP)
        Call IniManager.DumpFile(MAPFILE & ".dat")
    End With

    Set IniManager = Nothing

    Call Pestañas(MAPFILE)

    'write .dat file
    MAPFILE = Left$(MAPFILE, Len(MAPFILE) - 4) & ".dat"
    MapInfo_Guardar MAPFILE

    'Change mouse icon
    frmMain.MousePointer = 0
    MapInfo(CurMap).Changed = 0

End Sub

' Guardar Mapa con el formato V2
' @param SaveAs Especifica donde guardar el mapa

Public Sub MapaV2_Guardar(ByVal SaveAs As String)
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************

    Call GrabarMapa(SaveAs)
    Exit Sub

    Dim ByFlags                 As Byte
    Dim FreeFileMap             As Long
    Dim FreeFileInf             As Long
    Dim LoopC                   As Long
    Dim TempInt                 As Integer
    Dim Y                       As Long
    Dim X                       As Long

    On Error GoTo ErrorSave

    If FileExist(SaveAs, vbNormal) = True Then
        If MsgBox("¿Desea sobrescribir " & SaveAs & "?", vbCritical + vbYesNo) = vbNo Then
            Exit Sub
        Else
            Kill SaveAs
        End If
    End If

    frmMain.MousePointer = 11

    ' y borramos el .inf tambien
    If FileExist(Left(SaveAs, Len(SaveAs) - 4) & ".inf", vbNormal) = True Then
        Kill Left(SaveAs, Len(SaveAs) - 4) & ".inf"
    End If

    'Open .map file
    FreeFileMap = FreeFile
    Open SaveAs For Binary As FreeFileMap
    Seek FreeFileMap, 1

    SaveAs = Left(SaveAs, Len(SaveAs) - 4)
    SaveAs = SaveAs & ".inf"

    'Open .inf file
    FreeFileInf = FreeFile
    Open SaveAs For Binary As FreeFileInf
    Seek FreeFileInf, 1

    'map Header

    ' Version del Mapa
    If frmMain.lblMapVersion.Caption < 32767 Then
        frmMain.lblMapVersion.Caption = frmMain.lblMapVersion + 1
        frmMapInfo.txtMapVersion = frmMain.lblMapVersion.Caption
    End If
    Put FreeFileMap, , CInt(frmMain.lblMapVersion.Caption)
    Put FreeFileMap, , MiCabecera
    Put FreeFileMap, , TempInt
    Put FreeFileMap, , TempInt
    Put FreeFileMap, , TempInt
    Put FreeFileMap, , TempInt

    'inf Header
    Put FreeFileInf, , TempInt
    Put FreeFileInf, , TempInt
    Put FreeFileInf, , TempInt
    Put FreeFileInf, , TempInt
    Put FreeFileInf, , TempInt

    'Write .map file
    For Y = YMinMapSize To YMaxMapSize
        For X = XMinMapSize To XMaxMapSize
            ByFlags = 0

            With MapData(X, Y)

                If X > 8 And X < 1192 And Y > 6 And Y < 1194 Then

                    If .Blocked = 1 Then ByFlags = ByFlags Or 1
                    If .Graphic(2).GrhIndex Then ByFlags = ByFlags Or 2
                    If .Graphic(3).GrhIndex Then ByFlags = ByFlags Or 4
                    If .Graphic(4).GrhIndex Then ByFlags = ByFlags Or 8
                    If .Trigger Then ByFlags = ByFlags Or 16

                    Put FreeFileMap, , ByFlags

                    Put FreeFileMap, , .Graphic(1).GrhIndex

                    For LoopC = 2 To 4
                        If .Graphic(LoopC).GrhIndex Then
                            Put FreeFileMap, , .Graphic(LoopC).GrhIndex
                        End If
                    Next LoopC

                    If .Trigger Then
                        Put FreeFileMap, , .Trigger
                    End If

                    '.inf file
                    ByFlags = 0

                    If .TileExit.Map Then ByFlags = ByFlags Or 1
                    If .NPCIndex Then ByFlags = ByFlags Or 2
                    If .OBJInfo.objindex Then ByFlags = ByFlags Or 4

                    Put FreeFileInf, , ByFlags

                    If .TileExit.Map Then
                        Put FreeFileInf, , .TileExit.Map
                        Put FreeFileInf, , .TileExit.X
                        Put FreeFileInf, , .TileExit.Y
                    End If

                    If .NPCIndex Then

                        Put FreeFileInf, , CInt(.NPCIndex)
                    End If

                    If .OBJInfo.objindex Then
                        Put FreeFileInf, , .OBJInfo.objindex
                        Put FreeFileInf, , .OBJInfo.Amount
                    End If
                Else

                    If .Graphic(2).GrhIndex Then ByFlags = ByFlags Or 2
                    If .Graphic(3).GrhIndex Then ByFlags = ByFlags Or 4

                    Put FreeFileMap, , ByFlags

                    Put FreeFileMap, , .Graphic(1).GrhIndex

                    For LoopC = 2 To 4
                        If .Graphic(LoopC).GrhIndex Then
                            Put FreeFileMap, , .Graphic(LoopC).GrhIndex
                        End If
                    Next LoopC

                    '.inf file
                    ByFlags = 0

                    If .TileExit.Map Then ByFlags = ByFlags Or 1
                    Put FreeFileInf, , ByFlags

                    If .TileExit.Map Then
                        Put FreeFileInf, , .TileExit.Map
                        Put FreeFileInf, , .TileExit.X
                        Put FreeFileInf, , .TileExit.Y
                    End If
                End If
            End With
        Next X
    Next Y

    'Close .map file
    Close FreeFileMap

    'Close .inf file
    Close FreeFileInf
    Call Pestañas(SaveAs)

    'write .dat file
    SaveAs = Left$(SaveAs, Len(SaveAs) - 4) & ".dat"
    MapInfo_Guardar SaveAs

    'Change mouse icon
    frmMain.MousePointer = 0
    MapInfo(CurMap).Changed = 0

    Exit Sub

ErrorSave:
    MsgBox "Error en GuardarV2, nro. " & err.Number & " - " & err.Description
End Sub

''
' Guardar Mapa con el formato V1
'
' @param SaveAs Especifica donde guardar el mapa

Public Sub MapaV1_Guardar(SaveAs As String)
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************

    On Error GoTo ErrorSave
    Dim FreeFileMap             As Long
    Dim FreeFileInf             As Long
    Dim LoopC                   As Long
    Dim TempInt                 As Integer
    Dim T                       As String
    Dim Y                       As Long
    Dim X                       As Long

    If FileExist(SaveAs, vbNormal) = True Then
        If MsgBox("¿Desea sobrescribir " & SaveAs & "?", vbCritical + vbYesNo) = vbNo Then
            Exit Sub
        Else
            Kill SaveAs
        End If
    End If

    'Change mouse icon
    frmMain.MousePointer = 11
    T = SaveAs
    If FileExist(Left(SaveAs, Len(SaveAs) - 4) & ".inf", vbNormal) = True Then
        Kill Left(SaveAs, Len(SaveAs) - 4) & ".inf"
    End If

    'Open .map file
    FreeFileMap = FreeFile
    Open SaveAs For Binary As FreeFileMap
    Seek FreeFileMap, 1


    SaveAs = Left(SaveAs, Len(SaveAs) - 4)
    SaveAs = SaveAs & ".inf"
    'Open .inf file
    FreeFileInf = FreeFile
    Open SaveAs For Binary As FreeFileInf
    Seek FreeFileInf, 1
    'map Header
    If frmMain.lblMapVersion.Caption < 32767 Then
        frmMain.lblMapVersion.Caption = frmMain.lblMapVersion + 1
        frmMapInfo.txtMapVersion = frmMain.lblMapVersion.Caption
    End If
    Put FreeFileMap, , CInt(frmMain.lblMapVersion.Caption)
    Put FreeFileMap, , MiCabecera

    Put FreeFileMap, , TempInt
    Put FreeFileMap, , TempInt
    Put FreeFileMap, , TempInt
    Put FreeFileMap, , TempInt

    'inf Header
    Put FreeFileInf, , TempInt
    Put FreeFileInf, , TempInt
    Put FreeFileInf, , TempInt
    Put FreeFileInf, , TempInt
    Put FreeFileInf, , TempInt

    'Write .map file
    For Y = YMinMapSize To YMaxMapSize
        For X = XMinMapSize To XMaxMapSize

            '.map file

            ' Bloqueos
            Put FreeFileMap, , MapData(X, Y).Blocked

            ' Capas
            For LoopC = 1 To 4
                If LoopC = 2 Then Call FixCoasts(MapData(X, Y).Graphic(LoopC).GrhIndex, X, Y)
                Put FreeFileMap, , MapData(X, Y).Graphic(LoopC).GrhIndex
            Next LoopC

            ' Triggers
            Put FreeFileMap, , MapData(X, Y).Trigger
            Put FreeFileMap, , TempInt

            '.inf file
            'Tile exit
            Put FreeFileInf, , MapData(X, Y).TileExit.Map
            Put FreeFileInf, , MapData(X, Y).TileExit.X
            Put FreeFileInf, , MapData(X, Y).TileExit.Y

            'NPC
            Put FreeFileInf, , MapData(X, Y).NPCIndex

            'Object
            Put FreeFileInf, , MapData(X, Y).OBJInfo.objindex
            Put FreeFileInf, , MapData(X, Y).OBJInfo.Amount

            'Empty place holders for future expansion
            Put FreeFileInf, , TempInt
            Put FreeFileInf, , TempInt

        Next X
    Next Y

    'Close .map file
    Close FreeFileMap
    'Close .inf file
    Close FreeFileInf
    FreeFileMap = FreeFile
    Open T & "2" For Binary Access Write As FreeFileMap
    Put FreeFileMap, , MapData
    Close FreeFileMap
    Call Pestañas(SaveAs)

    'write .dat file
    SaveAs = Left(SaveAs, Len(SaveAs) - 4) & ".dat"
    MapInfo_Guardar SaveAs

    'Change mouse icon
    frmMain.MousePointer = 0
    MapInfo(CurMap).Changed = 0

    Exit Sub
ErrorSave:
    MsgBox "Error " & err.Number & " - " & err.Description
End Sub

Public Sub MapaV2_Cargar_Seccion(ByVal Map As String)
    Seleccionando = False
    SeleccionAncho = 100
    SeleccionAlto = 100
    ReDim SeleccionMap(SeleccionAncho, SeleccionAlto) As MapBlock

    Dim TempInt                 As Integer
    Dim Y                       As Integer
    Dim X                       As Integer
    Dim ByFlags                 As Byte
    Dim FreeFileMap             As Long
    Dim FreeFileInf             As Long
    DoEvents


    'Open files
    FreeFileMap = FreeFile
    Open Map For Binary As FreeFileMap
    Seek FreeFileMap, 1

    Map = Left(Map, Len(Map) - 4)
    Map = Map & ".inf"

    FreeFileInf = FreeFile
    Open Map For Binary As FreeFileInf
    Seek FreeFileInf, 1

    'Cabecera map
    Get FreeFileMap, , MapInfo(CurMap).MapVersion
    Get FreeFileMap, , MiCabecera
    Get FreeFileMap, , TempInt
    Get FreeFileMap, , TempInt
    Get FreeFileMap, , TempInt
    Get FreeFileMap, , TempInt

    'Cabecera inf
    Get FreeFileInf, , TempInt
    Get FreeFileInf, , TempInt
    Get FreeFileInf, , TempInt
    Get FreeFileInf, , TempInt
    Get FreeFileInf, , TempInt


    'Load arrays
    For Y = 1 To 100
        For X = 1 To 100

            Get FreeFileMap, , ByFlags

            SeleccionMap(X - 1, Y - 1).Blocked = (ByFlags And 1)

            Get FreeFileMap, , SeleccionMap(X - 1, Y - 1).Graphic(1).GrhIndex
            InitGrh SeleccionMap(X - 1, Y - 1).Graphic(1), SeleccionMap(X - 1, Y - 1).Graphic(1).GrhIndex

            'Layer 2 used?
            If ByFlags And 2 Then
                Get FreeFileMap, , SeleccionMap(X - 1, Y - 1).Graphic(2).GrhIndex
                InitGrh SeleccionMap(X - 1, Y - 1).Graphic(2), SeleccionMap(X - 1, Y - 1).Graphic(2).GrhIndex
            Else
                SeleccionMap(X - 1, Y - 1).Graphic(2).GrhIndex = 0
            End If

            'Layer 3 used?
            If ByFlags And 4 Then
                Get FreeFileMap, , SeleccionMap(X - 1, Y - 1).Graphic(3).GrhIndex
                InitGrh SeleccionMap(X - 1, Y - 1).Graphic(3), SeleccionMap(X - 1, Y - 1).Graphic(3).GrhIndex
            Else
                SeleccionMap(X - 1, Y - 1).Graphic(3).GrhIndex = 0
            End If

            'Layer 4 used?
            If ByFlags And 8 Then
                Get FreeFileMap, , SeleccionMap(X - 1, Y - 1).Graphic(4).GrhIndex
                InitGrh SeleccionMap(X - 1, Y - 1).Graphic(4), SeleccionMap(X - 1, Y - 1).Graphic(4).GrhIndex
            Else
                SeleccionMap(X - 1, Y - 1).Graphic(4).GrhIndex = 0
            End If


            'Trigger used?
            If ByFlags And 16 Then
                Get FreeFileMap, , SeleccionMap(X - 1, Y - 1).Trigger
            Else
                SeleccionMap(X - 1, Y - 1).Trigger = 0
            End If

            '.inf file
            Get FreeFileInf, , ByFlags

            If ByFlags And 1 Then
                Get FreeFileInf, , SeleccionMap(X - 1, Y - 1).TileExit.Map
                Get FreeFileInf, , SeleccionMap(X - 1, Y - 1).TileExit.X
                Get FreeFileInf, , SeleccionMap(X - 1, Y - 1).TileExit.Y
            End If

            If ByFlags And 2 Then
                'Get and make NPC
                Get FreeFileInf, , SeleccionMap(X - 1, Y - 1).NPCIndex

                '                If SeleccionMap(X - 1, Y - 1).NPCIndex < 0 Then
                '                    SeleccionMap(X - 1, Y - 1).NPCIndex = 0
                '                Else
                '                    Body = NpcData(SeleccionMap(X - 1, Y - 1).NPCIndex).Body
                '                    Head = NpcData(SeleccionMap(X - 1, Y - 1).NPCIndex).Head
                '                    Heading = NpcData(SeleccionMap(X - 1, Y - 1).NPCIndex).Heading
                '                    Call MakeChar(NextOpenChar(), Body, Head, Heading, X, Y)
                '                End If
            End If

            If ByFlags And 4 Then
                'Get and make Object
                Get FreeFileInf, , SeleccionMap(X - 1, Y - 1).OBJInfo.objindex
                Get FreeFileInf, , SeleccionMap(X - 1, Y - 1).OBJInfo.Amount
                If SeleccionMap(X - 1, Y - 1).OBJInfo.objindex > 0 Then
                    InitGrh SeleccionMap(X - 1, Y - 1).ObjGrh, ObjData(SeleccionMap(X - 1, Y - 1).OBJInfo.objindex).GrhIndex
                End If
            End If

        Next X
    Next Y

    'Close files
    Close FreeFileMap
    Close FreeFileInf

End Sub

Public Sub CargarMapa(ByVal Map As Long, ByVal MAPFl As String)
'***************************************************
'Author: Unknown
'Last Modification: 10/08/2010
'10/08/2010 - Pato: Implemento el clsByteBuffer y el clsIniReader para la carga de mapa
'***************************************************
Dim Buff()                      As Byte
Dim ByFlags                     As Byte
Dim hFile                       As Integer
Dim X                           As Integer
Dim Y                           As Integer
Dim NpcFile                     As String
Dim Leer                        As clsIniReader
Dim MapReader                   As clsByteBuffer
Dim InfReader                   As clsByteBuffer
Dim Body                        As Integer
Dim Head                        As Integer
Dim Heading                     As Byte
Dim tMap                        As String

10  Set MapReader = New clsByteBuffer
20  Set InfReader = New clsByteBuffer
30  Set Leer = New clsIniReader

40  On Error GoTo CargarMapa_Error

    If Not FileExist(MAPFl, vbArchive) Then
        MsgBox "Mapa " & MAPFl & " no existe."
        Exit Sub
    End If

50  NpcFile = App.Path & "\DATs\" & "NPCs" & ".dat"
60  LeerNPCs.Initialize (NpcFile)

70  hFile = FreeFile

80  Debug.Print "Cargando mapa: " & MAPFl

90  Open MAPFl For Binary As #hFile
100 Seek hFile, 1
110 ReDim Buff(LOF(hFile) - 1) As Byte
120 Get #hFile, , Buff
130 Close hFile

140 Call MapReader.initializeReader(Buff)

150 MAPFl = Left(MAPFl, Len(MAPFl) - 4)    'Le quitamos el .map

    'inf
160 Open MAPFl & ".inf" For Binary As #hFile
170 Seek hFile, 1
180 ReDim Buff(LOF(hFile) - 1) As Byte
190 Get #hFile, , Buff
200 Close hFile

210 Call InfReader.initializeReader(Buff)

    'map Header
220 MapInfo(Map).MapVersion = MapReader.getInteger
230 MiCabecera.Desc = MapReader.getString(Len(MiCabecera.Desc))
240 MiCabecera.CrC = MapReader.getLong
250 MiCabecera.MagicWord = MapReader.getLong

260 Call MapReader.getDouble

    'inf Header
270 Call InfReader.getDouble
280 Call InfReader.getInteger

290 For Y = YMinMapSize To YMaxMapSize
300     For X = XMinMapSize To XMaxMapSize
310         With MapData(X, Y)
                '.map file
320             ByFlags = MapReader.getByte
330             If ByFlags And 1 Then .Blocked = 1
340             .Graphic(1).GrhIndex = MapReader.getInteger
                'Layer 2 used?
350             If ByFlags And 2 Then .Graphic(2).GrhIndex = MapReader.getInteger
                'Layer 3 used?
360             If ByFlags And 4 Then .Graphic(3).GrhIndex = MapReader.getInteger
                'Layer 4 used?
370             If ByFlags And 8 Then .Graphic(4).GrhIndex = MapReader.getInteger
                'Trigger used?
380             If ByFlags And 16 Then .Trigger = MapReader.getInteger
                '.inf file

390             ByFlags = InfReader.getByte

400             If ByFlags And 1 Then
410                 .TileExit.Map = InfReader.getInteger
420                 .TileExit.X = InfReader.getInteger
430                 .TileExit.Y = InfReader.getInteger
440             End If

450             If ByFlags And 2 Then
                    'Get and make NPC
460                 .NPCIndex = InfReader.getInteger

470                 If .NPCIndex > 0 Then
                        'Si el npc debe hacer respawn en la pos
                        'original la guardamos
480                     If Val(LeerNPCs.GetValue("NPC" & .NPCIndex, "Hostile")) = 0 Then    'If val(GetVar(NpcFile, "NPC" & .NpcIndex, "Hostile")) = 0 Then
490                         Body = NpcData(.NPCIndex).Body
500                         Head = NpcData(.NPCIndex).Head
510                         Heading = NpcData(.NPCIndex).Heading
520                         Call MakeChar(NextOpenChar(), Body, Head, Heading, X, Y)
530                     End If
540                 End If
550             End If

560             If ByFlags And 4 Then
                    'Get and make Object
570                 .OBJInfo.objindex = InfReader.getInteger
580                 .OBJInfo.Amount = InfReader.getInteger

590                 If MapData(X, Y).OBJInfo.objindex > 0 Then
600                     InitGrh MapData(X, Y).ObjGrh, ObjData(MapData(X, Y).OBJInfo.objindex).GrhIndex
610                 End If

620             End If

630         End With
640     Next X
650 Next Y

660 MapInfo_Cargar MAPFl & ".inf"
670 bRefreshRadar = True       ' Radar

680 tMap = MAPFl & ".dat"
690 MapInfo_Cargar tMap

700 CurMap = Map
710 frmMain.lblMapVersion.Caption = MapInfo(CurMap).MapVersion    'cambiar esto

    'Set changed flag
720 MapInfo(CurMap).Changed = 0

    ' Vacia el Deshacer
730 modEdicion.Deshacer_Clear

    'Change mouse icon
740 frmMain.MousePointer = 0
750 MapaCargado = True
760 Call Leer.Initialize(MAPFl & ".dat")

770 With MapInfo(Map)
780     .Name = Leer.GetValue("Mapa" & Map, "Name")
790     .Music = Leer.GetValue("Mapa" & Map, "MusicNum")
800     .NoEncriptarMP = Val(Leer.GetValue("Mapa" & Map, "NoEncriptarMP"))
810     .Backup = Val(Leer.GetValue("Mapa" & Map, "BACKUP"))
820 End With

830 Set MapReader = Nothing
840 Set InfReader = Nothing
850 Set Leer = Nothing

860 Erase Buff

870 Exit Sub
880 On Error GoTo 0
CargarMapa_Error:
890 Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure CargarMapa of Módulo ES in line " & Erl() & " Mapa: " & MAPFl & ".map")
End Sub

Public Sub LoadMapa(ByVal Map As String)

    On Error GoTo err:

Dim data()                      As Byte
Dim ByFlags                     As Byte
Dim TempInt                     As Integer
Dim handle                      As Integer
Dim Y                           As Integer
Dim X                           As Integer
Dim Body                        As Integer
Dim Head                        As Integer
Dim Heading                     As Integer
Dim i                           As Long
Dim Pointer                     As Long
Dim tMap                        As String

    handle = FreeFile()

    Open Map For Binary As handle
    Seek handle, 1
    ReDim data(FileLen(Map)) As Byte
    Get handle, , data
    Close handle

    tMap = Right$(Map, 5)
    tMap = Left$(tMap, 1)
    CurMap = tMap

    'Get handle, , MapInfo.MapVersion
    Pointer = 0
    CopyMemory MapInfo(CurMap).MapVersion, data(Pointer), 2
    Pointer = Pointer + 2

    CopyMemory GameHeader, data(Pointer), Len(GameHeader)
    Pointer = Pointer + Len(GameHeader)

    For X = 1 To 4
        CopyMemory TempInt, data(Pointer), Len(TempInt)
        Pointer = Pointer + Len(TempInt)
    Next X

    'Load arrays
    For Y = YMinMapSize To YMaxMapSize
        For X = XMinMapSize To XMaxMapSize

            With MapData(X, Y)

                'Get handle, , ByFlags
                CopyMemory ByFlags, data(Pointer), Len(ByFlags)
                Pointer = Pointer + Len(ByFlags)

                .Blocked = (ByFlags And 1)
                'Get handle, , .Graphic(1).GrhIndex
                CopyMemory .Graphic(1).GrhIndex, data(Pointer), 2
                Pointer = Pointer + 2
                If .Graphic(1).GrhIndex <> 0 Then InitGrh .Graphic(1), .Graphic(1).GrhIndex

                'Layer 2 used?
                If ByFlags And 2 Then
                    CopyMemory .Graphic(2).GrhIndex, data(Pointer), 2
                    Pointer = Pointer + 2
                    InitGrh .Graphic(2), .Graphic(2).GrhIndex
                Else
                    .Graphic(2).GrhIndex = 0
                End If

                'Layer 3 used?
                If ByFlags And 4 Then
                    CopyMemory .Graphic(3).GrhIndex, data(Pointer), 2
                    Pointer = Pointer + 2
                    If .Graphic(3).GrhIndex <> 0 Then InitGrh .Graphic(3), .Graphic(3).GrhIndex
                Else
                    .Graphic(3).GrhIndex = 0
                End If

                'Layer 4 used?
                If ByFlags And 8 Then
                    CopyMemory .Graphic(4).GrhIndex, data(Pointer), 2
                    Pointer = Pointer + 2
                    InitGrh .Graphic(4), .Graphic(4).GrhIndex
                Else
                    .Graphic(4).GrhIndex = 0
                End If

                'Trigger used?
                If ByFlags And 16 Then
                    CopyMemory .Trigger, data(Pointer), 2
                    Pointer = Pointer + 2
                Else
                    .Trigger = 0
                End If

                CopyMemory .Graphic(2).GrhIndex, data(Pointer), 2
                Pointer = Pointer + 2

                If ByFlags And 2 Then
                    'Get and make NPC

                    If .NPCIndex <= 0 Then
                        .NPCIndex = 0
                    Else
                        Body = NpcData(.NPCIndex).Body
                        Head = NpcData(.NPCIndex).Head
                        Heading = NpcData(.NPCIndex).Heading
                        Call MakeChar(NextOpenChar(), Body, Head, 1, X, Y)
                    End If
                End If

                If ByFlags And 4 Then
                    'Get and make Object
                    If .OBJInfo.objindex > 0 Then
                        InitGrh .ObjGrh, ObjData(.OBJInfo.objindex).GrhIndex
                    End If
                End If
            End With
        Next X
    Next Y


    Call Pestañas(Map)

    bRefreshRadar = True       ' Radar

    Map = Left$(Map, Len(Map) - 4) & ".dat"

    MapInfo_Cargar Map
    frmMain.lblMapVersion.Caption = MapInfo(CurMap).MapVersion

    'Set changed flag
    MapInfo(CurMap).Changed = 0

    ' Vacia el Deshacer
    modEdicion.Deshacer_Clear

    'Change mouse icon
    frmMain.MousePointer = 0
    MapaCargado = True

    'MapInfo.name = vbNullString '[/About] 23-12-11 corrijo esto.
    'MapInfo.Music = vbNullString '[/About] 23-12-11 corrijo esto.
    'Light_Remove_All

    'GrabarSuperMapa map
    'firstRun = True
    'LastMapLoaded = Map

    Exit Sub
err:

End Sub

' Abrir Mapa con el formato V2
'
' @param Map Especifica el Path del mapa
Public Sub MapaV2_Cargar(ByVal Map As String)
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************

Dim tMap                        As String

    tMap = Right$(Map, 5)
    tMap = Left$(tMap, 1)
    CurMap = tMap

    Call CargarMapa(CurMap, Map)
    Exit Sub                   'TEst!

    Dim ByFlags                 As Byte
    Dim Heading                 As Byte
    Dim X                       As Integer
    Dim Y                       As Integer
    Dim Body                    As Integer
    Dim Head                    As Integer
    Dim TempInt                 As Integer
    Dim FreeFileMap             As Long
    Dim FreeFileInf             As Long

    On Error GoTo MapaV2_Cargar_Error

10  DoEvents

    'Change mouse icon
20  frmMain.MousePointer = 11

    'Open files
30  FreeFileMap = FreeFile
40  Open Map For Binary As FreeFileMap
50  Seek FreeFileMap, 1

60  Map = Left(Map, Len(Map) - 4)
70  Map = Map & ".inf"

80  FreeFileInf = FreeFile
90  Open Map For Binary As FreeFileInf
100 Seek FreeFileInf, 1

    'Cabecera map
110 Get FreeFileMap, , MapInfo(CurMap).MapVersion
120 Get FreeFileMap, , MiCabecera
130 Get FreeFileMap, , TempInt
140 Get FreeFileMap, , TempInt
150 Get FreeFileMap, , TempInt
160 Get FreeFileMap, , TempInt

    'Cabecera inf
170 Get FreeFileInf, , TempInt
180 Get FreeFileInf, , TempInt
190 Get FreeFileInf, , TempInt
200 Get FreeFileInf, , TempInt
210 Get FreeFileInf, , TempInt


    'Load arrays
220 For Y = YMinMapSize To YMaxMapSize
230     For X = XMinMapSize To XMaxMapSize

240         Get FreeFileMap, , ByFlags

250         MapData(X, Y).Blocked = (ByFlags And 1)

260         Get FreeFileMap, , MapData(X, Y).Graphic(1).GrhIndex
270         InitGrh MapData(X, Y).Graphic(1), MapData(X, Y).Graphic(1).GrhIndex

            'Layer 2 used?
280         If ByFlags And 2 Then
290             Get FreeFileMap, , MapData(X, Y).Graphic(2).GrhIndex
300             InitGrh MapData(X, Y).Graphic(2), MapData(X, Y).Graphic(2).GrhIndex
310         Else
320             MapData(X, Y).Graphic(2).GrhIndex = 0
330         End If

            'Layer 3 used?
340         If ByFlags And 4 Then
350             Get FreeFileMap, , MapData(X, Y).Graphic(3).GrhIndex
360             InitGrh MapData(X, Y).Graphic(3), MapData(X, Y).Graphic(3).GrhIndex
370         Else
380             MapData(X, Y).Graphic(3).GrhIndex = 0
390         End If

            'Layer 4 used?
400         If ByFlags And 8 Then
410             Get FreeFileMap, , MapData(X, Y).Graphic(4).GrhIndex
420             InitGrh MapData(X, Y).Graphic(4), MapData(X, Y).Graphic(4).GrhIndex
430         Else
440             MapData(X, Y).Graphic(4).GrhIndex = 0
450         End If


            'Trigger used?
460         If ByFlags And 16 Then
470             Get FreeFileMap, , MapData(X, Y).Trigger
480         Else
490             MapData(X, Y).Trigger = 0
500         End If

            '.inf file
510         Get FreeFileInf, , ByFlags

520         If ByFlags And 1 Then
530             Get FreeFileInf, , MapData(X, Y).TileExit.Map
540             Get FreeFileInf, , MapData(X, Y).TileExit.X
550             Get FreeFileInf, , MapData(X, Y).TileExit.Y
560         End If

570         If ByFlags And 2 Then
                'Get and make NPC
580             Get FreeFileInf, , MapData(X, Y).NPCIndex

590             If MapData(X, Y).NPCIndex < 0 Then
600                 MapData(X, Y).NPCIndex = 0
610             Else
620                 Body = NpcData(MapData(X, Y).NPCIndex).Body
630                 Head = NpcData(MapData(X, Y).NPCIndex).Head
640                 Heading = NpcData(MapData(X, Y).NPCIndex).Heading
650                 Call MakeChar(NextOpenChar(), Body, Head, Heading, X, Y)
660             End If
670         End If

680         If ByFlags And 4 Then
                'Get and make Object
690             Get FreeFileInf, , MapData(X, Y).OBJInfo.objindex
700             Get FreeFileInf, , MapData(X, Y).OBJInfo.Amount
710             If MapData(X, Y).OBJInfo.objindex > 0 Then
720                 InitGrh MapData(X, Y).ObjGrh, ObjData(MapData(X, Y).OBJInfo.objindex).GrhIndex
730             End If
740         End If

750     Next X
760 Next Y

    'Close files
770 Close FreeFileMap
780 Close FreeFileInf

790 Call Pestañas(Map)

800 bRefreshRadar = True       ' Radar

810 Map = Left$(Map, Len(Map) - 4) & ".dat"

820 MapInfo_Cargar Map
830 frmMain.lblMapVersion.Caption = MapInfo(CurMap).MapVersion    'cambiar esto

    'Set changed flag
840 MapInfo(CurMap).Changed = 0

    ' Vacia el Deshacer
850 modEdicion.Deshacer_Clear

    'Change mouse icon
860 frmMain.MousePointer = 0
870 MapaCargado = True

    On Error GoTo 0
    Exit Sub

MapaV2_Cargar_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento MapaV2_Cargar de Módulo modMapIO línea: " & Erl())

End Sub


Public Sub TempMapa_Cargar(ByVal Map As String)
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************


Dim TempInt                     As Integer
Dim Y                           As Integer
Dim X                           As Integer
Dim ByFlags                     As Byte
Dim FreeFileMap                 As Long
Dim FreeFileInf                 As Long
    On Error GoTo TempMapa_Cargar_Error

10  DoEvents

    'Change mouse icon
20  frmMain.MousePointer = 11

    'Open files
30  FreeFileMap = FreeFile
40  Open Map For Binary As FreeFileMap
50  Seek FreeFileMap, 1

60  Map = Left(Map, Len(Map) - 4)
70  Map = Map & ".inf"

80  FreeFileInf = FreeFile
90  Open Map For Binary As FreeFileInf
100 Seek FreeFileInf, 1

    'Cabecera map
110 Get FreeFileMap, , MapInfo(Map).MapVersion
120 Get FreeFileMap, , MiCabecera
130 Get FreeFileMap, , TempInt
140 Get FreeFileMap, , TempInt
150 Get FreeFileMap, , TempInt
160 Get FreeFileMap, , TempInt

    'Cabecera inf
170 Get FreeFileInf, , TempInt
180 Get FreeFileInf, , TempInt
190 Get FreeFileInf, , TempInt
200 Get FreeFileInf, , TempInt
210 Get FreeFileInf, , TempInt


    'Load arrays
220 For Y = YMinMapSize To YMaxMapSize
230     For X = XMinMapSize To XMaxMapSize

240         Get FreeFileMap, , ByFlags

250         TempMapData(X, Y).Blocked = (ByFlags And 1)

260         Get FreeFileMap, , TempMapData(X, Y).Graphic(1).GrhIndex
270         InitGrh TempMapData(X, Y).Graphic(1), TempMapData(X, Y).Graphic(1).GrhIndex

            'Layer 2 used?
280         If ByFlags And 2 Then
290             Get FreeFileMap, , TempMapData(X, Y).Graphic(2).GrhIndex
300             InitGrh TempMapData(X, Y).Graphic(2), TempMapData(X, Y).Graphic(2).GrhIndex
310         Else
320             TempMapData(X, Y).Graphic(2).GrhIndex = 0
330         End If

            'Layer 3 used?
340         If ByFlags And 4 Then
350             Get FreeFileMap, , TempMapData(X, Y).Graphic(3).GrhIndex
360             InitGrh TempMapData(X, Y).Graphic(3), TempMapData(X, Y).Graphic(3).GrhIndex
370         Else
380             TempMapData(X, Y).Graphic(3).GrhIndex = 0
390         End If

            'Layer 4 used?
400         If ByFlags And 8 Then
410             Get FreeFileMap, , TempMapData(X, Y).Graphic(4).GrhIndex
420             InitGrh TempMapData(X, Y).Graphic(4), TempMapData(X, Y).Graphic(4).GrhIndex
430         Else
440             TempMapData(X, Y).Graphic(4).GrhIndex = 0
450         End If


            'Trigger used?
460         If ByFlags And 16 Then
470             Get FreeFileMap, , TempMapData(X, Y).Trigger
480         Else
490             TempMapData(X, Y).Trigger = 0
500         End If

            '.inf file
510         Get FreeFileInf, , ByFlags

520         If ByFlags And 1 Then
530             Get FreeFileInf, , TempMapData(X, Y).TileExit.Map
540             Get FreeFileInf, , TempMapData(X, Y).TileExit.X
550             Get FreeFileInf, , TempMapData(X, Y).TileExit.Y
560         End If

570         If ByFlags And 2 Then
                'Get and make NPC
580             Get FreeFileInf, , TempMapData(X, Y).NPCIndex

                '                If TempMapData(X, Y).NPCIndex < 0 Then
                '                    TempMapData(X, Y).NPCIndex = 0
                '                Else
                '                    Body = NpcData(TempMapData(X, Y).NPCIndex).Body
                '                    Head = NpcData(TempMapData(X, Y).NPCIndex).Head
                '                    Heading = NpcData(TempMapData(X, Y).NPCIndex).Heading
                '                    Call MakeChar(NextOpenChar(), Body, Head, Heading, X, Y)
                '                End If
590         End If

600         If ByFlags And 4 Then
                'Get and make Object
610             Get FreeFileInf, , TempMapData(X, Y).OBJInfo.objindex
620             Get FreeFileInf, , TempMapData(X, Y).OBJInfo.Amount
                '                If TempMapData(X, Y).OBJInfo.objindex > 0 Then
                '                    InitGrh TempMapData(X, Y).ObjGrh, ObjData(TempMapData(X, Y).OBJInfo.objindex).GrhIndex
                '                End If
630         End If

640     Next X
650 Next Y

    'Close files
660 Close FreeFileMap
670 Close FreeFileInf

    'Call Pestañas(Map)

    'bRefreshRadar = True ' Radar

    'Map = Left$(Map, Len(Map) - 4) & ".dat"

680 MapInfo_Cargar Map
    'frmMain.lblMapVersion.Caption = MapInfo.MapVersion

    'Set changed flag
    'MapInfo(curmap).Changed = 0

    ' Vacia el Deshacer
    'modEdicion.Deshacer_Clear

    'Change mouse icon
    'frmMain.MousePointer = 0
    'mapaCargado = True

    On Error GoTo 0
    Exit Sub

TempMapa_Cargar_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento TempMapa_Cargar de Módulo modMapIO línea: " & Erl())

End Sub
''
' Abrir Mapa con el formato V1
'
' @param Map Especifica el Path del mapa

Public Sub MapaV1_Cargar(ByVal Map As String)
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************


Dim LoopC                       As Integer
Dim TempInt                     As Integer
Dim Body                        As Integer
Dim Head                        As Integer
Dim Heading                     As Byte
Dim Y                           As Integer
Dim X                           As Integer
Dim FreeFileMap                 As Long
Dim FreeFileInf                 As Long
    On Error GoTo MapaV1_Cargar_Error

10  DoEvents
    'Change mouse icon
20  frmMain.MousePointer = 11

    'Open files
30  FreeFileMap = FreeFile
40  Open Map For Binary As FreeFileMap
50  Seek FreeFileMap, 1

60  Map = Left(Map, Len(Map) - 4)
70  Map = Map & ".inf"
80  FreeFileInf = FreeFile
90  Open Map For Binary As #2
100 Seek FreeFileInf, 1

    'Cabecera map
110 Get FreeFileMap, , MapInfo(Map).MapVersion
120 Get FreeFileMap, , MiCabecera
130 Get FreeFileMap, , TempInt
140 Get FreeFileMap, , TempInt
150 Get FreeFileMap, , TempInt
160 Get FreeFileMap, , TempInt

    'Cabecera inf
170 Get FreeFileInf, , TempInt
180 Get FreeFileInf, , TempInt
190 Get FreeFileInf, , TempInt
200 Get FreeFileInf, , TempInt
210 Get FreeFileInf, , TempInt


    'Load arrays
220 For Y = YMinMapSize To YMaxMapSize
230     For X = XMinMapSize To XMaxMapSize

            '.map file
240         Get FreeFileMap, , MapData(X, Y).Blocked

250         For LoopC = 1 To 4
260             Get FreeFileMap, , MapData(X, Y).Graphic(LoopC).GrhIndex
                'Set up GRH
270             If MapData(X, Y).Graphic(LoopC).GrhIndex > 0 Then
280                 InitGrh MapData(X, Y).Graphic(LoopC), MapData(X, Y).Graphic(LoopC).GrhIndex
290             End If
300         Next LoopC
            'Trigger
310         Get FreeFileMap, , MapData(X, Y).Trigger

320         Get FreeFileMap, , TempInt
            '.inf file

            'Tile exit
330         Get FreeFileInf, , MapData(X, Y).TileExit.Map
340         Get FreeFileInf, , MapData(X, Y).TileExit.X
350         Get FreeFileInf, , MapData(X, Y).TileExit.Y

            'make NPC
360         Get FreeFileInf, , MapData(X, Y).NPCIndex
370         If MapData(X, Y).NPCIndex > 0 Then
380             Body = NpcData(MapData(X, Y).NPCIndex).Body
390             Head = NpcData(MapData(X, Y).NPCIndex).Head
400             Heading = NpcData(MapData(X, Y).NPCIndex).Heading
410             Call MakeChar(NextOpenChar(), Body, Head, Heading, X, Y)
420         End If

            'Make obj
430         Get FreeFileInf, , MapData(X, Y).OBJInfo.objindex
440         Get FreeFileInf, , MapData(X, Y).OBJInfo.Amount
450         If MapData(X, Y).OBJInfo.objindex > 0 Then
460             InitGrh MapData(X, Y).ObjGrh, ObjData(MapData(X, Y).OBJInfo.objindex).GrhIndex
470         End If

            'Empty place holders for future expansion
480         Get FreeFileInf, , TempInt
490         Get FreeFileInf, , TempInt

500     Next X
510 Next Y

    'Close files
520 Close FreeFileMap
530 Close FreeFileInf

540 Call Pestañas(Map)

550 bRefreshRadar = True       ' Radar

560 Map = Left(Map, Len(Map) - 4) & ".dat"

570 MapInfo_Cargar Map
580 frmMain.lblMapVersion.Caption = MapInfo(Map).MapVersion

    'Set changed flag
590 MapInfo(CurMap).Changed = 0

    ' Vacia el Deshacer
600 modEdicion.Deshacer_Clear

    'Change mouse icon
610 frmMain.MousePointer = 0
620 MapaCargado = True

    On Error GoTo 0
    Exit Sub

MapaV1_Cargar_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento MapaV1_Cargar de Módulo modMapIO línea: " & Erl())

End Sub


Public Sub MapaV3_Cargar(ByVal Map As String)
'*************************************************
'Author: Loopzer
'Last modified: 22/11/07
'*************************************************


Dim FreeFileMap                 As Long
    On Error GoTo MapaV3_Cargar_Error

10  DoEvents
    'Change mouse icon
20  frmMain.MousePointer = 11

30  FreeFileMap = FreeFile
40  Open Map For Binary Access Read As FreeFileMap
50  Get FreeFileMap, , MapData
60  Close FreeFileMap

70  Call Pestañas(Map)

80  bRefreshRadar = True       ' Radar

90  Map = Left(Map, Len(Map) - 4) & ".dat"

100 MapInfo_Cargar Map
110 frmMain.lblMapVersion.Caption = MapInfo(Map).MapVersion

    'Set changed flag
120 MapInfo(CurMap).Changed = 0

    ' Vacia el Deshacer
130 modEdicion.Deshacer_Clear

    'Change mouse icon
140 frmMain.MousePointer = 0
150 MapaCargado = True

    On Error GoTo 0
    Exit Sub

MapaV3_Cargar_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento MapaV3_Cargar de Módulo modMapIO línea: " & Erl())

End Sub
Public Sub MapaV3_Guardar(Mapa As String)
'*************************************************
'Author: Loopzer
'Last modified: 22/11/07
'*************************************************
'copy&paste RLZ
    On Error GoTo ErrorSave
    Dim FreeFileMap             As Long

    If FileExist(Mapa, vbNormal) = True Then
        If MsgBox("¿Desea sobrescribir " & Mapa & "?", vbCritical + vbYesNo) = vbNo Then
            Exit Sub
        Else
            Kill Mapa
        End If
    End If

    frmMain.MousePointer = 11

    FreeFileMap = FreeFile
    Open Mapa For Binary Access Write As FreeFileMap
    Put FreeFileMap, , MapData
    Close FreeFileMap
    Call Pestañas(Mapa)


    Mapa = Left(Mapa, Len(Mapa) - 4) & ".dat"
    MapInfo_Guardar Mapa

    'Change mouse icon
    frmMain.MousePointer = 0
    MapInfo(CurMap).Changed = 0

    Exit Sub
ErrorSave:
    MsgBox "Error " & err.Number & " - " & err.Description
End Sub




' *****************************************************************************
' MAPINFO *********************************************************************
' *****************************************************************************

''
' Guardar Informacion del Mapa (.dat)
'
' @param Archivo Especifica el Path del archivo .DAT

Public Sub MapInfo_Guardar(ByVal Archivo As String)
'*************************************************
'Author: ^[GS]^
'Last modified: 28/05/06
'*************************************************

    If LenB(MapTitulo) = 0 Then
        MapTitulo = NameMap_Save
    End If

    Call WriteVar(Archivo, MapTitulo, "Name", MapInfo(CurMap).Name)
    'Call WriteVar(Archivo, MapTitulo, "MusicNum", MapInfo.Music)
    'Call WriteVar(Archivo, MapTitulo, "MagiaSinefecto", Val(MapInfo.MagiaSinEfecto))
    'Call WriteVar(Archivo, MapTitulo, "InviSinEfecto", Val(MapInfo.InviSinEfecto))
    'Call WriteVar(Archivo, MapTitulo, "ResuSinEfecto", Val(MapInfo.ResuSinEfecto))
    Call WriteVar(Archivo, MapTitulo, "NoEncriptarMP", Val(MapInfo(CurMap).NoEncriptarMP))

    'Call WriteVar(Archivo, MapTitulo, "Terreno", MapInfo.Terreno)
    'Call WriteVar(Archivo, MapTitulo, "Zona", MapInfo.Zona)
    'Call WriteVar(Archivo, MapTitulo, "Restringir", MapInfo.Restringir)
    Call WriteVar(Archivo, MapTitulo, "BackUp", str(MapInfo(CurMap).Backup))

    'If MapInfo.PK Then
    '    Call WriteVar(Archivo, MapTitulo, "Pk", "0")
    'Else
    '    Call WriteVar(Archivo, MapTitulo, "Pk", "1")
    'End If
End Sub

''
' Abrir Informacion del Mapa (.dat)
'
' @param Archivo Especifica el Path del archivo .DAT

Public Sub MapInfo_Cargar(ByVal Archivo As String)
'*************************************************
'Author: ^[GS]^
'Last modified: 02/06/06
'*************************************************


Dim Leer                        As New clsIniReader
Dim LoopC                       As Integer
Dim Path                        As String
    On Error GoTo MapInfo_Cargar_Error

10  MapTitulo = Empty
20  Leer.Initialize Archivo

30  For LoopC = Len(Archivo) To 1 Step -1
40      If mid(Archivo, LoopC, 1) = "\" Then
50          Path = Left(Archivo, LoopC)
60          Exit For
70      End If
80  Next
90  Archivo = Right(Archivo, Len(Archivo) - (Len(Path)))
100 MapTitulo = UCase(Left(Archivo, Len(Archivo) - 4))

110 MapInfo(CurMap).Name = Leer.GetValue(MapTitulo, "Name")
120 'MapInfo.Music = Leer.GetValue(MapTitulo, "MusicNum")
130 'MapInfo.MagiaSinEfecto = Val(Leer.GetValue(MapTitulo, "MagiaSinEfecto"))
140 'MapInfo.InviSinEfecto = Val(Leer.GetValue(MapTitulo, "InviSinEfecto"))
150 'MapInfo.ResuSinEfecto = Val(Leer.GetValue(MapTitulo, "ResuSinEfecto"))
160 'MapInfo.NoEncriptarMP = Val(Leer.GetValue(MapTitulo, "NoEncriptarMP"))
    '
170 'If Val(Leer.GetValue(MapTitulo, "Pk")) = 0 Then
180 '    MapInfo.PK = True
190 'Else
200 '    MapInfo.PK = False
210 'End If

220 'MapInfo.Terreno = Leer.GetValue(MapTitulo, "Terreno")
230 'MapInfo.Zona = Leer.GetValue(MapTitulo, "Zona")
240 'MapInfo.Restringir = Leer.GetValue(MapTitulo, "Restringir")
250 MapInfo(CurMap).Backup = Val(Leer.GetValue(MapTitulo, "BACKUP"))

260 Call MapInfo_Actualizar

    On Error GoTo 0
    Exit Sub

MapInfo_Cargar_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento MapInfo_Cargar de Módulo modMapIO línea: " & Erl())

End Sub

''
' Actualiza el formulario de MapInfo
'

Public Sub MapInfo_Actualizar()
'*************************************************
'Author: ^[GS]^
'Last modified: 02/06/06
'*************************************************


' Mostrar en Formularios
    On Error GoTo MapInfo_Actualizar_Error

10  frmMapInfo.txtMapNombre.Text = MapInfo(CurMap).Name
20  'frmMapInfo.txtMapMusica.Text = MapInfo.Music
30  'frmMapInfo.txtMapTerreno.Text = MapInfo.Terreno
40  'frmMapInfo.txtMapZona.Text = MapInfo.Zona
50  'frmMapInfo.txtMapRestringir.Text = MapInfo.Restringir
60  frmMapInfo.chkMapBackup.Value = MapInfo(CurMap).Backup
70  'frmMapInfo.chkMapMagiaSinEfecto.value = MapInfo.MagiaSinEfecto
80  'frmMapInfo.chkMapInviSinEfecto.value = MapInfo.InviSinEfecto
90  'frmMapInfo.chkMapResuSinEfecto.value = MapInfo.ResuSinEfecto
100 frmMapInfo.chkMapNoEncriptarMP.Value = MapInfo(CurMap).NoEncriptarMP
110 'frmMapInfo.chkMapPK.value = IIf(MapInfo.PK = True, 1, 0)
120 frmMapInfo.txtMapVersion = MapInfo(CurMap).MapVersion
130 frmMain.lblMapNombre = MapInfo(CurMap).Name
140 'frmMain.lblMapMusica = MapInfo.Music

    On Error GoTo 0
    Exit Sub

MapInfo_Actualizar_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento MapInfo_Actualizar de Módulo modMapIO línea: " & Erl())

End Sub

''
' Calcula la orden de Pestañas
'
' @param Map Especifica path del mapa

Public Sub Pestañas(ByVal Map As String)
'*************************************************
'Author: ^[GS]^
'Last modified: 28/05/06
'*************************************************

Dim LoopC                       As Integer

    On Error GoTo Pestañas_Error

10  For LoopC = Len(Map) To 1 Step -1
20      If mid(Map, LoopC, 1) = "\" Then
30          PATH_Save = Left(Map, LoopC)
40          Exit For
50      End If
60  Next
70  Map = Right(Map, Len(Map) - (Len(PATH_Save)))
80  For LoopC = Len(Left(Map, Len(Map) - 4)) To 1 Step -1
90      If IsNumeric(mid(Left(Map, Len(Map) - 4), LoopC, 1)) = False Then
100         NumMap_Save = Right(Left(Map, Len(Map) - 4), Len(Left(Map, Len(Map) - 4)) - LoopC)
110         NameMap_Save = Left(Map, LoopC)
120         Exit For
130     End If
140 Next
150 For LoopC = (NumMap_Save - 4) To (NumMap_Save + 8)
160     If FileExist(PATH_Save & NameMap_Save & LoopC & ".map", vbArchive) = True Then
            'frmMain.MapPest(loopc - NumMap_Save + 4).Visible = True
            'frmMain.MapPest(loopc - NumMap_Save + 4).Enabled = True
170         frmMain.MapPest(LoopC - NumMap_Save + 4).Caption = NameMap_Save & LoopC
180     Else
190         frmMain.MapPest(LoopC - NumMap_Save + 4).Visible = False
200     End If
210 Next

    On Error GoTo 0
    Exit Sub

Pestañas_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento Pestañas de Módulo modMapIO línea: " & Erl())
End Sub




