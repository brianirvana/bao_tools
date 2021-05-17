Attribute VB_Name = "modIndices"
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
' modIndices
'
' @remarks Funciones Especificas al Trabajo con Indices
' @author gshaxor@gmail.com
' @version 0.1.05
' @date 20060530

Option Explicit

Public grhCount                 As Long
' Carga los indices de Graficos

Public Sub CargarIndicesDeGraficos()

    On Error GoTo ErrorHandler
    Dim Grh                     As Long
    Dim Frame                   As Long
    Dim grhCount                As Long
    Dim handle                  As Integer
    Dim FileVersion             As Long

    'Open files
    handle = FreeFile()
    Open DirIndex & "\Graficos.ind" For Binary Access Read As handle
    Seek #1, 1

    'Get file version
    Get handle, , FileVersion

    'Get number of grhs
    Get handle, , grhCount
    'MsgBox grhCount
    'Resize arrays
    ReDim GrhData(1 To grhCount) As GrhData

    While Not EOF(handle)
        Get handle, , Grh
        If Grh > 0 Then
            With GrhData(Grh)
                'Get number of frames
                Get handle, , .NumFrames
                If .NumFrames <= 0 Then GoTo ErrorHandler

                ReDim .Frames(1 To GrhData(Grh).NumFrames)

                If .NumFrames > 1 Then
                    'Read a animation GRH set
                    For Frame = 1 To .NumFrames
                        Get handle, , .Frames(Frame)
                        If .Frames(Frame) <= 0 Or .Frames(Frame) > grhCount Then
                            GoTo ErrorHandler
                        End If
                    Next Frame

                    Get handle, , .Speed

                    If .Speed <= 0 Then GoTo ErrorHandler

                    'Compute width and height
                    .pixelHeight = GrhData(.Frames(1)).pixelHeight
                    If .pixelHeight <= 0 Then GoTo ErrorHandler

                    .pixelWidth = GrhData(.Frames(1)).pixelWidth
                    If .pixelWidth <= 0 Then GoTo ErrorHandler

                    .TileWidth = GrhData(.Frames(1)).TileWidth
                    If .TileWidth <= 0 Then GoTo ErrorHandler

                    .TileHeight = GrhData(.Frames(1)).TileHeight
                    If .TileHeight <= 0 Then GoTo ErrorHandler
                Else
                    'Read in normal GRH data
                    Get handle, , .FileNum
                    If .FileNum <= 0 Then GoTo ErrorHandler

                    Get handle, , GrhData(Grh).sX
                    If .sX < 0 Then GoTo ErrorHandler

                    Get handle, , .sY
                    If .sY < 0 Then GoTo ErrorHandler

                    Get handle, , .pixelWidth
                    If .pixelWidth <= 0 Then GoTo ErrorHandler

                    Get handle, , .pixelHeight
                    If .pixelHeight <= 0 Then GoTo ErrorHandler

                    'Compute width and height
                    .TileWidth = .pixelWidth / TilePixelHeight
                    .TileHeight = .pixelHeight / TilePixelWidth

                    .Frames(1) = Grh
                    'If Grh = 19700 Then Exit Sub '[/About] WTF?
                End If
            End With
        End If
    Wend

    Close handle
    Exit Sub

ErrorHandler:
    Close #1
    MsgBox "Error al intentar cargar el Graficos " & Grh & " de graficos.ind en " & DirIndex & vbCrLf & "Err: " & err.Number & " - " & err.Description, vbCritical + vbOKOnly

End Sub

