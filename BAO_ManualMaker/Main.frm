VERSION 5.00
Begin VB.Form Main 
   Caption         =   "Form1"
   ClientHeight    =   5640
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7920
   LinkTopic       =   "Form1"
   ScaleHeight     =   376
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   528
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "Armaduras"
      Height          =   495
      Left            =   120
      TabIndex        =   6
      Top             =   1320
      Width           =   2535
   End
   Begin VB.PictureBox Picture1 
      Height          =   375
      Left            =   360
      ScaleHeight     =   21
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   397
      TabIndex        =   3
      Top             =   5160
      Width           =   6015
      Begin VB.Label Label3 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   0
         TabIndex        =   5
         Top             =   0
         Width           =   5895
      End
      Begin VB.Label Label2 
         BackColor       =   &H000000FF&
         Height          =   300
         Left            =   0
         TabIndex        =   4
         Top             =   0
         Width           =   6000
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Analizar items"
      Height          =   495
      Left            =   120
      TabIndex        =   2
      Top             =   120
      Width           =   2535
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Armas"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   720
      Width           =   2535
   End
   Begin VB.Label Label1 
      Caption         =   "Label1"
      Height          =   375
      Left            =   360
      TabIndex        =   1
      Top             =   4680
      Width           =   6015
   End
End
Attribute VB_Name = "Main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Enum TA
    AM = 0                         'Tienen StaffPower TipObj 2 (Arma Magica)
    AC                             'No tienen APU, staff power y son TipObj 2 (Arma Comun)
    AA                             'Tienen apu y son Tipobj 2 (Arma Apu
    AR                             'Proyectil=1 y Municiones = 1 y ObjType = 2 '(ARco)
    FL                             'ObjType=32 (FLecha)
    HE                             'No hay diferenciacion :( (HErramientas)
End Enum

Public Sub AnalizarARMAS()

    ReDim LasArmas(1 To 100, 0 To 6) As Integer
    Dim Num(0 To 6)             As Integer
    
    For i = 1 To CInt(GetVar(App.Path & "\DAT\OBJ.dat", "INIT", "NumObjs"))
        If i = 543 Or i = 138 Or i = 198 Or i = 389 Or i = 187 Or i = 127 Then    'Herramientas ;=)
            Num(TA.HE) = Num(TA.HE) + 1
            LasArmas(Num(TA.HE), TA.HE) = i
        ElseIf GetOBJ(i, "ObjType") = CStr("2") And Not CStr(GetOBJ(i, "StaffPower")) = vbNullString Then    'Arma Magica
            Num(TA.AM) = Num(TA.AM) + 1
            LasArmas(Num(TA.AM), TA.AM) = i
        ElseIf GetOBJ(i, "ObjType") = CStr("2") And CStr(GetOBJ(i, "StaffPower")) = vbNullString And CStr(GetOBJ(i, "Apuñala")) = vbNullString And CStr(GetOBJ(i, "Proyectil")) = vbNullString And CStr(GetOBJ(i, "Municion")) = vbNullString Then    'Arma comun
            Num(TA.AC) = Num(TA.AC) + 1
            LasArmas(Num(TA.AC), TA.AC) = i
        ElseIf GetOBJ(i, "ObjType") = CStr("2") And CStr(GetOBJ(i, "Apuñala")) = CStr("1") Then    'Apuñala
            Num(TA.AA) = Num(TA.AA) + 1
            LasArmas(Num(TA.AA), TA.AA) = i
        ElseIf GetOBJ(i, "ObjType") = CStr("2") And Not CStr(GetOBJ(i, "Proyectil")) = vbNullString And Not CStr(GetOBJ(i, "Municiones")) = vbNullString Then    'Arco
            Num(TA.AR) = Num(TA.AR) + 1
            LasArmas(Num(TA.AR), TA.AR) = i
        ElseIf GetOBJ(i, "ObjType") = CStr("32") Then    'Flechas
            Num(TA.FL) = Num(TA.FL) + 1
            LasArmas(Num(TA.FL), TA.FL) = i
        End If
        Label1.Caption = "Analizando dats..." & i & "/" & CInt(GetVar(App.Path & "\DAT\OBJ.dat", "INIT", "NumObjs")) & "..." & GetOBJ(i, "Name")
        Label2.Width = (i / CInt(GetVar(App.Path & "\DAT\OBJ.dat", "INIT", "NumObjs"))) * 400
        Label3.Caption = CInt((i / CInt(GetVar(App.Path & "\DAT\OBJ.dat", "INIT", "NumObjs"))) * 100) & "/100"
        DoEvents
    Next i
    
