Attribute VB_Name = "modEdicion"
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
' modEdicion
'
' @remarks Funciones de Edicion
' @author gshaxor@gmail.com
' @version 0.1.38
' @date 20061016

Option Explicit

''
' Vacia el Deshacer
'
Public Sub Deshacer_Clear()
'*************************************************
'Author: ^[GS]^
'Last modified: 15/10/06
'*************************************************
Dim i                           As Integer
    ' Vacio todos los campos afectados
    For i = 1 To maxDeshacer
        MapData_Deshacer_Info(i).Libre = True
    Next
    ' no ahi que deshacer
    frmMain.mnuDeshacer.Enabled = False
End Sub

''
' Agrega un Deshacer
'
Public Sub Deshacer_Add(ByVal Desc As String)
'*************************************************
'Author: ^[GS]^
'Last modified: 16/10/06
'*************************************************
    If frmMain.mnuUtilizarDeshacer.Checked = False Then Exit Sub

    Dim i                       As Integer
    Dim f                       As Integer
    Dim j                       As Integer
    ' Desplazo todos los deshacer uno hacia atras
    For i = maxDeshacer To 2 Step -1
        For f = XMinMapSize To XMaxMapSize
            For j = YMinMapSize To YMaxMapSize
                MapData_Deshacer(i, f, j) = MapData_Deshacer(i - 1, f, j)
            Next
        Next
        MapData_Deshacer_Info(i) = MapData_Deshacer_Info(i - 1)
    Next
    ' Guardo los valores
    For f = XMinMapSize To XMaxMapSize
        For j = YMinMapSize To YMaxMapSize
            MapData_Deshacer(1, f, j) = MapData(f, j)
        Next
    Next
    MapData_Deshacer_Info(1).Desc = Desc
    MapData_Deshacer_Info(1).Libre = False
    frmMain.mnuDeshacer.Caption = "&Deshacer (Ultimo: " & MapData_Deshacer_Info(1).Desc & ")"
    frmMain.mnuDeshacer.Enabled = True
End Sub

''
' Deshacer un paso del Deshacer
'
Public Sub Deshacer_Recover()
'*************************************************
'Author: ^[GS]^
'Last modified: 15/10/06
'*************************************************
Dim i                           As Integer
Dim f                           As Integer
Dim j                           As Integer
Dim Body                        As Integer
Dim Head                        As Integer
Dim Heading                     As Byte
    If MapData_Deshacer_Info(1).Libre = False Then
        ' Aplico deshacer
        For f = XMinMapSize To XMaxMapSize
            For j = YMinMapSize To YMaxMapSize
                If (MapData(f, j).NPCIndex <> 0 And MapData(f, j).NPCIndex <> MapData_Deshacer(1, f, j).NPCIndex) Or (MapData(f, j).NPCIndex <> 0 And MapData_Deshacer(1, f, j).NPCIndex = 0) Then
                    ' Si ahi un NPC, y en el deshacer es otro lo borramos
                    ' (o) Si aun no NPC y en el deshacer no esta
                    MapData(f, j).NPCIndex = 0
                    Call EraseChar(MapData(f, j).CharIndex)
                End If
                If MapData_Deshacer(1, f, j).NPCIndex <> 0 And MapData(f, j).NPCIndex = 0 Then
                    ' Si ahi un NPC en el deshacer y en el no esta lo hacemos
                    Body = NpcData(MapData_Deshacer(1, f, j).NPCIndex).Body
                    Head = NpcData(MapData_Deshacer(1, f, j).NPCIndex).Head
                    Heading = NpcData(MapData_Deshacer(1, f, j).NPCIndex).Heading
                    Call MakeChar(NextOpenChar(), Body, Head, Heading, f, j)
                Else
                    MapData(f, j) = MapData_Deshacer(1, f, j)
                End If
            Next
        Next
        MapData_Deshacer_Info(1).Libre = True
        ' Desplazo todos los deshacer uno hacia adelante
        For i = 1 To maxDeshacer - 1
            For f = XMinMapSize To XMaxMapSize
                For j = YMinMapSize To YMaxMapSize
                    MapData_Deshacer(i, f, j) = MapData_Deshacer(i + 1, f, j)
                Next
            Next
            MapData_Deshacer_Info(i) = MapData_Deshacer_Info(i + 1)
        Next
        ' borro el ultimo
        MapData_Deshacer_Info(maxDeshacer).Libre = True
        ' ahi para deshacer?
        If MapData_Deshacer_Info(1).Libre = True Then
            frmMain.mnuDeshacer.Caption = "&Deshacer (no ahi nada que deshacer)"
            frmMain.mnuDeshacer.Enabled = False
        Else
            frmMain.mnuDeshacer.Caption = "&Deshacer (Ultimo: " & MapData_Deshacer_Info(1).Desc & ")"
            frmMain.mnuDeshacer.Enabled = True
        End If
    Else
        MsgBox "No ahi acciones para deshacer", vbInformation
    End If
End Sub

''
' Manda una advertencia de Edicion Critica
'
' @return   Nos devuelve si acepta o no el cambio

Private Function EditWarning() As Boolean
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************
    If MsgBox(MSGDang, vbExclamation + vbYesNo) = vbNo Then
        EditWarning = True
    Else
        EditWarning = False
    End If
End Function


''
' Bloquea los Bordes del Mapa
'

Public Sub Bloquear_Bordes()
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************
Dim Y                           As Integer
Dim X                           As Integer

    If Not MapaCargado Then
        Exit Sub
    End If

    modEdicion.Deshacer_Add "Bloquear los bordes"    ' Hago deshacer

    For Y = YMinMapSize To YMaxMapSize
        For X = XMinMapSize To XMaxMapSize
            If X < MinXBorder Or X > MaxXBorder Or Y < MinYBorder Or Y > MaxYBorder Then
                MapData(X, Y).Blocked = 1
            End If
        Next X
    Next Y

    'Set changed flag
    MapInfo(CurMap).Changed = 1