Public Function LoadGrhData() As Boolean

    On Error GoTo ErrorHandler

    Dim handle                  As Integer
    Dim Grh                     As Long
    Dim Frame                   As Long
    Dim FileVersion             As Long

    'Open files
    handle = FreeFile()
    
    Open IniPath & "\INIT\Graficos.ind" For Binary Access Read As handle
    Seek #1, 1

    'Get file version
    Get handle, , FileVersion

    'Get number of grhs
    Get handle, , grhCount

    'Resize arrays
    ReDim GrhData(0 To grhCount) As GrhData

    'Do Until Grh <= 0
    While Not EOF(handle)
        Get handle, , Grh
        If Grh > 0 Then
            With GrhData(Grh)
                'Get number of frames
                'If Grh = 7307 Then Stop
                Get handle, , .NumFrames
                If .NumFrames <= 0 Then GoTo ErrorHandler

                ReDim .Frames(1 To GrhData(Grh).NumFrames)

                If .NumFrames > 1 Then
                    'Read a animation GRH set
                    For Frame = 1 To .NumFrames
                        Get handle, , .Frames(Frame)
                        If .Frames(Frame) <= 0 Or .Frames(Frame) > grhCount Then
                            GoTo ErrorHandler
                        End If
                    Next Frame

                    Get handle, , .Speed

                    If .Speed <= 0 Then GoTo ErrorHandler

                    'Compute width and height
                    .pixelHeight = GrhData(.Frames(1)).pixelHeight
                    If .pixelHeight <= 0 Then GoTo ErrorHandler

                    .pixelWidth = GrhData(.Frames(1)).pixelWidth
                    If .pixelWidth <= 0 Then GoTo ErrorHandler

                    .TileWidth = GrhData(.Frames(1)).TileWidth
                    If .TileWidth <= 0 Then GoTo ErrorHandler

                    .TileHeight = GrhData(.Frames(1)).TileHeight
                    If .TileHeight <= 0 Then GoTo ErrorHandler
                Else
                    'Read in normal GRH data
                    Get handle, , .FileNum
                    If .FileNum <= 0 Then GoTo ErrorHandler

                    Get handle, , GrhData(Grh).sX
                    If .sX < 0 Then GoTo ErrorHandler

                    Get handle, , .sY
                    If .sY < 0 Then GoTo ErrorHandler

                    Get handle, , .pixelWidth
                    If .pixelWidth <= 0 Then GoTo ErrorHandler

                    Get handle, , .pixelHeight
                    If .pixelHeight <= 0 Then GoTo ErrorHandler

                    'Compute width and height
                    .TileWidth = .pixelWidth / 32
                    .TileHeight = .pixelHeight / 32

                    .Frames(1) = Grh
                End If
            End With
        End If

        'Get handle, , Grh
    Wend
    'Loop

    Close handle

    LoadGrhData = True
    Exit Function
ErrorHandler:
    LoadGrhData = False
    
    
End Function


' Carga los indices de Superficie

Public Sub CargarIndicesSuperficie()
'*************************************************
'Author: ^[GS]^
'Last modified: 29/05/06
'*************************************************

    On Error GoTo Fallo

    If FileExist(IniPath & "GrhIndex\indices.ini", vbArchive) = False Then
        MsgBox "Falta el archivo 'GrhIndex\indices.ini'", vbCritical
        End
    End If

    Dim Leer                    As New clsIniReader
    Dim i                       As Integer

    Leer.Initialize IniPath & "GrhIndex\indices.ini"
    MaxSup = Leer.GetValue("INIT", "Referencias")
    ReDim SupData(MaxSup) As SupData
    frmMain.lListado(0).Clear

    For i = 0 To MaxSup
        SupData(i).Name = Replace(Leer.GetValue("REFERENCIA" & i, "Nombre"), "#", "~")
        SupData(i).Grh = Val(Leer.GetValue("REFERENCIA" & i, "GrhIndex"))
        SupData(i).Width = Val(Leer.GetValue("REFERENCIA" & i, "Ancho"))
        SupData(i).Height = Val(Leer.GetValue("REFERENCIA" & i, "Alto"))
        SupData(i).Block = IIf(Val(Leer.GetValue("REFERENCIA" & i, "Bloquear")) = 1, True, False)
        SupData(i).Capa = Val(Leer.GetValue("REFERENCIA" & i, "Capa"))
        frmMain.lListado(0).AddItem SupData(i).Name & " - #" & i
    Next

    DoEvents
    Exit Sub
Fallo:
    MsgBox "Error al intentar cargar el indice " & i & " de GrhIndex\indices.ini" & vbCrLf & "Err: " & err.Number & " - " & err.Description, vbCritical + vbOKOnly

End Sub

''
' Carga los indices de Objetos
'

