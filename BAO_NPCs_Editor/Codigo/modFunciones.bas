Attribute VB_Name = "modFunciones"
Option Explicit

Private Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyname As Any, ByVal lpdefault As String, ByVal lpreturnedstring As String, ByVal CrcKey As Long, ByVal CrcString As String) As Long
Public Declare Function recv Lib "wSock32.dll" (ByVal S As Long, ByRef buf As Any, ByVal bufLen As Long, ByVal flags As Long) As Long
Public GetVarBuf As String
Public Const GetVarBufTam As Long = 3000

Public Const DAT_FORMAT As String = ".dat"
Public LeerZonas As New clsIniReader
Public MaxZonas As Byte

Type tZonaInfo
    Name                        As String   'Nombre de la zona
    PK                          As Boolean  'Zona segura/insegura
    BackToMap                   As Byte     'Mapa de regreso, por si la zona tiene algún factor que patee al usuario en dicha zona, a otra zona por default.
    BackToX                     As Integer  'Pos X de regreso, por si la zona tiene algún factor que patee al usuario en dicha zona, a otra zona por default.
    BackToY                     As Integer  'Pos Y de regreso, por si la zona tiene algún factor que patee al usuario en dicha zona, a otra zona por default.
    SoloParty                   As Byte     'Zona sólo para usuarios en party. El número de SoloParty indica la cantidad mínima de miembros en la party para poder ingresar a la zona.
    SoloClanes                  As Byte     'Zona sólo para usuarios en clan. El número de SoloParty indica la cantidad mínima de miembros en el clan para poder ingresar a la zona.
    SoloCampaign                As Integer  'Zona sólo para usuarios en Misión. El número de misión indica la misión actual del usuario necesaria para poder ingresar a la zona.
    SoloCampaignStage           As Integer  'Zona sólo para usuarios en un objetivo determinado de una Misión. El número de objetivo indica el objetivo de la misión actual del usuario necesaria para poder ingresar a la zona.
    SoloGuildIndex              As Integer  'Zona sólo para usuarios de un clan específico. El número de SoloGuildIndex indica el clan para poder ingresar a la zona, que es el clan dominante del castillo.
    SoloDonantes                As Integer  'Zona sólo para usuarios donantes. El número de SoloDonantes indica la cantidad mínima de puntos donantes para poder ingresar a la zona.
    SoloPlata                   As Integer  'Zona sólo para usuarios con Monedas de Platino. El número de SoloPlata indica la cantidad mínima de Monedas de Platino para poder ingresar a la zona.
    MaxLevel                    As Byte     'Nivel máximo para ingresar/permanecer y permanecer en la zona. Si logeas en la zona siendo mayor nivel al permitido, te patea a BackTo + map,x,y (si tiene, sino tiene configurado BackTo,  te manda a ulla)
    MinLevel                    As Byte     'Nivel Mínimo para ingresar/permanecer a la zona.
    MinOnlines                  As Integer  'Mínima cantidad de usuarios online en el server, para poder ingresar/permanecer a la zona. MinOnlines
    MaxUsers                    As Integer  'Máxima cantidad de usuarios en la zona.
    
    MagiaSinEfecto              As Byte     'Magia sin efecto en la zona 1 Desactivado = 0
    InviSinEfecto               As Byte     'Invi sin efecto en la zona 1 Desactivado = 0
    ResuSinEfecto               As Byte     'Resu sin efecto en la zona 1 Desactivado = 0
    'RestringirGM                As eGMRestriccionZona 'Suma en bits de restricciones de la zona.
    OcuSinEfecto                As Byte
    BenderSinEfecto             As Byte
    'Terreno                     As eZona
    'Zona                        As eZona
    Restringir                  As String
    'Backup                      As Byte
    Niebla(3)                   As Byte
    Luz(3)                      As Byte
    VelocidadCambioLuz          As Integer
    MaxMp3                      As Byte
    MaxMidi                     As Byte
    Mp3()                       As Byte
    Midi()                      As Byte
    MaxWav                      As Byte
    Wav()                       As String
    CountUsers                  As New Collection
End Type


Private Declare Function writeprivateprofilestring Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationname As String, ByVal lpKeyname As Any, ByVal lpString As String, ByVal lpFileName As String) As Long

Public Sub WriteVar(ByVal File As String, ByVal Main As String, ByVal var As String, ByVal Value As String)
    writeprivateprofilestring Main, var, Value, File
End Sub


Public Sub IniciarHarcodeo()
    GetVarBuf = String(GetVarBufTam, 0)
End Sub

Sub LoadZonas()

