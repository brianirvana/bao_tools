Attribute VB_Name = "modHTML"
Public HTMLName                 As String

Public Sub WriteHEAD(ByVal Seccion As String)
    
    Call WriteHTML("<!DOCTYPE HTML PUBLIC ""-//W3C//DTD HTML 4.01 Transitional//EN"" ""http://www.w3.org/TR/html4/loose.dtd"">")
    Call WriteHTML("<html>")

    Call WriteHTML("<!-- Mirrored from aogamers.com.ar.elserver.com/index.php?seccion=armas by HTTrack Website Copier/3.x [XR&CO'2008], Sat, 30 May 2009 09:51:14 GMT -->")
    Call WriteHTML("<!-- Added by HTTrack --><meta http-equiv=""content-type"" content=""text/html;charset=ISO-8859-1""><!-- /Added by HTTrack -->")

    Call WriteHTML("<head>")

    Call WriteHTML("<!-- GoogleBot// -->")
    Call WriteHTML("<meta name=""verify-v1"" content=""la9b6iRkMiGkE41qXVGrpUUysFyGN3ubO5aWE/SuuSw="">")
    Call WriteHTML("<!-- //GoogleBot -->")

    Call WriteHTML("<meta http-equiv=""Content-Type"" content=""text/html; charset=iso-8859-1"">")
    Call WriteHTML("<meta name=""description"" content=""ao argentum online manual argentina manual de argentum online ao manual"">")
    Call WriteHTML("<meta name=""keywords"" content=""ao argentum online manual argentina manual de argentum online ao manual"">")
    Call WriteHTML("<meta name=""copyright"" content=""Copyright (c) Wake"">")

    Call WriteHTML("<link rel=""stylesheet"" href=""css.css"" type=""text/css"">")

    Call WriteHTML("<title>Manual de Argentum Online - Sección: " & Seccion & "</title></head><body><table class=""indice""><tr><td>")

    Call WriteHTML("<table><tr><td height=""3""></td></tr></table>")

    Call WriteHTML("<table class=""tablasinborde indice"" style=""border-spacing:4px;border-collapse:separate"" bgcolor=""#000000"" align=""center"" width=""100%"" cellpadding=""3"" cellspacing=""0"">")
    Call WriteHTML("<tr>")
    Call WriteHTML("<td class=""resaltar"" align=""center"" width=""1%"">")
    Call WriteHTML("<a href=""index-2.html""><img src=""imagenes/manual/logo_random/logo_manual3.PNG"" width=""119"" height=""119"" border=""0"" title=""Manual de Argentum Online (por Wake)"" alt=""Manual de Argentum Online (por ManualMaker by MaTeO)""></a>")
    Call WriteHTML("</td>")
    
End Sub
Public Sub WriteFINISH()

    Call WriteHTML("</td></tr></table><br><br><table class=""titulo_seccion""><tr><td>---</td></tr></table><table class=""volver_indice""><tr valign=""middle""><td align=""left"">&nbsp;<a href=""index-2.html"">&lt;&lt;Ir al Índice del Manual</a></td><td align=""right"">&nbsp;</td></tr></table>")
    Call WriteHTML("</body>")
    
End Sub

Public Sub WriteHTML(ByVal Datos As String)

Dim nfile                       As Integer

    nfile = FreeFile               ' obtenemos un canal
    
    Open App.Path & "\" & HTMLName & ".html" For Append Shared As #nfile
        Print #nfile, Datos
    Close #nfile
    
    DoEvents

End Sub
