Attribute VB_Name = "modFuckingsObjs"
Option Explicit

Public FuckingObjData() As String

Sub LoadFuckingsObjects()

Dim i                           As Long
Dim Max                         As Long

Dim LeerFuckingsObjs            As clsIniReader
    On Error GoTo LoadFuckingsObjects_Error

10  Set LeerFuckingsObjs = New clsIniReader
20  Call LeerFuckingsObjs.Initialize(DatPath & "OBJ.dat")

30  With LeerFuckingsObjs
40      Max = .GetValue("INIT", "NumOBJs")
50      ReDim FuckingObjData(1 To Max)
60      For i = 1 To Max
70          FuckingObjData(i) = .GetValue("OBJ" & i, "Name")
80      Next i
90  End With

    On Error GoTo 0
    Exit Sub

LoadFuckingsObjects_Error:

    Call LogError("Error " & Err.Number & " (" & Err.Description & ") in procedure LoadFuckingsObjects of Módulo modFuckingsObjs Linea: " & Erl())

End Sub