End Sub


''
' Coloca la superficie seleccionada al azar en el mapa
'

Public Sub Superficie_Azar()
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************


Dim Y                           As Integer
Dim X                           As Integer
Dim Cuantos                     As Integer
Dim k                           As Integer

    On Error GoTo Superficie_Azar_Error

    Exit Sub
10  If Not MapaCargado Then
20      Exit Sub
30  End If

40  Cuantos = InputBox("Cuantos Grh se deben poner en este mapa?", "Poner Grh Al Azar", 0)
50  If Cuantos > 0 Then
60      modEdicion.Deshacer_Add "Insertar Superficie al Azar"    ' Hago deshacer
70      For k = 1 To Cuantos
80          X = RandomNumber(10, 90)
90          Y = RandomNumber(10, 90)
100         If frmConfigSup.MOSAICO.Value = vbChecked Then
                Dim aux         As Integer
                Dim dy          As Integer
                Dim dX          As Integer
110             If frmConfigSup.DespMosaic.Value = vbChecked Then
120                 dy = Val(frmConfigSup.DMLargo)
130                 dX = Val(frmConfigSup.DMAncho.Text)
140             Else
150                 dy = 0
160                 dX = 0
170             End If

180             If frmMain.mnuAutoCompletarSuperficies.Checked = False Then
190                 aux = Val(frmMain.cGrh.Text) + _
                          (((Y + dy) Mod frmConfigSup.mLargo.Text) * frmConfigSup.mAncho.Text) + ((X + dX) Mod frmConfigSup.mAncho.Text)
200                 If frmMain.cInsertarBloqueo.Value = True Then
210                     MapData(X, Y).Blocked = 1
220                 Else
230                     MapData(X, Y).Blocked = 0
240                 End If
250                 MapData(X, Y).Graphic(Val(frmMain.cCapas.Text)).GrhIndex = aux
260                 InitGrh MapData(X, Y).Graphic(Val(frmMain.cCapas.Text)), aux
270             Else
                    Dim tXX As Integer, tYY As Integer, i As Integer, j As Integer, desptile As Integer
280                 tXX = X
290                 tYY = Y
300                 desptile = 0
310                 For i = 1 To frmConfigSup.mLargo.Text
320                     For j = 1 To frmConfigSup.mAncho.Text
330                         aux = Val(frmMain.cGrh.Text) + desptile

340                         If frmMain.cInsertarBloqueo.Value = True Then
350                             MapData(tXX, tYY).Blocked = 1
360                         Else
370                             MapData(tXX, tYY).Blocked = 0
380                         End If

390                         MapData(tXX, tYY).Graphic(Val(frmMain.cCapas.Text)).GrhIndex = aux

400                         InitGrh MapData(tXX, tYY).Graphic(Val(frmMain.cCapas.Text)), aux
410                         tXX = tXX + 1
420                         desptile = desptile + 1
430                     Next
440                     tXX = X
450                     tYY = tYY + 1
460                 Next
470                 tYY = Y
480             End If
490         End If
500     Next
510 End If

    'Set changed flag
520 MapInfo(CurMap).Changed = 1

    On Error GoTo 0
    Exit Sub

Superficie_Azar_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento Superficie_Azar de M�dulo modEdicion l�nea: " & Erl())

End Sub

''
' Coloca la superficie seleccionada en todos los bordes
'

Public Sub Superficie_Bordes()
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************

Dim Y                           As Integer
Dim X                           As Integer

    If Not MapaCargado Then
        Exit Sub
    End If

    modEdicion.Deshacer_Add "Insertar Superficie en todos los bordes"    ' Hago deshacer

    For Y = YMinMapSize To YMaxMapSize
        For X = XMinMapSize To XMaxMapSize

            If X < MinXBorder Or X > MaxXBorder Or Y < MinYBorder Or Y > MaxYBorder Then

                If frmConfigSup.MOSAICO.Value = vbChecked Then
                    Dim aux     As Integer
                    aux = Val(frmMain.cGrh.Text) + _
                          ((Y Mod frmConfigSup.mLargo) * frmConfigSup.mAncho) + (X Mod frmConfigSup.mAncho)
                    If frmMain.cInsertarBloqueo.Value = True Then
                        MapData(X, Y).Blocked = 1
                    Else
                        MapData(X, Y).Blocked = 0
                    End If
                    MapData(X, Y).Graphic(Val(frmMain.cCapas.Text)).GrhIndex = aux
                    'Setup GRH
                    InitGrh MapData(X, Y).Graphic(Val(frmMain.cCapas.Text)), aux
                Else
                    'Else Place graphic
                    If frmMain.cInsertarBloqueo.Value = True Then
                        MapData(X, Y).Blocked = 1
                    Else
                        MapData(X, Y).Blocked = 0
                    End If

                    MapData(X, Y).Graphic(Val(frmMain.cCapas.Text)).GrhIndex = Val(frmMain.cGrh.Text)

                    'Setup GRH

                    InitGrh MapData(X, Y).Graphic(Val(frmMain.cCapas.Text)), Val(frmMain.cGrh.Text)
                End If
                'Erase NPCs
                If MapData(X, Y).NPCIndex > 0 Then
                    EraseChar MapData(X, Y).CharIndex
                    MapData(X, Y).NPCIndex = 0
                End If

                'Erase Objs
                MapData(X, Y).OBJInfo.objindex = 0
                MapData(X, Y).OBJInfo.Amount = 0
                MapData(X, Y).ObjGrh.GrhIndex = 0

                'Clear exits
                MapData(X, Y).TileExit.Map = 0
                MapData(X, Y).TileExit.X = 0
                MapData(X, Y).TileExit.Y = 0

            End If

        Next X
    Next Y

    'Set changed flag
    MapInfo(CurMap).Changed = 1

End Sub