End Sub

Private Sub Command1_Click()

    DoEvents
    Kill App.Path & "\ARMAS.html"
    DoEvents
    Dim i                       As Integer
    Dim Color                   As Byte
    Call WriteHEAD("Armas")
    HTMLName = "ARMAS"

    'Armas
    Call WriteHTML("<table class=""titulo_seccion""><tr><td><a name=""ver""></a>- Armas -</td></tr></table><br><table width=""98%"" align=""center""><tr><td>Las armas son fundamentales a la hora de batallar, algunas se pueden comprar en comercios y otras solo se pueden fabricar mediante herrería o carpintería.")

    Call WriteHTML("<br><br><br><hr noshade width=""55%"" size=""1"" color=""#959595"" align=""center""><br><br>")

    'Armas con poder magico
    Call WriteHTML("<center>Armas con Poder Mágico:</center><br>")

    Call WriteHTML("<table align=""center"" width=""90%"">")
    Call WriteHTML("<tr>")
    Call WriteHTML("<td class=""tdresaltar"" height=""40"">IMAGEN</td>")
    Call WriteHTML("<td class=""tdresaltar"">NOMBRE</td>")
    Call WriteHTML("<td class=""tdresaltar"">INCREMENTO DEL ATAQUE MÁGICO</td>")
    Call WriteHTML("<td class=""tdresaltar"">HECHIZOS AFECTADOS POR EL INCREMENTO DEL ATAQUE MÁGICO</td>")
    Call WriteHTML("<td class=""tdresaltar"">ATAQUE FÍSICO MÍN/MÁX</td>")
    Call WriteHTML("<td class=""tdresaltar"">PRECIO</td>")
    Call WriteHTML("<td class=""tdresaltar"">CLASES PERMITIDAS</td>")
    Call WriteHTML("</tr>")

    For i = 1 To 100
        Color = Color + 1
        If Color = 3 Then Color = 1
        If LasArmas(i, TA.AM) = 0 Then Exit For
        Call WriteHTML("<tr class='colorcolumna" & Color & "'><td class=""tdresaltar"" height=""50""><img src=""imagenes/" & DameGrafico(LasArmas(i, TA.AM)) & ".bmp"" width=""32"" height=""32""></td>")
        Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.AM), "Name") & "</td>")
        Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.AM), "StaffDamageBonus") & "%</td>")
        If GetOBJ(LasArmas(i, TA.AM), "StaffPower") = CStr("1") Then
            Call WriteHTML("<td class=""td2"">Apocalipsis-Descarga Eléctrica-Tormenta de Fuego.</td>")
        ElseIf GetOBJ(LasArmas(i, TA.AM), "StaffPower") = CStr("2") Then
            Call WriteHTML("<td class=""td2"">Todos los hechizos que causen daño, no cura.</td>")
        End If
        Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.AM), "MinHit") & " / " & GetOBJ(LasArmas(i, TA.AM), "MaxHit") & "</td>")
        Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.AM), "Valor") & "</td>")
        Call WriteHTML("<td class=""td2"">" & DameClases(LasArmas(i, TA.AM)) & "</td>")
        Call WriteHTML("</tr>")
        DoEvents
        Label1.Caption = "Escribiendo armas de mago: " & i & "/100"
    Next i

    Call WriteHTML("</table>")

    'Armas cuerpo a cuerpo
    Call WriteHTML("<br><br><br><hr noshade width=""55%"" size=""1"" color=""#959595"" align=""center""><br><br>")

    Call WriteHTML("<center>Armas Cuerpo a Cuerpo:</center><br>")

    Call WriteHTML("<table align=""center"" width=""90%"">")
    Call WriteHTML("<tr>")
    Call WriteHTML("<td class=""tdresaltar"" height=""33"">IMAGEN</td>")
    Call WriteHTML("<td class=""tdresaltar"">NOMBRE</td>")
    Call WriteHTML("<td class=""tdresaltar"">DAÑO MIN/MAX</td>")
    Call WriteHTML("<td class=""tdresaltar"">PRECIO</td>")
    Call WriteHTML("<td class=""tdresaltar"">CLASES PERMITIDAS</td>")
    Call WriteHTML("</tr>")

    For i = 1 To 100
        Color = Color + 1
        If Color = 3 Then Color = 1
        If LasArmas(i, TA.AC) = 0 Then Exit For
        Call WriteHTML("<tr class='colorcolumna" & Color & "'><td class=""tdresaltar"" height=""40""><img src=""imagenes/" & DameGrafico(LasArmas(i, TA.AC)) & ".bmp"" width=""32"" height=""32""></td>")
        Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.AC), "Name") & "</td>")
        If GetOBJ(LasArmas(i, TA.AC), "SOLONPC") = CStr("1") Then
            Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.AC), "MinHit") & " / " & GetOBJ(LasArmas(i, TA.AC), "MaxHit") & " (SOLO NPCS)</td>")
        Else
            Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.AC), "MinHit") & " / " & GetOBJ(LasArmas(i, TA.AC), "MaxHit") & "</td>")
        End If
        Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.AC), "Valor") & "</td>")
        Call WriteHTML("<td class=""td2"">" & DameClases(LasArmas(i, TA.AC)) & "</td>")
        Call WriteHTML("</tr>")
        DoEvents
        Label1.Caption = "Escribiendo armas de cuerpo a cuerpo: " & i & "/100"
    Next i

    Call WriteHTML("</table>")


    'Armas cuerpo a cuerpo con posibilidad de apuñalar
    Call WriteHTML("<br><br><br><hr noshade width=""55%"" size=""1"" color=""#959595"" align=""center""><br><br>")

    Call WriteHTML("<center>Armas Cuerpo a Cuerpo con posibilidad de apuñalar:</center><br>")

    Call WriteHTML("<table align=""center"" width=""90%"">")
    Call WriteHTML("<tr>")
    Call WriteHTML("<td class=""tdresaltar"" width=""6%"" height=""33"">IMAGEN</td>")
    Call WriteHTML("<td class=""tdresaltar"">NOMBRE</td>")
    Call WriteHTML("<td class=""tdresaltar"">DAÑO MIN/MAX</td>")
    Call WriteHTML("<td class=""tdresaltar"">PRECIO</td>")
    Call WriteHTML("<td class=""tdresaltar"">CLASES PERMITIDAS</td>")
    Call WriteHTML("</tr>")

    For i = 1 To 100
        Color = Color + 1
        If Color = 3 Then Color = 1
        If LasArmas(i, TA.AA) = 0 Then Exit For
        Call WriteHTML("<tr class='colorcolumna" & Color & "'><td class=""tdresaltar"" height=""40""><img src=""imagenes/" & DameGrafico(LasArmas(i, TA.AA)) & ".bmp"" width=""32"" height=""32""></td>")
        Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.AA), "Name") & "</td>")
        If GetOBJ(LasArmas(i, TA.AA), "SOLONPC") = CStr("1") Then
            Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.AA), "MinHit") & " / " & GetOBJ(LasArmas(i, TA.AA), "MaxHit") & " (SOLO NPCS)</td>")
        Else
            Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.AA), "MinHit") & " / " & GetOBJ(LasArmas(i, TA.AA), "MaxHit") & "</td>")
        End If
        Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.AA), "Valor") & "</td>")
        Call WriteHTML("<td class=""td2"">" & DameClases(LasArmas(i, TA.AA)) & "</td>")
        Call WriteHTML("</tr>")
        DoEvents
        Label1.Caption = "Escribiendo armas de cuerpo a cuerpo con posibilidad de apuñalar: " & i & "/100"
    Next i

    Call WriteHTML("</table>")

    'Armas Cuerpo a Cuerpo que sirven como Herramientas de Trabajo:
    Call WriteHTML("<br><br><br><hr noshade width=""55%"" size=""1"" color=""#959595"" align=""center""><br><br>")

    Call WriteHTML("<center>Armas Cuerpo a Cuerpo que sirven como Herramientas de Trabajo:</center><br>")

    Call WriteHTML("<table align=""center"" width=""90%"">")
    Call WriteHTML("<tr>")
    Call WriteHTML("<td class=""tdresaltar"" width=""6%"" height=""33"">IMAGEN</td>")
    Call WriteHTML("<td class=""tdresaltar"">NOMBRE</td>")
    Call WriteHTML("<td class=""tdresaltar"">DAÑO MIN/MAX</td>")
    Call WriteHTML("<td class=""tdresaltar"">PRECIO</td>")
    Call WriteHTML("<td class=""tdresaltar"">CLASES PERMITIDAS</td>")
    Call WriteHTML("</tr>")

    For i = 1 To 100
        Color = Color + 1
        If Color = 3 Then Color = 1
        If LasArmas(i, TA.HE) = 0 Then Exit For
        Call WriteHTML("<tr class='colorcolumna" & Color & "'><td class=""tdresaltar"" height=""40""><img src=""imagenes/" & DameGrafico(LasArmas(i, TA.HE)) & ".bmp"" width=""32"" height=""32""></td>")
        Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.HE), "Name") & "</td>")
        If GetOBJ(LasArmas(i, TA.HE), "SOLONPC") = CStr("1") Then
            Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.HE), "MinHit") & " / " & GetOBJ(LasArmas(i, TA.HE), "MaxHit") & " (SOLO NPCS)</td>")
        Else
            Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.HE), "MinHit") & " / " & GetOBJ(LasArmas(i, TA.HE), "MaxHit") & "</td>")
        End If
        Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.HE), "Valor") & "</td>")
        Call WriteHTML("<td class=""td2"">" & DameClases(LasArmas(i, TA.HE)) & "</td>")
        Call WriteHTML("</tr>")
        DoEvents
        Label1.Caption = "Escribiendo armas de cuerpo a cuerpo con posibilidad de apuñalar: " & i & "/100"
    Next i

    Call WriteHTML("</table>")

    'Armas Cuerpo a Cuerpo que sirven como Herramientas de Trabajo:
    Call WriteHTML("<br><br><br><hr noshade width=""55%"" size=""1"" color=""#959595"" align=""center""><br><br>")

    Call WriteHTML("<center>Armas Cuerpo a Cuerpo que sirven como Herramientas de Trabajo:</center><br>")

    Call WriteHTML("<table align=""center"" width=""90%"">")
    Call WriteHTML("<tr>")
    Call WriteHTML("<td class=""tdresaltar"" width=""6%"" height=""33"">IMAGEN</td>")
    Call WriteHTML("<td class=""tdresaltar"">NOMBRE</td>")
    Call WriteHTML("<td class=""tdresaltar"">PERFORACIÓN</td>")
    Call WriteHTML("<td class=""tdresaltar"">DAÑO MIN/MAX</td>")
    Call WriteHTML("<td class=""tdresaltar"">PRECIO</td>")
    Call WriteHTML("<td class=""tdresaltar"">CLASES PERMITIDAS</td>")
    Call WriteHTML("</tr>")

    For i = 1 To 100
        Color = Color + 1
        If Color = 3 Then Color = 1
        If LasArmas(i, TA.AR) = 0 Then Exit For
        Call WriteHTML("<tr class='colorcolumna" & Color & "'><td class=""tdresaltar"" height=""40""><img src=""imagenes/" & DameGrafico(LasArmas(i, TA.AR)) & ".bmp"" width=""32"" height=""32""></td>")
        Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.AR), "Name") & "</td>")
        Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.AR), "Refuerzo") & "</td>")
        If GetOBJ(LasArmas(i, TA.AR), "SOLONPC") = CStr("1") Then
            Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.AR), "MinHit") & " / " & GetOBJ(LasArmas(i, TA.AR), "MaxHit") & " (SOLO NPCS)</td>")
        Else
            Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.AR), "MinHit") & " / " & GetOBJ(LasArmas(i, TA.AR), "MaxHit") & "</td>")
        End If
        Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.AR), "Valor") & "</td>")
        Call WriteHTML("<td class=""td2"">" & DameClases(LasArmas(i, TA.AR)) & "</td>")
        Call WriteHTML("</tr>")
        DoEvents
        Label1.Caption = "Escribiendo armas de cuerpo a cuerpo con posibilidad de apuñalar: " & i & "/100"
    Next i

    Call WriteHTML("</table>")

    'Municiones para Armas de Proyectiles:
    Call WriteHTML("<br><br><br><hr noshade width=""55%"" size=""1"" color=""#959595"" align=""center""><br><br>")

    Call WriteHTML("<center>Municiones para Armas de Proyectiles:</center><br>")

    Call WriteHTML("<table align=""center"" width=""90%"">")
    Call WriteHTML("<tr>")
    Call WriteHTML("<td class=""tdresaltar"" width=""6%"" height=""33"">IMAGEN</td>")
    Call WriteHTML("<td class=""tdresaltar"">NOMBRE</td>")
    Call WriteHTML("<td class=""tdresaltar"">DAÑO MIN/MAX</td>")
    Call WriteHTML("<td class=""tdresaltar"">PRECIO</td>")
    Call WriteHTML("<td class=""tdresaltar"">CLASES PERMITIDAS</td>")
    Call WriteHTML("</tr>")

    For i = 1 To 100
        Color = Color + 1
        If Color = 3 Then Color = 1
        If LasArmas(i, TA.FL) = 0 Then Exit For
        Call WriteHTML("<tr class='colorcolumna" & Color & "'><td class=""tdresaltar"" height=""40""><img src=""imagenes/" & DameGrafico(LasArmas(i, TA.FL)) & ".bmp"" width=""32"" height=""32""></td>")
        Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.FL), "Name") & "</td>")
        If GetOBJ(LasArmas(i, TA.FL), "SOLONPC") = CStr("1") Then
            Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.FL), "MinHit") & " / " & GetOBJ(LasArmas(i, TA.FL), "MaxHit") & " (SOLO NPCS)</td>")
        Else
            Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.FL), "MinHit") & " / " & GetOBJ(LasArmas(i, TA.FL), "MaxHit") & "</td>")
        End If
        Call WriteHTML("<td class=""td2"">" & GetOBJ(LasArmas(i, TA.FL), "Valor") & "</td>")
        Call WriteHTML("<td class=""td2"">" & DameClases(LasArmas(i, TA.FL)) & "</td>")
        Call WriteHTML("</tr>")
        DoEvents
        Label1.Caption = "Escribiendo armas de cuerpo a cuerpo con posibilidad de apuñalar: " & i & "/100"
    Next i

    Call WriteHTML("</table>")
    Call WriteFINISH


    Label1.Caption = "Terminado."