Public Sub CargarIndicesOBJ()
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************

    On Error GoTo Fallo

    If FileExist(DirDats & "\OBJ.dat", vbArchive) = False Then
        MsgBox "Falta el archivo 'OBJ.dat' en " & DirDats, vbCritical
        End
    End If

    Dim Obj                     As Integer
    Dim Leer                    As New clsIniReader

    Call Leer.Initialize(DirDats & "\OBJ.dat")
    frmMain.lListado(3).Clear
    NumOBJs = Val(Leer.GetValue("INIT", "NumOBJs"))
    ReDim ObjData(1 To NumOBJs) As ObjData

    For Obj = 1 To NumOBJs
        frmCargando.X.Caption = "Cargando Datos de Objetos..." & Obj & "/" & NumOBJs
        DoEvents
        ObjData(Obj).Name = Leer.GetValue("OBJ" & Obj, "Name")
        ObjData(Obj).GrhIndex = Val(Leer.GetValue("OBJ" & Obj, "GrhIndex"))
        ObjData(Obj).ObjType = Val(Leer.GetValue("OBJ" & Obj, "ObjType"))
        ObjData(Obj).Ropaje = Val(Leer.GetValue("OBJ" & Obj, "NumRopaje"))
        ObjData(Obj).Info = Leer.GetValue("OBJ" & Obj, "Info")
        ObjData(Obj).WeaponAnim = Val(Leer.GetValue("OBJ" & Obj, "Anim"))
        ObjData(Obj).Texto = Leer.GetValue("OBJ" & Obj, "Texto")
        ObjData(Obj).GrhSecundario = Val(Leer.GetValue("OBJ" & Obj, "GrhSec"))
        frmMain.lListado(3).AddItem ObjData(Obj).Name & " - #" & Obj
    Next Obj

    Exit Sub

Fallo:
    MsgBox "Error al intentar cargar el Objteto " & Obj & " de OBJ.dat en " & DirDats & vbCrLf & "Err: " & err.Number & " - " & err.Description, vbCritical + vbOKOnly

End Sub

''
' Carga los indices de Triggers
'

Public Sub CargarIndicesTriggers()
'*************************************************
'Author: ^[GS]^
'Last modified: 28/05/06
'*************************************************

    On Error GoTo Fallo
    If FileExist(DirIndex & "Triggers.ini", vbArchive) = False Then
        MsgBox "Falta el archivo 'Triggers.ini' en " & DirIndex, vbCritical
        End
    End If
    Dim NumT                    As Integer
    Dim T                       As Integer
    Dim Leer                    As New clsIniReader
    Call Leer.Initialize(DirIndex & "Triggers.ini")
    frmMain.lListado(4).Clear
    NumT = Val(Leer.GetValue("INIT", "NumTriggers"))
    For T = 1 To NumT
        frmMain.lListado(4).AddItem Leer.GetValue("Trig" & T, "Name") & " - #" & (T - 1)
    Next T

    Exit Sub
Fallo:
    MsgBox "Error al intentar cargar el Trigger " & T & " de Triggers.ini en " & DirIndex & vbCrLf & "Err: " & err.Number & " - " & err.Description, vbCritical + vbOKOnly

End Sub

''
' Carga los indices de Cuerpos
'

Public Sub CargarIndicesDeCuerpos()
'*************************************************
'Author: ^[GS]^
'Last modified: 29/05/06
'*************************************************

    On Error GoTo Fallo
    If FileExist(DirIndex & "Personajes.ind", vbArchive) = False Then
        MsgBox "Falta el archivo 'Personajes.ind' en " & DirIndex, vbCritical
        End
    End If
    Dim n                       As Integer
    Dim i                       As Integer
    n = FreeFile
    Open DirIndex & "Personajes.ind" For Binary Access Read As #n
    'cabecera
    Get #n, , MiCabecera
    'num de cabezas
    Get #n, , NumBodies
    'Resize array
    ReDim BodyData(0 To NumBodies + 1) As tBodyData
    ReDim MisCuerpos(0 To NumBodies + 1) As tIndiceCuerpo
    For i = 1 To NumBodies
        Get #n, , MisCuerpos(i)
        InitGrh BodyData(i).Walk(1), MisCuerpos(i).Body(1), 0
        InitGrh BodyData(i).Walk(2), MisCuerpos(i).Body(2), 0
        InitGrh BodyData(i).Walk(3), MisCuerpos(i).Body(3), 0
        InitGrh BodyData(i).Walk(4), MisCuerpos(i).Body(4), 0
        BodyData(i).HeadOffset.X = MisCuerpos(i).HeadOffsetX
        BodyData(i).HeadOffset.Y = MisCuerpos(i).HeadOffsetY
    Next i
    Close #n
    Exit Sub