''
' Coloca la misma superficie seleccionada en todo el mapa
'

Public Sub Superficie_Todo()
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************

    If EditWarning Then Exit Sub

    Dim Y                       As Integer
    Dim X                       As Integer

    If Not MapaCargado Then
        Exit Sub
    End If

    modEdicion.Deshacer_Add "Insertar Superficie en todo el mapa"    ' Hago deshacer

    For Y = YMinMapSize To YMaxMapSize
        For X = XMinMapSize To XMaxMapSize

            If frmConfigSup.MOSAICO.Value = vbChecked Then
                Dim aux         As Integer
                aux = Val(frmMain.cGrh.Text) + _
                      ((Y Mod frmConfigSup.mLargo) * frmConfigSup.mAncho) + (X Mod frmConfigSup.mAncho)
                MapData(X, Y).Graphic(Val(frmMain.cCapas.Text)).GrhIndex = aux
                'Setup GRH
                InitGrh MapData(X, Y).Graphic(Val(frmMain.cCapas.Text)), aux
            Else
                'Else Place graphic
                MapData(X, Y).Graphic(Val(frmMain.cCapas.Text)).GrhIndex = Val(frmMain.cGrh.Text)
                'Setup GRH
                InitGrh MapData(X, Y).Graphic(Val(frmMain.cCapas.Text)), Val(frmMain.cGrh.Text)
            End If

        Next X
    Next Y

    'Set changed flag
    MapInfo(CurMap).Changed = 1

End Sub


''
' Modifica los bloqueos de todo mapa
'
' @param Valor Especifica el estado de Bloqueo que se asignara


Public Sub Bloqueo_Todo(ByVal Valor As Byte)
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************

    If EditWarning Then Exit Sub


    Dim Y                       As Integer
    Dim X                       As Integer

    If Not MapaCargado Then
        Exit Sub
    End If

    modEdicion.Deshacer_Add "Bloquear todo el mapa"    ' Hago deshacer

    For Y = YMinMapSize To YMaxMapSize
        For X = XMinMapSize To XMaxMapSize
            MapData(X, Y).Blocked = Valor
        Next X
    Next Y

    'Set changed flag
    MapInfo(CurMap).Changed = 1

End Sub

''
' Borra todo el Mapa menos los Triggers
'

Public Sub Borrar_Mapa()
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************

    If EditWarning Then Exit Sub


    Dim Y                       As Integer
    Dim X                       As Integer

    If Not MapaCargado Then
        Exit Sub
    End If

    modEdicion.Deshacer_Add "Borrar todo el mapa menos Triggers"    ' Hago deshacer

    For Y = YMinMapSize To YMaxMapSize
        For X = XMinMapSize To XMaxMapSize
            MapData(X, Y).Graphic(1).GrhIndex = 1
            'Change blockes status
            MapData(X, Y).Blocked = 0

            'Erase layer 2 and 3
            MapData(X, Y).Graphic(2).GrhIndex = 0
            MapData(X, Y).Graphic(3).GrhIndex = 0
            MapData(X, Y).Graphic(4).GrhIndex = 0

            'Erase NPCs
            If MapData(X, Y).NPCIndex > 0 Then
                EraseChar MapData(X, Y).CharIndex
                MapData(X, Y).NPCIndex = 0
            End If

            'Erase Objs
            MapData(X, Y).OBJInfo.objindex = 0
            MapData(X, Y).OBJInfo.Amount = 0
            MapData(X, Y).ObjGrh.GrhIndex = 0

            'Clear exits
            MapData(X, Y).TileExit.Map = 0
            MapData(X, Y).TileExit.X = 0
            MapData(X, Y).TileExit.Y = 0

            InitGrh MapData(X, Y).Graphic(1), 1

        Next X
    Next Y

    'Set changed flag
    MapInfo(CurMap).Changed = 1
End Sub

''
' Elimita los NPCs del mapa
'
' @param Hostiles Indica si elimita solo hostiles o solo npcs no hostiles

Public Sub Quitar_NPCs(ByVal Hostiles As Boolean)
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************

    If EditWarning Then Exit Sub

    modEdicion.Deshacer_Add "Quitar todos los NPCs" & IIf(Hostiles = True, " Hostiles", "")    ' Hago deshacer

    Dim Y                       As Integer
    Dim X                       As Integer

    Dim i                       As Long
    For i = 1 To LastChar
        CharList(i).Active = 0
    Next i
    LastChar = 0

    For Y = YMinMapSize To YMaxMapSize
        For X = XMinMapSize To XMaxMapSize
            If MapData(X, Y).NPCIndex > 0 Then
                If (Hostiles = True And MapData(X, Y).NPCIndex >= 500) Or (Hostiles = False And MapData(X, Y).NPCIndex < 500) Then
                    'If (Hostiles = True And MapData(X, Y).NPCIndex >= 500) Then
                    Call EraseChar(MapData(X, Y).CharIndex)
                    MapData(X, Y).CharIndex = 0
                    MapData(X, Y).NPCIndex = 0
                    bRefreshRadar = True    ' Radar
                End If
            End If
        Next X
    Next Y



    'Set changed flag
    MapInfo(CurMap).Changed = 1
End Sub

''
' Elimita todos los Objetos del mapa
'

Public Sub Quitar_Objetos()
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************

    If EditWarning Then Exit Sub

    modEdicion.Deshacer_Add "Quitar todos los Objetos"    ' Hago deshacer

    Dim Y                       As Integer
    Dim X                       As Integer

    For Y = YMinMapSize To YMaxMapSize
        For X = XMinMapSize To XMaxMapSize
            If MapData(X, Y).OBJInfo.objindex > 0 Then
                If MapData(X, Y).Graphic(3).GrhIndex = MapData(X, Y).ObjGrh.GrhIndex Then MapData(X, Y).Graphic(3).GrhIndex = 0
                MapData(X, Y).OBJInfo.objindex = 0
                MapData(X, Y).OBJInfo.Amount = 0
            End If
        Next X
    Next Y

    'Set changed flag
    MapInfo(CurMap).Changed = 1
