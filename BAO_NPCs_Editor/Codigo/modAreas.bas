Attribute VB_Name = "modAreas"
Option Explicit

'Public Type ConnGroup
'    CountEntrys As Long
'    OptValue As Long
'    UserEntrys() As Long
'End Type
'
'Public Const USER_NUEVO As Byte = 255
'
'Public ConnGroups() As ConnGroup
'
'Public Sub InitAreas()
'    Dim LoopC As Long
'
'    ReDim ConnGroups(1 To NumMaps) As ConnGroup
'
'    For LoopC = 1 To NumMaps
'        ConnGroups(LoopC).CountEntrys = -1
'        ReDim ConnGroups(LoopC).UserEntrys(MaxUsers) As Long
'    Next LoopC
'End Sub
'Private Sub AreaDataAdd(ByRef AreaData As CharsArea, ByVal Index As Integer)
'    AreaData.UsersArea(AreaData.CountUsersArea) = Index
'    AreaData.CountUsersArea = AreaData.CountUsersArea + 1
'End Sub
'
'Private Sub AreaDataDel(ByRef AreaData As CharsArea, ByVal Index As Integer)
'
'    Dim i As Long
'
'    AreaData.CountUsersArea = AreaData.CountUsersArea - 1
'
'    For i = 0 To AreaData.CountUsersArea
'        If AreaData.UsersArea(i) = Index Then
'            CopyMemory AreaData.UsersArea(i), AreaData.UsersArea(i + 1), (AreaData.CountUsersArea - i) * 2
'            Exit For
'        End If
'    Next i
'    AreaData.UsersArea(AreaData.CountUsersArea) = 0
'End Sub
'
'Private Sub CheckNewNPCTile(ByVal NpcIndex As Integer, ByRef X As Integer, ByRef Y As Integer)
'Dim UserIndex As Integer
'With NpcList(NpcIndex)
'    If InMapaArea(.Pos.Map, X, Y) Then
'        UserIndex = MapData(.Pos.Map, X, Y).UserIndex
'        If UserIndex Then
'            Call AreaDataAdd(.AreaNPCUser, UserIndex)
'            Call AreaDataAdd(UserList(UserIndex).AreaNPC, NpcIndex)
'
'            Call MakeNPCChar(False, UserIndex, NpcIndex, .Pos.Map, .Pos.X, .Pos.Y)
'        End If
'    End If
'End With
'End Sub
'Private Sub CheckOldNPCTile(ByVal NpcIndex As Integer, ByRef X As Integer, ByRef Y As Integer)
'Dim UserIndex As Integer
'With NpcList(NpcIndex)
'    If InMapaArea(.Pos.Map, X, Y) Then
'        UserIndex = MapData(.Pos.Map, X, Y).UserIndex
'        If UserIndex Then
'            Call AreaDataDel(.AreaNPCUser, UserIndex)
'            Call AreaDataDel(UserList(UserIndex).AreaNPC, NpcIndex)
'
'            'Call SendData(SendTarget.ToIndex, UserIndex, PrepareMessageCharacterRemove(.Char.CharIndex))
'            'Call FlushBuffer(UserIndex)
'        End If
'    End If
'End With
'End Sub
'
'Private Sub CheckNewUserTile(ByVal UserIndex As Integer, ByRef X As Integer, ByRef Y As Integer)
'Dim TempInt As Integer
'With UserList(UserIndex)
'    If InMapaArea(.Pos.Map, X, Y) Then
'        '<<< User >>>
'        If MapData(.Pos.Map, X, Y).UserIndex Then
'
'            TempInt = MapData(.Pos.Map, X, Y).UserIndex
'
'            If UserIndex <> TempInt Then
'
'                Call AreaDataAdd(.AreaUser, TempInt)
'                Call MakeUserChar(False, UserIndex, TempInt, .Pos.Map, X, Y)
'
'                    'Si el user estaba invisible le avisamos al nuevo cliente de eso
'                'If UserList(TempInt).flags.invisible Or UserList(TempInt).flags.Oculto Then
'                '    Call WriteSetInvisible(UserIndex, UserList(TempInt).Char.CharIndex, True)
'                'End If
'
'                Call AreaDataAdd(UserList(TempInt).AreaUser, UserIndex)
'                Call MakeUserChar(False, TempInt, UserIndex, .Pos.Map, .Pos.X, .Pos.Y)
'
'                'If .flags.invisible Or .flags.Oculto Then
'                '    Call WriteSetInvisible(TempInt, .Char.CharIndex, True)
'                'End If
'
'                'Call FlushBuffer(TempInt)
'            End If
'        End If
'
'        '<<< Npc >>>
'        If MapData(.Pos.Map, X, Y).NpcIndex Then
'            TempInt = MapData(.Pos.Map, X, Y).NpcIndex
'            Call AreaDataAdd(.AreaNPC, TempInt)
'            Call AreaDataAdd(NpcList(TempInt).AreaNPCUser, UserIndex)
'            Call MakeNPCChar(False, UserIndex, TempInt, .Pos.Map, X, Y)
'        End If
'
'        '<<< Item >>>
''        If MapData(.Pos.Map, X, Y).ObjInfo.ObjIndex Then
''            TempInt = MapData(.Pos.Map, X, Y).ObjInfo.ObjIndex
''            If Not EsObjetoFijo(ObjData(TempInt).OBJType) Then
''                Call WriteObjectCreate(UserIndex, ObjData(TempInt).GrhIndex, X, Y)
''
''                If ObjData(TempInt).OBJType = eOBJType.otPuertas Then
''                    Call Bloquear(False, UserIndex, X, Y, MapData(.Pos.Map, X, Y).Blocked)
''                    Call Bloquear(False, UserIndex, X - 1, Y, MapData(.Pos.Map, X - 1, Y).Blocked)
''                End If
''            End If
''        End If
'    End If
'End With
'End Sub
'Private Sub CheckOldUserTile(ByVal UserIndex As Integer, ByRef X As Integer, ByRef Y As Integer)
'Dim TempInt As Integer
'With UserList(UserIndex)
'    If InMapaArea(.Pos.Map, X, Y) Then
'        '<<< User >>>
'        If MapData(.Pos.Map, X, Y).UserIndex Then
'
'            TempInt = MapData(.Pos.Map, X, Y).UserIndex
'
'            If UserIndex <> TempInt Then
'                Call AreaDataDel(.AreaUser, TempInt)
'                Call AreaDataDel(UserList(TempInt).AreaUser, UserIndex)
'                'Call SendData(SendTarget.ToIndex, TempInt, PrepareMessageCharacterRemove(.Char.CharIndex))
'                'Call SendData(SendTarget.ToIndex, UserIndex, PrepareMessageCharacterRemove(UserList(TempInt).Char.CharIndex))
'                'Call FlushBuffer(TempInt)
'            End If
'        End If
'
'        '<<< Npc >>>
'        If MapData(.Pos.Map, X, Y).NpcIndex Then
'            TempInt = MapData(.Pos.Map, X, Y).NpcIndex
'            Call AreaDataDel(.AreaNPC, TempInt)
'            Call AreaDataDel(NpcList(TempInt).AreaNPCUser, UserIndex)
'        End If
'
'        '<<< Item >>>
''        If MapData(.Pos.Map, X, Y).ObjInfo.ObjIndex Then
''            TempInt = MapData(.Pos.Map, X, Y).ObjInfo.ObjIndex
''            If Not EsObjetoFijo(ObjData(TempInt).OBJType) Then
''                Call SendData(SendTarget.ToIndex, UserIndex, PrepareMessageObjectDelete(X, Y))
''
''                If ObjData(TempInt).OBJType = eOBJType.otPuertas Then
''                    Call Bloquear(True, UserIndex, X, Y, MapData(.Pos.Map, X, Y).Blocked)
''                    Call Bloquear(True, UserIndex, X - 1, Y, MapData(.Pos.Map, X - 1, Y).Blocked)
''                End If
''            End If
''        End If
'    End If
'End With
'End Sub
'
'Public Sub CheckUpdateNeededUser(ByVal UserIndex As Integer, ByVal Head As Byte, Optional ByVal ButIndex As Boolean = False, Optional ByVal tX As Long = -1, Optional ByVal tY As Long = -1)
'    Dim X As Integer, Y As Integer
'
'    With UserList(UserIndex)
'        If Head = eHeading.North Then
'            For X = .Pos.X - 9 To .Pos.X + 9
'                Y = .Pos.Y
'                Call CheckNewUserTile(UserIndex, X, Y - 9)
'                Call CheckOldUserTile(UserIndex, X, Y + 10)
'            Next X
'
'        ElseIf Head = eHeading.South Then
'            For X = .Pos.X - 9 To .Pos.X + 9
'                Y = .Pos.Y
'                Call CheckNewUserTile(UserIndex, X, Y + 9)
'                Call CheckOldUserTile(UserIndex, X, Y - 10)
'            Next X
'
'        ElseIf Head = eHeading.West Then
'            For Y = .Pos.Y - 9 To .Pos.Y + 9
'                X = .Pos.X
'                Call CheckNewUserTile(UserIndex, X - 9, Y)
'                Call CheckOldUserTile(UserIndex, X + 10, Y)
'            Next Y
'
'        ElseIf Head = eHeading.East Then
'            For Y = .Pos.Y - 9 To .Pos.Y + 9
'                X = .Pos.X
'                Call CheckNewUserTile(UserIndex, X + 9, Y)
'                Call CheckOldUserTile(UserIndex, X - 10, Y)
'            Next Y
'
'        ElseIf Head = USER_NUEVO Then
'            'Esto pasa por cuando cambiamos de mapa o logeamos...
'            For X = .Pos.X - 9 To .Pos.X + 9
'                For Y = .Pos.Y - 9 To .Pos.Y + 9
'                    Call CheckNewUserTile(UserIndex, X, Y)
'                Next Y
'            Next X
'            If Not ButIndex Then
'                Call MakeUserChar(False, UserIndex, UserIndex, .Pos.Map, .Pos.X, .Pos.Y)
'            End If
'        End If
'    End With
'End Sub
'
'Public Sub CheckUpdateNeededNpc(ByVal NpcIndex As Integer, ByVal Head As Byte)
'    Dim X As Integer, Y As Integer
'    With NpcList(NpcIndex)
'
'        If Head = eHeading.North Then
'            For X = .Pos.X - 9 To .Pos.X + 9
'                Y = .Pos.Y
'                Call CheckNewNPCTile(NpcIndex, X, Y - 9)
'                Call CheckOldNPCTile(NpcIndex, X, Y + 10)
'            Next X
'
'        ElseIf Head = eHeading.South Then
'            For X = .Pos.X - 9 To .Pos.X + 9
'                Y = .Pos.Y
'                Call CheckNewNPCTile(NpcIndex, X, Y + 9)
'                Call CheckOldNPCTile(NpcIndex, X, Y - 10)
'            Next X
'
'        ElseIf Head = eHeading.West Then
'            For Y = .Pos.Y - 9 To .Pos.Y + 9
'                X = .Pos.X
'                Call CheckNewNPCTile(NpcIndex, X - 9, Y)
'                Call CheckOldNPCTile(NpcIndex, X + 10, Y)
'            Next Y
'
'        ElseIf Head = eHeading.East Then
'            For Y = .Pos.Y - 9 To .Pos.Y + 9
'                X = .Pos.X
'                Call CheckNewNPCTile(NpcIndex, X + 9, Y)
'                Call CheckOldNPCTile(NpcIndex, X - 10, Y)
'            Next Y
'
'        ElseIf Head = USER_NUEVO Then
'            For X = .Pos.X - 9 To .Pos.X + 9
'                For Y = .Pos.Y - 9 To .Pos.Y + 9
'                    Call CheckNewNPCTile(NpcIndex, X, Y)
'                Next Y
'            Next X
'        End If
'
'    End With
'End Sub
'Public Sub QuitarUser(ByVal UserIndex As Integer, ByVal Map As Integer)
'    Dim i As Long
'    For i = 0 To ConnGroups(Map).CountEntrys
'        If ConnGroups(Map).UserEntrys(i) = UserIndex Then
'            If i <> ConnGroups(Map).CountEntrys Then
'                CopyMemory ConnGroups(Map).UserEntrys(i), ConnGroups(Map).UserEntrys(i + 1), (ConnGroups(Map).CountEntrys - i) * 4
'            End If
'            ConnGroups(Map).CountEntrys = ConnGroups(Map).CountEntrys - 1
'            Exit For
'        End If
'    Next i
'
'    With UserList(UserIndex)
'        Dim TempInt As Integer
'
'        For i = 0 To .AreaNPC.CountUsersArea - 1
'            TempInt = .AreaNPC.UsersArea(i)
'            Call AreaDataDel(NpcList(TempInt).AreaNPCUser, UserIndex)
'            .AreaNPC.UsersArea(i) = 0
'        Next i
'        .AreaNPC.CountUsersArea = 0
'
'        For i = 0 To .AreaUser.CountUsersArea - 1
'            TempInt = .AreaUser.UsersArea(i)
'            Call AreaDataDel(UserList(TempInt).AreaUser, UserIndex)
'            .AreaUser.UsersArea(i) = 0
'        Next i
'        .AreaUser.CountUsersArea = 0
'
''        Dim X As Integer
''        Dim Y As Integer
''
''        For X = .Pos.X - 9 To .Pos.X + 9
''            For Y = .Pos.Y - 9 To .Pos.Y + 9
''                Call CheckOldUserTile(UserIndex, X, Y)
''            Next Y
''        Next X
'    End With
'End Sub
'Public Sub QuitarNPCArea(ByVal NpcIndex As Integer)
'    With NpcList(NpcIndex)
'        Dim i As Long
'        Dim TempInt As Integer
'
'        For i = 0 To .AreaNPCUser.CountUsersArea - 1
'            TempInt = .AreaNPCUser.UsersArea(i)
'            Call AreaDataDel(UserList(TempInt).AreaNPC, NpcIndex)
'            .AreaNPCUser.UsersArea(i) = 0
'        Next i
'        .AreaNPCUser.CountUsersArea = 0
'
''        Dim X As Integer
''        Dim Y As Integer
''
''        For X = .Pos.X - 9 To .Pos.X + 9
''            For Y = .Pos.Y - 9 To .Pos.Y + 9
''                Call CheckOldNPCTile(NpcIndex, X, Y)
''            Next Y
''        Next X
'    End With
'End Sub
'Public Sub AgregarUser(ByVal UserIndex As Integer, ByVal Map As Integer, Optional ByVal ButIndex As Boolean = False)
'          Dim TempVal As Long
'          Dim EsNuevo As Boolean
'          Dim i As Long
'
'   On Error GoTo AgregarUser_Error
'
'
'20        EsNuevo = True
'
'          'Prevent adding repeated users
'30        For i = 0 To ConnGroups(Map).CountEntrys
'40            If ConnGroups(Map).UserEntrys(i) = UserIndex Then
'50                EsNuevo = False
'60                Exit For
'70            End If
'80        Next i
'
'90        If EsNuevo Then
'100           ConnGroups(Map).CountEntrys = ConnGroups(Map).CountEntrys + 1
'110           ConnGroups(Map).UserEntrys(ConnGroups(Map).CountEntrys) = UserIndex
'120       End If
'
'130       Call CheckUpdateNeededUser(UserIndex, USER_NUEVO, ButIndex)
'
'   On Error GoTo 0
'   Exit Sub
'
'AgregarUser_Error:
'
'    Debug.Print ("Error " & Err.Number & " (" & Err.Description & ") in procedure AgregarUser del Módulo ModAreas" & "En la linea: " & Erl)
'End Sub
'
'Public Sub AgregarNpc(ByVal NpcIndex As Integer)
'    Call CheckUpdateNeededNpc(NpcIndex, USER_NUEVO)
'End Sub
'
''[Funciones para Debug]
''Private Function ExistoUserData(ByRef Index As Integer) As Boolean
''    Dim i As Long
''    Dim Existo As Boolean
''
''    For i = 1 To MaxUsers
''        Existo = AreaDataPeek(UserList(i).AreaUser, Index)
''        If Existo Then GoTo final
''    Next i
''    For i = 1 To MaxNPCs
''        Existo = AreaDataPeek(NpcList(i).AreaNPCUser, Index)
''        If Existo = True Then GoTo final
''    Next i
''final:
''ExistoUserData = Existo
''End Function
''Private Function ExistoNpcData(ByRef Index As Integer) As Boolean
''    Dim i As Long
''    Dim Existo As Boolean
''
''    For i = 1 To MaxUsers
''        Existo = AreaDataPeek(UserList(i).AreaNPC, Index)
''        If Existo Then
''            Debug.Print "Distancia X: " & UserList(i).Pos.X - NpcList(Index).Pos.X
''            Debug.Print "Distancia Y: " & UserList(i).Pos.Y - NpcList(Index).Pos.Y
''            GoTo final
''        End If
''    Next i
''final:
''ExistoNpcData = Existo
''End Function
''Private Function AreaDataPeek(ByRef AreaData As CharsArea, ByVal Index As Integer) As Boolean
''    Dim i As Long
''    For i = 0 To AreaData.CountUsersArea
''        If AreaData.UsersArea(i) = Index Then
''            AreaDataPeek = True
''            Exit Function
''        End If
''    Next i
''End Function
