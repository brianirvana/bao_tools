Attribute VB_Name = "modUsers"
Option Explicit
'
'Public Type CharsArea
'    CountUsersArea As Integer
'    UsersArea(324) As Integer
'End Type
'
'Public UserList(1 To MaxUsers) As tUser
'
'Public Type WorldPos
'    Map As Integer
'    X As Integer
'    Y As Integer
'End Type
'
'Public Type tNpc
'    Active As Long
'
'    Pos As WorldPos
'
'    AreaNPCUser As CharsArea
'End Type
'
'Public Type tUser
'    Active As Long
'
'    Pos As WorldPos
'
'    AreaNPC As CharsArea
'    AreaUser As CharsArea
'
'    Direccion As eHeading
'    Veces As Integer
'End Type
'
'Public Enum eHeading
'    North = 1
'    East = 2
'    South = 3
'    West = 4
'End Enum
'
'Sub MakeNPCChar(ByVal toMap As Boolean, sndIndex As Integer, NpcIndex As Integer, ByVal Map As Integer, ByVal X As Integer, ByVal Y As Integer)
'    If NpcList(NpcIndex).Active = 1 Then Exit Sub
'
'    If toMap Then
'        MapData(Map, X, Y).NpcIndex = NpcIndex
'        Call modAreas.AgregarNpc(NpcIndex)
'
'        NpcList(NpcIndex).Active = 1
'
'        #If ShapeVisible = 1 Then
'        Load frmMain.NPC(NpcIndex)
'        With frmMain.NPC(NpcIndex)
'            .Top = Y
'            .Left = X
'            .Width = 3
'            .Height = 3
'            .BorderColor = &HFFFF&
'            .FillColor = &HFFFF&
'            .Visible = True
'        End With
'        #End If
'        'Debug.Print "Make NPC " & NpcIndex
'    Else
'
'    End If
'End Sub
'Sub MakeUserChar(ByVal toMap As Boolean, ByVal sndIndex As Integer, ByVal UserIndex As Integer, ByVal Map As Integer, ByVal X As Integer, ByVal Y As Integer)
'    If UserList(UserIndex).Active = 1 Then Exit Sub
'
'    If toMap Then
'        MapData(Map, X, Y).UserIndex = UserIndex
'        Call modAreas.AgregarUser(UserIndex, Map)
'
'        UserList(UserIndex).Active = 1
'
'        #If ShapeVisible = 1 Then
'        Load frmMain.Users(UserIndex)
'        With frmMain.Users(UserIndex)
'            .Top = Y - 1
'            .Left = X - 1
'            .Width = 3
'            .Height = 3
'            .BorderColor = &HFFFF00
'            .FillColor = &HFFFF00
'            .Visible = True
'        End With
'
'        Load frmMain.UserArea(UserIndex)
'        With frmMain.UserArea(UserIndex)
'            .Top = Y - 9
'            .Left = X - 9
'            .Width = 18
'            .Height = 18
'            .BorderColor = &HFFFF00
'            .FillColor = &HFFFF00
'            .Visible = True
'        End With
'        #End If
'        'Debug.Print "Make User " & UserIndex
'    Else
'
'    End If
'End Sub
'
'Public Sub MoveUserChar(ByVal UserIndex As Integer, nHeading As eHeading)
'With UserList(UserIndex)
'    Dim nPos As WorldPos
'    nPos = .Pos
'    Call HeadtoPos(nHeading, nPos)
'
'    If Not InMapBounds(nPos.Map, nPos.X, nPos.Y) Then Exit Sub
'
'    If MapData(nPos.Map, nPos.X, nPos.Y).NpcIndex Then Exit Sub
'    If MapData(nPos.Map, nPos.X, nPos.Y).UserIndex Then Exit Sub
'
'
'    MapData(.Pos.Map, .Pos.X, .Pos.Y).UserIndex = 0
'    MapData(nPos.Map, nPos.X, nPos.Y).UserIndex = UserIndex
'
'    .Pos = nPos
'
'    #If ShapeVisible = 1 Then
'    If frmMain.ProcessShapes = vbChecked Then
'    frmMain.Users(UserIndex).Top = nPos.Y - 1
'    frmMain.Users(UserIndex).Left = nPos.X - 1
'    frmMain.UserArea(UserIndex).Top = nPos.Y - 9
'    frmMain.UserArea(UserIndex).Left = nPos.X - 9
'    End If
'    #End If
'    Call modAreas.CheckUpdateNeededUser(UserIndex, nHeading)
'
'    'Debug.Print "Move User" & UserIndex
'End With
'End Sub
'
'Public Sub MoveNpcChar(ByVal NpcIndex As Integer, nHeading As eHeading)
'With NpcList(NpcIndex)
'    Dim nPos As WorldPos
'    nPos = .Pos
'    Call HeadtoPos(nHeading, nPos)
'
'    If Not InMapBounds(nPos.Map, nPos.X, nPos.Y) Then Exit Sub
'
'    If MapData(nPos.Map, nPos.X, nPos.Y).NpcIndex Then Exit Sub
'    If MapData(nPos.Map, nPos.X, nPos.Y).UserIndex Then Exit Sub
'
'    MapData(.Pos.Map, .Pos.X, .Pos.Y).NpcIndex = 0
'    MapData(nPos.Map, nPos.X, nPos.Y).NpcIndex = NpcIndex
'
'    .Pos = nPos
'
'    #If ShapeVisible = 1 Then
'    If frmMain.ProcessShapes.value = vbChecked Then
'    frmMain.NPC(NpcIndex).Top = nPos.Y - 1
'    frmMain.NPC(NpcIndex).Left = nPos.X - 1
'    End If
'    #End If
'    'frmMain.UserArea(UserIndex).Top = nPos.Y - 9
'    'frmMain.UserArea(UserIndex).Left = nPos.X - 9
'    'Debug.Print "Move NPC" & NpcIndex
'    Call modAreas.CheckUpdateNeededNpc(NpcIndex, nHeading)
'End With
'End Sub
'
'Public Sub EraseUserChar(ByVal UserIndex As Integer)
'With UserList(UserIndex)
'    If .Active = 1 Then
'        #If ShapeVisible = 1 Then
'        Unload frmMain.Users(UserIndex)
'        Unload frmMain.UserArea(UserIndex)
'        #End If
'        Call modAreas.QuitarUser(UserIndex, .Pos.Map)
'        MapData(.Pos.Map, .Pos.X, .Pos.Y).UserIndex = 0
'        .Active = 0
'        .Veces = 0
'        .Direccion = 0
'        .Pos.Map = 0
'        .Pos.X = 0
'        .Pos.Y = 0
'    End If
'End With
'End Sub
'Public Sub EraseNPCChar(ByVal NpcIndex As Integer)
'With NpcList(NpcIndex)
'    If .Active = 1 Then
'        #If ShapeVisible = 1 Then
'        Unload frmMain.NPC(NpcIndex)
'        #End If
'        Call modAreas.QuitarNPCArea(NpcIndex)
'        MapData(.Pos.Map, .Pos.X, .Pos.Y).NpcIndex = 0
'        .Active = 0
'        .Pos.Map = 0
'        .Pos.X = 0
'        .Pos.Y = 0
'    End If
'End With
'End Sub