Static bZonasLoaded             As Boolean
Dim Map                         As Byte    'que flasheaste?
Dim j                           As Byte
Dim X                           As Integer
Dim Y                           As Integer
Dim tX                          As Integer
Dim tY                          As Integer
Dim Alto                        As Integer
Dim Ancho                       As Integer
Dim CopyZona                    As Integer
Dim i                           As Long

    On Error GoTo LoadZonas_Error

    'About: Test 18/03/2021
    Call LeerZonas.Initialize(DatPath & "ZONAS" & DAT_FORMAT)
    MaxZonas = Val(LeerZonas.GetValue("INIT", "MaxZonas"))

    ReDim ZonaInfo(0 To MaxZonas) As tZonaInfo

    For i = MaxZonas To 0 Step -1
        Map = Val(LeerZonas.GetValue("ZONA" & i, "Map"))
        tX = Val(LeerZonas.GetValue("ZONA" & i, "X"))
        tY = Val(LeerZonas.GetValue("ZONA" & i, "Y"))
        Ancho = Val(LeerZonas.GetValue("ZONA" & i, "Ancho")) + tX
        Alto = Val(LeerZonas.GetValue("ZONA" & i, "Alto")) + tY

        With ZonaInfo(i)
            .Name = LeerZonas.GetValue("ZONA" & i, "Name")

            '                .PK = Val(LeerZonas.GetValue("ZONA" & i, "Pk")) = 1
            '                .BackToMap = Val(LeerZonas.GetValue("ZONA" & i, "BackToMap"))    'Devuelve al user al map, si es que la zona lo expulsa por determinada cuestión
            '                .BackToX = Val(LeerZonas.GetValue("ZONA" & i, "BackToX"))    'Devuelve al user a la pos X, si es que la zona lo expulsa por determinada cuestión
            '                .BackToY = Val(LeerZonas.GetValue("ZONA" & i, "BackToY"))    'Devuelve al user a la pos Y, si es que la zona lo expulsa por determinada cuestión
            '                .SoloParty = Val(LeerZonas.GetValue("ZONA" & i, "SoloParty"))
            '                .SoloClanes = Val(LeerZonas.GetValue("ZONA" & i, "SoloClanes"))
            '                .SoloCampaign = Val(LeerZonas.GetValue("ZONA" & i, "SoloCampaign"))
            '                .SoloCampaignStage = Val(LeerZonas.GetValue("ZONA" & i, "SoloCampaignStage"))
            '                .SoloGuildIndex = Val(LeerZonas.GetValue("ZONA" & i, "SoloGuildIndex"))
            'If .SoloGuildIndex > 0 And ConquerorGuildIndex > 0 Then .SoloGuildIndex = ConquerorGuildIndex
            '                .SoloDonantes = Val(LeerZonas.GetValue("ZONA" & i, "SoloDonantes"))
            '                .SoloPlata = Val(LeerZonas.GetValue("ZONA" & i, "SoloPlata"))
            '                .MinLevel = Val(LeerZonas.GetValue("ZONA" & i, "MinLevel"))
            '                .MaxLevel = Val(LeerZonas.GetValue("ZONA" & i, "MaxLevel"))
            '                .MinOnlines = Val(LeerZonas.GetValue("ZONA" & i, "MinOnlines"))

            '                .MagiaSinEfecto = Val(LeerZonas.GetValue("ZONA" & i, "MagiaSinEfecto")) = 1
            '                .InviSinEfecto = Val(LeerZonas.GetValue("ZONA" & i, "InviSinEfecto")) = 1
            '                .ResuSinEfecto = Val(LeerZonas.GetValue("ZONA" & i, "ResuSinEfecto")) = 1
            '                .OcuSinEfecto = Val(LeerZonas.GetValue("ZONA" & i, "OcuSinEfecto"))

            '                .BenderSinEfecto = Val(LeerZonas.GetValue("ZONA" & i, "BenderSinEfecto")) = 1
            '.Terreno = Val(LeerZonas.GetValue("ZONA" & i, "Terreno"))
            '.Zona = Val(LeerZonas.GetValue("ZONA" & i, "Zona"))
            '.Restringir = LeerZonas.GetValue("ZONA" & i, "Restringir")
            '.RestringirGM = Val(LeerZonas.GetValue("ZONA" & i, "RestringirGM"))

            '                .VelocidadCambioLuz = Val(ReadField(1, LeerZonas.GetValue("ZONA" & i, "Luz"), 45))
            '                .Luz(0) = 255
            '                .Luz(1) = Val(ReadField(2, LeerZonas.GetValue("ZONA" & i, "Luz"), 45))
            '                .Luz(2) = Val(ReadField(3, LeerZonas.GetValue("ZONA" & i, "Luz"), 45))
            '                .Luz(3) = Val(ReadField(4, LeerZonas.GetValue("ZONA" & i, "Luz"), 45))

            '                .Niebla(0) = Val(ReadField(1, LeerZonas.GetValue("ZONA" & i, "Niebla"), 45))
            '                .Niebla(1) = Val(ReadField(2, LeerZonas.GetValue("ZONA" & i, "Niebla"), 45))
            '                .Niebla(2) = Val(ReadField(3, LeerZonas.GetValue("ZONA" & i, "Niebla"), 45))
            '                .Niebla(3) = Val(ReadField(4, LeerZonas.GetValue("ZONA" & i, "Niebla"), 45))

            '.MaxMp3 = Val(LeerZonas.GetValue("ZONA" & i, "MaxMp3"))

            If .MaxMp3 > 0 Then
                ReDim .Mp3(0 To .MaxMp3) As Byte    '= val(LeerZonas.GetValue("ZONA" & i, "Music1"))

                For j = 1 To .MaxMp3
                    .Mp3(j) = Val(LeerZonas.GetValue("ZONA" & i, "Mp3_" & j))
                Next j
            End If

            .MaxMidi = Val(LeerZonas.GetValue("ZONA" & i, "MaxMidi"))
            If .MaxMidi > 0 Then

                ReDim .Midi(0 To .MaxMidi) As Byte

                For j = 1 To .MaxMidi
                    .Midi(j) = Val(LeerZonas.GetValue("ZONA" & i, "Midi" & j))
                Next j
            End If

            .MaxWav = Val(LeerZonas.GetValue("ZONA" & i, "MAXWAV"))
            If .MaxWav > 0 Then
                ReDim .Wav(0 To .MaxWav) As String

                For j = 1 To .MaxWav
                    .Wav(j) = LeerZonas.GetValue("ZONA" & i, "WAV" & j)
                Next j
            End If
        End With

        CopyZona = Val(LeerZonas.GetValue("ZONA" & i, "CopyZona"))
        If CopyZona = 0 Then CopyZona = i

        If Ancho > XMaxMapSize Then Ancho = XMaxMapSize
        If Alto > YMaxMapSize Then Alto = YMaxMapSize

    Next i

    bZonasLoaded = True

    On Error GoTo 0
    Exit Sub

