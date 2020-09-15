Attribute VB_Name = "modFuckingsObjs"
Option Explicit

Public FuckingObjData() As String

Sub LoadFuckingsObjects()
    Dim i As Long
    Dim Max As Long
    Dim LeerFuckingsObjs As clsIniReader
    Set LeerFuckingsObjs = New clsIniReader
    Call LeerFuckingsObjs.Initialize(DatPath & "OBJ.dat")
    
    With LeerFuckingsObjs
        Max = .GetValue("INIT", "NumOBJs")
        ReDim FuckingObjData(1 To Max)
        For i = 1 To Max
            FuckingObjData(i) = .GetValue("OBJ" & i, "Name")
        Next i
    End With
    
End Sub