End Sub

''
' Elimina todos los Triggers del mapa
'

Public Sub Quitar_Triggers()
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************

    If EditWarning Then Exit Sub

    modEdicion.Deshacer_Add "Quitar todos los Triggers"    ' Hago deshacer

    Dim Y                       As Integer
    Dim X                       As Integer

    For Y = YMinMapSize To YMaxMapSize
        For X = XMinMapSize To XMaxMapSize
            If MapData(X, Y).Trigger > 0 Then
                MapData(X, Y).Trigger = 0
            End If
        Next X
    Next Y

    'Set changed flag
    MapInfo(CurMap).Changed = 1
End Sub

''
' Elimita todos los translados del mapa
'

Public Sub Quitar_Translados()
'*************************************************
'Author: ^[GS]^
'Last modified: 16/10/06
'*************************************************

    If EditWarning Then Exit Sub

    modEdicion.Deshacer_Add "Quitar todos los Translados"    ' Hago deshacer

    Dim Y                       As Integer
    Dim X                       As Integer

    For Y = YMinMapSize To YMaxMapSize
        For X = XMinMapSize To XMaxMapSize
            If MapData(X, Y).TileExit.Map > 0 Then
                MapData(X, Y).TileExit.Map = 0
                MapData(X, Y).TileExit.X = 0
                MapData(X, Y).TileExit.Y = 0
            End If
        Next X
    Next Y

    'Set changed flag
    MapInfo(CurMap).Changed = 1

End Sub

''
' Elimita todo lo que se encuentre en los bordes del mapa
'

Public Sub Quitar_Bordes()
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************

    If EditWarning Then Exit Sub

    '*****************************************************************
    'Clears a border in a room with current GRH
    '*****************************************************************

    Dim Y                       As Integer
    Dim X                       As Integer

    If Not MapaCargado Then
        Exit Sub
    End If

    modEdicion.Deshacer_Add "Quitar todos los Bordes"    ' Hago deshacer

    For Y = YMinMapSize To YMaxMapSize
        For X = XMinMapSize To XMaxMapSize

            If X < MinXBorder Or X > MaxXBorder Or Y < MinYBorder Or Y > MaxYBorder Then

                MapData(X, Y).Graphic(1).GrhIndex = 1
                InitGrh MapData(X, Y).Graphic(1), 1
                MapData(X, Y).Blocked = 0

                'Erase NPCs
                If MapData(X, Y).NPCIndex > 0 Then
                    EraseChar MapData(X, Y).CharIndex
                    MapData(X, Y).NPCIndex = 0
                End If

                'Erase Objs
                MapData(X, Y).OBJInfo.objindex = 0
                MapData(X, Y).OBJInfo.Amount = 0
                MapData(X, Y).ObjGrh.GrhIndex = 0

                'Clear exits
                MapData(X, Y).TileExit.Map = 0
                MapData(X, Y).TileExit.X = 0
                MapData(X, Y).TileExit.Y = 0

                ' Triggers
                MapData(X, Y).Trigger = 0

            End If

        Next X
    Next Y

    'Set changed flag
    MapInfo(CurMap).Changed = 1

End Sub

''
' Elimita una capa completa del mapa
'
' @param Capa Especifica la capa


Public Sub Quitar_Capa(ByVal Capa As Byte)
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************

    If EditWarning Then Exit Sub

    '*****************************************************************
    'Clears one layer
    '*****************************************************************

    Dim Y                       As Integer
    Dim X                       As Integer

    If Not MapaCargado Then
        Exit Sub
    End If
    modEdicion.Deshacer_Add "Quitar Capa " & Capa    ' Hago deshacer

    For Y = YMinMapSize To YMaxMapSize
        For X = XMinMapSize To XMaxMapSize
            If Capa = 1 Then
                MapData(X, Y).Graphic(Capa).GrhIndex = 1
            Else
                MapData(X, Y).Graphic(Capa).GrhIndex = 0
            End If
        Next X
    Next Y

    'Set changed flag
    MapInfo(CurMap).Changed = 1
End Sub

''
' Acciona la operacion al hacer doble click en una posicion del mapa
'
' @param tX Especifica la posicion X en el mapa
' @param tY Espeficica la posicion Y en el mapa

Sub DobleClick(tX As Integer, tY As Integer)
'*************************************************
'Author: ^[GS]^
'Last modified: 01/11/08
'*************************************************
' Selecciones
Seleccionando = False          ' GS
    SeleccionIX = 0
    SeleccionIY = 0
    SeleccionFX = 0
    SeleccionFY = 0
    ' Translados
    Dim tTrans                  As WorldPos
    tTrans = MapData(tX, tY).TileExit
    If tTrans.Map > 0 Then
        If LenB(frmMain.Dialog.FileName) <> 0 Then
            If FileExist(PATH_Save & NameMap_Save & tTrans.Map & ".map", vbArchive) = True Then
                Call modMapIO.NuevoMapa
                frmMain.Dialog.FileName = PATH_Save & NameMap_Save & tTrans.Map & ".map"
                modMapIO.AbrirMapa frmMain.Dialog.FileName
                UserPos.X = tTrans.X
                UserPos.Y = tTrans.Y
                If WalkMode = True Then
                    MoveCharbyPos UserCharIndex, UserPos.X, UserPos.Y
                    CharList(UserCharIndex).Heading = SOUTH
                End If
                frmMain.mnuReAbrirMapa.Enabled = True
            End If
        End If
    End If
End Sub

''
' Realiza una operacion de edicion aislada sobre el mapa
'
' @param Button Indica el estado del Click del mouse
' @param tX Especifica la posicion X en el mapa
' @param tY Especifica la posicion Y en el mapa