LoadZonas_Error:
    bZonasLoaded = False
    Call MsgBox("Error " & Err.Number & " Descripción: & (" & Err.Description & ") del procedimiento LoadZonas del Módulo ES" & " En la linea: " & Erl)

End Sub

#If Optimizar = 0 Then
Function GetVar(ByRef File As String, ByRef Main As String, ByRef var As String, Optional EmptySpaces As Long = 1024) As String

Dim sSpaces                     As String ' This will hold the input that the program will retrieve
Dim szReturn                    As String ' This will be the defaul value if the string is not found
  
    szReturn = vbNullString
    sSpaces = Space$(EmptySpaces) ' This tells the computer how long the longest string can be
    GetPrivateProfileString Main, var, szReturn, sSpaces, EmptySpaces, File
    GetVar = RTrim$(sSpaces)
    GetVar = Left$(GetVar, Len(GetVar) - 1)
  
End Function
#End If


Function FileExist(ByRef File As String, Optional FileType As VbFileAttribute = vbNormal) As Boolean
      '*****************************************************************
      'Se fija si existe el archivo
      '*****************************************************************
   On Error GoTo FileExist_Error

10        FileExist = LenB(Dir$(File, FileType)) <> 0

   On Error GoTo 0
   Exit Function

FileExist_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure FileExist of Módulo modFunciones"
End Function


Function ReadField(ByVal Pos As Integer, ByRef Text As String, ByVal SepASCII As Byte) As String
      '*****************************************************************
      'Gets a field from a string
      'Author: Juan Martín Sotuyo Dodero (Maraxus)
      'Last Modify Date: 11/15/2004
      'Gets a field from a delimited string
      '*****************************************************************
          Dim i As Long
          Dim lastPos As Long
          Dim CurrentPos As Long
          Dim delimiter As String * 1
          
   On Error GoTo ReadField_Error

10        delimiter = Chr$(SepASCII)
          
20        For i = 1 To Pos
30            lastPos = CurrentPos
40            CurrentPos = InStr(lastPos + 1, Text, delimiter, vbBinaryCompare)
50        Next i
          
60        If CurrentPos = 0 Then
70            ReadField = mid$(Text, lastPos + 1, Len(Text) - lastPos)
80        Else
90            ReadField = mid$(Text, lastPos + 1, CurrentPos - lastPos - 1)
100       End If

   On Error GoTo 0
   Exit Function

ReadField_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ReadField of Módulo modFunciones"
End Function