End Sub
Private Function DameGrafico(ByVal NumOBJ As Integer) As String
Dim GrhIndex                    As Integer
Dim LineaGRH                    As String
    GrhIndex = GetOBJ(NumOBJ, "GrhIndex")
    LineaGRH = GetVar(App.Path & "\Expo\Graficos.ini", "Graphics", "Grh" & GrhIndex)
    LineaGRH = ReadField(2, LineaGRH, Asc("-"))
    DameGrafico = LineaGRH
End Function
Private Function DameClases(ByVal NumOBJ As Integer) As String
Dim ListaClases(0 To 15)        As String
Dim i                           As Byte
Dim i2                          As Byte
Dim TempClase                   As String

    ListaClases(0) = "Mago"
    ListaClases(1) = "Clerigo"
    ListaClases(2) = "Guerrero"
    ListaClases(3) = "Asesino"
    ListaClases(4) = "Ladron"
    ListaClases(5) = "Bardo"
    ListaClases(6) = "Druida"
    ListaClases(7) = "Bandido"
    ListaClases(8) = "Paladin"
    ListaClases(9) = "Cazador"
    ListaClases(10) = "Pescador"
    ListaClases(11) = "Herrero"
    ListaClases(12) = "Leñador"
    ListaClases(13) = "Minero"
    ListaClases(14) = "Carpintero"
    ListaClases(15) = "Pirata"

    For i = 1 To 16
        TempClase = GetOBJ(NumOBJ, "CP" & i)
        If TempClase = vbNullString Then Exit For
        For i2 = 0 To 15
            If UCase$(TempClase) = UCase$(ListaClases(i2)) Then
                ListaClases(i2) = ""
            End If
        Next i2
    Next i
    Dim Cadena                  As String
    i2 = 0
    For i = 0 To 15
        If Not ListaClases(i) = vbNullString Then
            Cadena = Cadena & ListaClases(i) & "-"
            i2 = i2 + 1
        End If
    Next i
    If i2 = 16 Then
        DameClases = "Todas"
    ElseIf Cadena = "" Then
        DameClases = "Ninguna"
    Else
        DameClases = Left$(Cadena, Len(Cadena) - 1)
    End If

End Function

Private Function GetOBJ(ByVal NumOBJ As Integer, ByVal Name As String) As String
    
    GetOBJ = GetVar(App.Path & "\DAT\OBJ.dat", "OBJ" & NumOBJ, Name)
    If Name = "Refuerzo" And GetOBJ = "" Then GetOBJ = "-"
    If (Name = "MinHit" Or Name = "MaxHit") And GetOBJ = "" Then GetOBJ = "-"

End Function

'Private Function GetNPC(ByVal Name As String) As String
'    GetOBJ = GetVar(App.Path & "\DAT\OBJ.dat", Name)
'End Function

Private Sub Command2_Click()
    Call AnalizarARMAS
End Sub

Private Sub Command3_Click()
    DoEvents
    Kill App.Path & "\ARMADURAS.html"
    DoEvents
    Dim i                       As Integer
    Dim Color                   As Byte
    Call WriteHEAD("Armaduras")
    HTMLName = "ARMADURAS"
End Sub