Fallo:
    MsgBox "Error al intentar cargar el Cuerpo " & i & " de Personajes.ind en " & DirIndex & vbCrLf & "Err: " & err.Number & " - " & err.Description, vbCritical + vbOKOnly

End Sub

''
' Carga los indices de Cabezas
'

Public Sub CargarIndicesDeCabezas()
    On Error GoTo Fallo
    If FileExist(DirIndex & "Cabezas.ind", vbArchive) = False Then
        MsgBox "Falta el archivo 'Cabezas.ind' en " & DirIndex, vbCritical
        End
    End If
    Dim n                       As Integer
    Dim i                       As Integer
    Dim MisCabezas()            As tIndiceCabeza
    n = FreeFile
    Open DirIndex & "Cabezas.ind" For Binary Access Read As #n
    'cabecera
    Get #n, , MiCabecera
    'num de cabezas
    Get #n, , Numheads
    'Resize array
    ReDim HeadData(0 To Numheads + 1) As tHeadData
    ReDim MisCabezas(0 To Numheads + 1) As tIndiceCabeza
    For i = 1 To Numheads
        Get #n, , MisCabezas(i)
        InitGrh HeadData(i).Head(1), MisCabezas(i).Head(1), 0
        InitGrh HeadData(i).Head(2), MisCabezas(i).Head(2), 0
        InitGrh HeadData(i).Head(3), MisCabezas(i).Head(3), 0
        InitGrh HeadData(i).Head(4), MisCabezas(i).Head(4), 0
    Next i
    Close #n
    Exit Sub
Fallo:
    MsgBox "Error al intentar cargar la Cabeza " & i & " de Cabezas.ind en " & DirIndex & vbCrLf & "Err: " & err.Number & " - " & err.Description, vbCritical + vbOKOnly

End Sub

''
' Carga los indices de NPCs
'

Public Sub CargarIndicesNPC()
'*************************************************
'Author: ^[GS]^
'Last modified: 26/05/06
'*************************************************

'On Error GoTo Fallo
    On Error GoTo CargarIndicesNPC_Error

10  If FileExist(DirDats & "\NPCs.dat", vbArchive) = False Then
20      MsgBox "Falta el archivo 'NPCs.dat' en " & DirDats, vbCritical
30      End
40  End If
    'If FileExist(DirDats & "\NPCs-HOSTILES.dat", vbArchive) = False Then
    '    MsgBox "Falta el archivo 'NPCs-HOSTILES.dat' en " & DirDats, vbCritical
    '    End
    'End If
    Dim Trabajando              As String
    Dim NPC                     As Integer
    Dim Leer                    As New clsIniReader
50  frmMain.lListado(1).Clear
60  frmMain.lListado(2).Clear
70  Call Leer.Initialize(DirDats & "\NPCs.dat")
80  NumNPCs = Val(Leer.GetValue("INIT", "NumNPCs"))
    'Call Leer.Initialize(DirDats & "\NPCs-HOSTILES.dat")
    'NumNPCsHOST = Val(Leer.GetValue("INIT", "NumNPCs"))
90  ReDim NpcData(1000) As NpcData
100 Trabajando = "Dats\NPCs.dat"

110 For NPC = 1 To NumNPCs
120     NpcData(NPC).Name = Leer.GetValue("NPC" & NPC, "Name")

130     NpcData(NPC).Body = Val(Leer.GetValue("NPC" & NPC, "Body"))
140     NpcData(NPC).Head = Val(Leer.GetValue("NPC" & NPC, "Head"))
150     NpcData(NPC).Heading = Val(Leer.GetValue("NPC" & NPC, "Heading"))


160     If LenB(NpcData(NPC).Name) <> 0 Then frmMain.lListado(1).AddItem NpcData(NPC).Name & " - #" & NPC
170 Next

180 Exit Sub
Fallo:
190 MsgBox "Error al intentar cargar el NPC " & NPC & " de " & Trabajando & " en " & DirDats & vbCrLf & "Err: " & err.Number & " - " & err.Description, vbCritical + vbOKOnly

    On Error GoTo 0
    Exit Sub

CargarIndicesNPC_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento CargarIndicesNPC de Módulo modIndices línea: " & Erl())

End Sub