Sub ClickEdit(Button As Integer, tX As Integer, tY As Integer)
'*************************************************
'Author: ^[GS]^
'Last modified: 20/05/06
'*************************************************

Dim LoopC                       As Integer
Dim NPCIndex                    As Integer
Dim objindex                    As Integer
Dim Head                        As Integer
Dim Body                        As Integer
Dim Heading                     As Byte

    If tY < YMinMapSize Or tY > YMaxMapSize Then Exit Sub
    If tX < XMinMapSize Or tX > XMaxMapSize Then Exit Sub


    If Button = 0 Then
        ' Pasando sobre :P
        SobreY = tY
        SobreX = tX

    End If

    'Right

    If Button = vbRightButton Then
        ' Posicion
        frmMain.StatTxt.Text = frmMain.StatTxt.Text & ENDL & ENDL & "Posici�n " & tX & "," & tY

        ' Bloqueos
        If MapData(tX, tY).Blocked = 1 Then frmMain.StatTxt.Text = frmMain.StatTxt.Text & " (BLOQ)"

        ' Translados
        If MapData(tX, tY).TileExit.Map > 0 Then
            If frmMain.mnuAutoCapturarTranslados.Checked = True Then
                frmMain.tTMapa.Text = MapData(tX, tY).TileExit.Map
                frmMain.tTX.Text = MapData(tX, tY).TileExit.X
                frmMain.tTY = MapData(tX, tY).TileExit.Y
            End If
            frmMain.StatTxt.Text = frmMain.StatTxt.Text & " (Trans.: " & MapData(tX, tY).TileExit.Map & "," & MapData(tX, tY).TileExit.X & "," & MapData(tX, tY).TileExit.Y & ")"
        End If

        ' NPCs
        If MapData(tX, tY).NPCIndex > 0 Then
            If MapData(tX, tY).NPCIndex > 499 Then
                frmMain.StatTxt.Text = frmMain.StatTxt.Text & " (NPC-Hostil: " & MapData(tX, tY).NPCIndex & " - " & NpcData(MapData(tX, tY).NPCIndex).Name & ")"
            Else
                frmMain.StatTxt.Text = frmMain.StatTxt.Text & " (NPC: " & MapData(tX, tY).NPCIndex & " - " & NpcData(MapData(tX, tY).NPCIndex).Name & ")"
                frmMain.cNumFunc(0).Text = MapData(tX, tY).NPCIndex
            End If
        End If

        ' OBJs
        If MapData(tX, tY).OBJInfo.objindex > 0 Then
            frmMain.StatTxt.Text = frmMain.StatTxt.Text & " (Obj: " & MapData(tX, tY).OBJInfo.objindex & " - " & ObjData(MapData(tX, tY).OBJInfo.objindex).Name & " - Cant.:" & MapData(tX, tY).OBJInfo.Amount & ") GrhIndex Del OBJ: " & ObjData(MapData(tX, tY).OBJInfo.objindex).GrhIndex
        End If

        ' Capas
        frmMain.StatTxt.Text = frmMain.StatTxt.Text & ENDL & "Capa1: " & MapData(tX, tY).Graphic(1).GrhIndex & " - Capa2: " & MapData(tX, tY).Graphic(2).GrhIndex & " - Capa3: " & MapData(tX, tY).Graphic(3).GrhIndex & " - Capa4: " & MapData(tX, tY).Graphic(4).GrhIndex
        If frmMain.mnuAutoCapturarSuperficie.Checked = True And frmMain.cSeleccionarSuperficie.Value = False Then
            If MapData(tX, tY).Graphic(4).GrhIndex <> 0 Then
                frmMain.cCapas.Text = 4
                frmMain.cGrh.Text = MapData(tX, tY).Graphic(4).GrhIndex
            ElseIf MapData(tX, tY).Graphic(3).GrhIndex <> 0 Then
                frmMain.cCapas.Text = 3
                frmMain.cGrh.Text = MapData(tX, tY).Graphic(3).GrhIndex
            ElseIf MapData(tX, tY).Graphic(2).GrhIndex <> 0 Then
                frmMain.cCapas.Text = 2
                frmMain.cGrh.Text = MapData(tX, tY).Graphic(2).GrhIndex
            ElseIf MapData(tX, tY).Graphic(1).GrhIndex <> 0 Then
                frmMain.cCapas.Text = 1
                frmMain.cGrh.Text = MapData(tX, tY).Graphic(1).GrhIndex
            End If
        End If

        If frmMain.bSelectSurface Then
            Static LastFinded As Byte
            Dim k As Integer
            If Button = 2 Then
                If LastFinded = 0 Then
                    For LoopC = 0 To MaxSup
                        If SupData(LoopC).Grh = Val(MapData(tX, tY).Graphic(Val(frmMain.cCapas.Text)).GrhIndex) And Val(MapData(tX, tY).Graphic(Val(frmMain.cCapas.Text)).GrhIndex) > 0 Then
                            For k = 0 To frmMain.lListado(0).ListCount - 1
                                If DameGrhIndex(Val(ReadField(2, frmMain.lListado(0).List(k), Asc("#")))) = Val(SupData(LoopC).Grh) Then
                                    'frmMain.lListado(0).listIndex = k - 1
                                    frmMain.lListado(0).Selected(k - 1) = True
                                    frmMain.lListado(0).listIndex = k - 1
                                    'frmMain.lListado(0).Refresh
                                    Exit For
                                End If
                            Next k
                        End If
                    Next LoopC
                End If
            End If
        End If

        ' Limpieza
        If Len(frmMain.StatTxt.Text) > 4000 Then
            frmMain.StatTxt.Text = Right(frmMain.StatTxt.Text, 3000)
        End If
        frmMain.StatTxt.SelStart = Len(frmMain.StatTxt.Text)
        
        '[/About]
        If frmMain.cSeleccionarSuperficie.Value Then
            If Val(frmMain.cCapas.Text) = 1 Then
                If MapData(tX, tY).Graphic(1).GrhIndex <> 1 Then
                    modEdicion.Deshacer_Add "Quitar Capa 1"    ' Hago deshacer
                    MapInfo(CurMap).Changed = 1    'Set changed flag
                    MapData(tX, tY).Graphic(1).GrhIndex = 1
                    Exit Sub
                End If
            ElseIf MapData(tX, tY).Graphic(Val(frmMain.cCapas.Text)).GrhIndex <> 0 Then
                modEdicion.Deshacer_Add "Quitar Capa " & frmMain.cCapas.Text    ' Hago deshacer
                MapInfo(CurMap).Changed = 1    'Set changed flag
                MapData(tX, tY).Graphic(Val(frmMain.cCapas.Text)).GrhIndex = 0
                Exit Sub
            End If
        End If
        
        '************** Place blocked tile
        If frmMain.cInsertarBloqueo.Value Then
            If MapData(tX, tY).Blocked <> 0 Then
                modEdicion.Deshacer_Add "Quitar Bloqueo"    ' Hago deshacer
                MapInfo(CurMap).Changed = 1    'Set changed flag
                MapData(tX, tY).Blocked = 0
            End If
        End If

        If frmMain.cInsertarTrans.Value Then
            modEdicion.Deshacer_Add "Quitar Translado"    ' Hago deshacer
            MapInfo(CurMap).Changed = 1    'Set changed flag
            MapData(tX, tY).TileExit.Map = 0
            MapData(tX, tY).TileExit.X = 0
            MapData(tX, tY).TileExit.Y = 0
        End If


        '************** Place NPC
        If frmMain.cInsertarFunc(0).Value Or frmMain.cInsertarFunc(1).Value Then
            'If frmMain.chkNoHostiles.Value = vbChecked Then    '[/About] 19-12-12
            If MapData(tX, tY).NPCIndex > 0 Then
                modEdicion.Deshacer_Add "Quitar NPC"    ' Hago deshacer
                MapInfo(CurMap).Changed = 1    'Set changed flag
                MapData(tX, tY).NPCIndex = 0
                Call EraseChar(MapData(tX, tY).CharIndex)
            End If
        End If
        
        If frmMain.cInsertarFunc(2).Value Then     ' Insertar Objeto
            If MapData(tX, tY).OBJInfo.objindex <> 0 Or MapData(tX, tY).OBJInfo.Amount <> 0 Then
                modEdicion.Deshacer_Add "Quitar Objeto"    ' Hago deshacer
                MapInfo(CurMap).Changed = 1    'Set changed flag
                If MapData(tX, tY).Graphic(3).GrhIndex = MapData(tX, tY).ObjGrh.GrhIndex Then MapData(tX, tY).Graphic(3).GrhIndex = 0
                MapData(tX, tY).ObjGrh.GrhIndex = 0
                MapData(tX, tY).OBJInfo.objindex = 0
                MapData(tX, tY).OBJInfo.Amount = 0
            End If
        End If
        
        ' ***************** Control de Funcion de Triggers *****************
        If frmMain.cInsertarTrigger.Value = True Then    ' Insertar Trigger
            If MapData(tX, tY).Trigger <> 0 Then
                modEdicion.Deshacer_Add "Quitar Trigger"    ' Hago deshacer
                MapInfo(CurMap).Changed = 1    'Set changed flag
                MapData(tX, tY).Trigger = 0
            End If
        End If
        
        Exit Sub
    End If


    'Left click
    If Button = vbLeftButton Then

        'Erase 2-3
        If frmMain.cQuitarEnTodasLasCapas.Value = True Then
            modEdicion.Deshacer_Add "Quitar Todas las Capas (2/3)"    ' Hago deshacer
            MapInfo(CurMap).Changed = 1    'Set changed flag
            For LoopC = 2 To 3
                MapData(tX, tY).Graphic(LoopC).GrhIndex = 0
            Next LoopC

            Exit Sub
        End If

        'Borrar "esta" Capa
        If frmMain.cQuitarEnEstaCapa.Value = True Then
            If Val(frmMain.cCapas.Text) = 1 Then
                If MapData(tX, tY).Graphic(1).GrhIndex <> 1 Then
                    modEdicion.Deshacer_Add "Quitar Capa 1"    ' Hago deshacer
                    MapInfo(CurMap).Changed = 1    'Set changed flag
                    MapData(tX, tY).Graphic(1).GrhIndex = 1
                    Exit Sub
                End If
            ElseIf MapData(tX, tY).Graphic(Val(frmMain.cCapas.Text)).GrhIndex <> 0 Then
                modEdicion.Deshacer_Add "Quitar Capa " & frmMain.cCapas.Text    ' Hago deshacer
                MapInfo(CurMap).Changed = 1    'Set changed flag
                MapData(tX, tY).Graphic(Val(frmMain.cCapas.Text)).GrhIndex = 0
                Exit Sub
            End If
        End If

        '************** Place grh
        If frmMain.cSeleccionarSuperficie.Value = True Then

            If frmConfigSup.MOSAICO.Value = vbChecked Then
                Dim aux         As Integer
                Dim dy          As Integer
                Dim dX          As Integer
                If frmConfigSup.DespMosaic.Value = vbChecked Then
                    dy = Val(frmConfigSup.DMLargo)
                    dX = Val(frmConfigSup.DMAncho.Text)
                Else
                    dy = 0
                    dX = 0
                End If

                If frmMain.mnuAutoCompletarSuperficies.Checked = False Then
                    modEdicion.Deshacer_Add "Insertar Superficie' Hago deshacer"
                    MapInfo(CurMap).Changed = 1    'Set changed flag
                    aux = Val(frmMain.cGrh.Text) + _
                          (((tY + dy) Mod frmConfigSup.mLargo.Text) * frmConfigSup.mAncho.Text) + ((tX + dX) Mod frmConfigSup.mAncho.Text)
                    If MapData(tX, tY).Graphic(Val(frmMain.cCapas.Text)).GrhIndex <> aux Or MapData(tX, tY).Blocked <> frmMain.SelectPanel(2).Value Then
                        MapData(tX, tY).Graphic(Val(frmMain.cCapas.Text)).GrhIndex = aux
                        InitGrh MapData(tX, tY).Graphic(Val(frmMain.cCapas.Text)), aux
                    End If
                Else
                    modEdicion.Deshacer_Add "Insertar Auto-Completar Superficie' Hago deshacer"
                    MapInfo(CurMap).Changed = 1    'Set changed flag
                    Dim tXX As Integer, tYY As Integer, i As Integer, j As Integer, desptile As Integer
                    tXX = tX
                    tYY = tY
                    desptile = 0
                    For i = 1 To frmConfigSup.mLargo.Text
                        For j = 1 To frmConfigSup.mAncho.Text
                            aux = Val(frmMain.cGrh.Text) + desptile
                            MapData(tXX, tYY).Graphic(Val(frmMain.cCapas.Text)).GrhIndex = aux
                            InitGrh MapData(tXX, tYY).Graphic(Val(frmMain.cCapas.Text)), aux
                            tXX = tXX + 1
                            desptile = desptile + 1
                        Next
                        tXX = tX
                        tYY = tYY + 1
                    Next
                    tYY = tY


                End If

            Else
                'Else Place graphic
                If MapData(tX, tY).Blocked <> frmMain.SelectPanel(2).Value Or MapData(tX, tY).Graphic(Val(frmMain.cCapas.Text)).GrhIndex <> Val(frmMain.cGrh.Text) Then
                    modEdicion.Deshacer_Add "Quitar Superficie en Capa " & frmMain.cCapas.Text    ' Hago deshacer
                    MapInfo(CurMap).Changed = 1    'Set changed flag
                    MapData(tX, tY).Graphic(Val(frmMain.cCapas.Text)).GrhIndex = Val(frmMain.cGrh.Text)
                    'Setup GRH
                    InitGrh MapData(tX, tY).Graphic(Val(frmMain.cCapas.Text)), Val(frmMain.cGrh.Text)
                End If
            End If

        End If
        
        '************** Place blocked tile
        If frmMain.cInsertarBloqueo.Value = True Then
            If MapData(tX, tY).Blocked <> 1 Then
                modEdicion.Deshacer_Add "Insertar Bloqueo"    ' Hago deshacer
                MapInfo(CurMap).Changed = 1    'Set changed flag
                MapData(tX, tY).Blocked = 1
            End If
        ElseIf frmMain.cQuitarBloqueo.Value = True Then
            If MapData(tX, tY).Blocked <> 0 Then
                modEdicion.Deshacer_Add "Quitar Bloqueo"    ' Hago deshacer
                MapInfo(CurMap).Changed = 1    'Set changed flag
                MapData(tX, tY).Blocked = 0
            End If
        End If

        '************** Place exit
        If frmMain.cInsertarTrans.Value = True Then
            If Cfg_TrOBJ > 0 And Cfg_TrOBJ <= NumOBJs And frmMain.cInsertarTransOBJ.Value = True Then
                If ObjData(Cfg_TrOBJ).ObjType = 19 Then
                    modEdicion.Deshacer_Add "Insertar Objeto de Translado"    ' Hago deshacer
                    MapInfo(CurMap).Changed = 1    'Set changed flag
                    InitGrh MapData(tX, tY).ObjGrh, ObjData(Cfg_TrOBJ).GrhIndex
                    MapData(tX, tY).OBJInfo.objindex = Cfg_TrOBJ
                    MapData(tX, tY).OBJInfo.Amount = 1
                End If
            End If
            If Val(frmMain.tTMapa.Text) < 0 Or Val(frmMain.tTMapa.Text) > 9000 Then
                MsgBox "Valor de Mapa invalido", vbCritical + vbOKOnly
                Exit Sub
            ElseIf Val(frmMain.tTX.Text) < 0 Or Val(frmMain.tTX.Text) > XMaxMapSize Then
                MsgBox "Valor de X invalido", vbCritical + vbOKOnly
                Exit Sub
            ElseIf Val(frmMain.tTY.Text) < 0 Or Val(frmMain.tTY.Text) > YMaxMapSize Then
                MsgBox "Valor de Y invalido", vbCritical + vbOKOnly
                Exit Sub
            End If
            If frmMain.cUnionManual.Value = True Then
                modEdicion.Deshacer_Add "Insertar Translado de Union Manual' Hago deshacer"
                MapInfo(CurMap).Changed = 1    'Set changed flag
                MapData(tX, tY).TileExit.Map = Val(frmMain.tTMapa.Text)
                If tX >= 90 Then    ' 21 ' derecha
                    MapData(tX, tY).TileExit.X = 12
                    MapData(tX, tY).TileExit.Y = tY
                ElseIf tX <= 11 Then    ' 9 ' izquierda
                    MapData(tX, tY).TileExit.X = 91
                    MapData(tX, tY).TileExit.Y = tY
                End If
                If tY >= 91 Then    ' 94 '''' hacia abajo
                    MapData(tX, tY).TileExit.Y = 11
                    MapData(tX, tY).TileExit.X = tX
                ElseIf tY <= 10 Then    ''' hacia arriba
                    MapData(tX, tY).TileExit.Y = 90
                    MapData(tX, tY).TileExit.X = tX
                End If
            Else
                modEdicion.Deshacer_Add "Insertar Translado"    ' Hago deshacer
                MapInfo(CurMap).Changed = 1    'Set changed flag
                MapData(tX, tY).TileExit.Map = Val(frmMain.tTMapa.Text)
                MapData(tX, tY).TileExit.X = Val(frmMain.tTX.Text)
                MapData(tX, tY).TileExit.Y = Val(frmMain.tTY.Text)
            End If
        ElseIf frmMain.cQuitarTrans.Value = True Then
            modEdicion.Deshacer_Add "Quitar Translado"    ' Hago deshacer
            MapInfo(CurMap).Changed = 1    'Set changed flag
            MapData(tX, tY).TileExit.Map = 0
            MapData(tX, tY).TileExit.X = 0
            MapData(tX, tY).TileExit.Y = 0
        End If

        '************** Place NPC
        If frmMain.cInsertarFunc(0).Value = True Then
            If frmMain.cNumFunc(0).Text > 0 Then
                NPCIndex = frmMain.cNumFunc(0).Text
                If NPCIndex <> MapData(tX, tY).NPCIndex Then
                    modEdicion.Deshacer_Add "Insertar NPC"    ' Hago deshacer
                    MapInfo(CurMap).Changed = 1    'Set changed flag
                    Body = NpcData(NPCIndex).Body
                    Head = NpcData(NPCIndex).Head
                    Heading = NpcData(NPCIndex).Heading
                    Call MakeChar(NextOpenChar(), Body, Head, Heading, tX, tY)
                    MapData(tX, tY).NPCIndex = NPCIndex
                End If
            End If
        ElseIf frmMain.cInsertarFunc(1).Value = True Then
            If frmMain.cNumFunc(1).Text > 0 Then
                NPCIndex = frmMain.cNumFunc(1).Text
                If NPCIndex <> (MapData(tX, tY).NPCIndex) Then
                    modEdicion.Deshacer_Add "Insertar NPC Hostil' Hago deshacer"
                    MapInfo(CurMap).Changed = 1    'Set changed flag
                    Body = NpcData(NPCIndex).Body
                    Head = NpcData(NPCIndex).Head
                    Heading = NpcData(NPCIndex).Heading
                    Call MakeChar(NextOpenChar(), Body, Head, Heading, tX, tY)
                    MapData(tX, tY).NPCIndex = NPCIndex
                End If
            End If
        ElseIf frmMain.cQuitarFunc(0).Value = True Or frmMain.cQuitarFunc(1).Value = True Then

            If frmMain.chkNoHostiles.Value = vbChecked Then    '[/About] 19-12-12
                If MapData(tX, tY).NPCIndex > 0 Then
                    modEdicion.Deshacer_Add "Quitar NPC"    ' Hago deshacer
                    MapInfo(CurMap).Changed = 1    'Set changed flag
                    MapData(tX, tY).NPCIndex = 0
                    Call EraseChar(MapData(tX, tY).CharIndex)
                End If
            Else
                If MapData(tX, tY).NPCIndex > 150 Then
                    modEdicion.Deshacer_Add "Quitar NPC"    ' Hago deshacer
                    MapInfo(CurMap).Changed = 1    'Set changed flag
                    MapData(tX, tY).NPCIndex = 0
                    Call EraseChar(MapData(tX, tY).CharIndex)
                End If
            End If


        End If

        ' ***************** Control de Funcion de Objetos *****************
        If frmMain.cInsertarFunc(2).Value = True Then    ' Insertar Objeto
            If frmMain.cNumFunc(2).Text > 0 Then
                objindex = frmMain.cNumFunc(2).Text
                If MapData(tX, tY).OBJInfo.objindex <> objindex Or MapData(tX, tY).OBJInfo.Amount <> Val(frmMain.cCantFunc(2).Text) Then
                    modEdicion.Deshacer_Add "Insertar Objeto"    ' Hago deshacer
                    MapInfo(CurMap).Changed = 1    'Set changed flag
                    InitGrh MapData(tX, tY).ObjGrh, ObjData(objindex).GrhIndex
                    MapData(tX, tY).OBJInfo.objindex = objindex
                    MapData(tX, tY).OBJInfo.Amount = Val(frmMain.cCantFunc(2).Text)
                    Select Case ObjData(objindex).ObjType
                        Case 4, 8, 10, 22    ' Arboles, Carteles, Foros, Yacimientos
                            MapData(tX, tY).Graphic(3) = MapData(tX, tY).ObjGrh
                    End Select
                End If
            End If
        ElseIf frmMain.cQuitarFunc(2).Value = True Then    ' Quitar Objeto
            If MapData(tX, tY).OBJInfo.objindex <> 0 Or MapData(tX, tY).OBJInfo.Amount <> 0 Then
                modEdicion.Deshacer_Add "Quitar Objeto"    ' Hago deshacer
                MapInfo(CurMap).Changed = 1    'Set changed flag
                If MapData(tX, tY).Graphic(3).GrhIndex = MapData(tX, tY).ObjGrh.GrhIndex Then MapData(tX, tY).Graphic(3).GrhIndex = 0
                MapData(tX, tY).ObjGrh.GrhIndex = 0
                MapData(tX, tY).OBJInfo.objindex = 0
                MapData(tX, tY).OBJInfo.Amount = 0
            End If
        End If

        ' ***************** Control de Funcion de Triggers *****************
        If frmMain.cInsertarTrigger.Value = True Then    ' Insertar Trigger
            If MapData(tX, tY).Trigger <> frmMain.lListado(4).listIndex Then
                modEdicion.Deshacer_Add "Insertar Trigger"    ' Hago deshacer
                MapInfo(CurMap).Changed = 1    'Set changed flag
                MapData(tX, tY).Trigger = frmMain.lListado(4).listIndex
            End If
        ElseIf frmMain.cQuitarTrigger.Value = True Then    ' Quitar Trigger
            If MapData(tX, tY).Trigger <> 0 Then
                modEdicion.Deshacer_Add "Quitar Trigger"    ' Hago deshacer
                MapInfo(CurMap).Changed = 1    'Set changed flag
                MapData(tX, tY).Trigger = 0
            End If
        End If
    End If

End Sub


