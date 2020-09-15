Attribute VB_Name = "modRenderer"
Option Explicit

' ==================================================================================
' Author:      Steve McMahon
' Date:        15 March 1999
' Requires:    cDIBSection.cls
'              IJL11.DLL (Intel)
'
' An interface to Intel's IJL (Intel JPG Library) for use in VB.
'
' Modifications
'  Author: Alejandro Salvo
'  Date: 5 February 2007
'  Description: Added ScreenCapture Method and removed usless things.
'
'
' Copyright.
' IJL.DLL is a copyright © Intel, which is a registered trade mark of the Intel
' Corporation.
'
'
' Note.
' Intel are not responsible for any errors in this code and should not be
' mentioned in any Help, About or support in any product using the Intel library.
'
'
'
' ==================================================================================

' IJL Declares:

Private Enum IJLERR
  '// The following "error" values indicate an "OK" condition.
  IJL_OK = 0
  IJL_INTERRUPT_OK = 1
  IJL_ROI_OK = 2

  '// The following "error" values indicate an error has occurred.
  IJL_EXCEPTION_DETECTED = -1
  IJL_INVALID_ENCODER = -2
  IJL_UNSUPPORTED_SUBSAMPLING = -3
  IJL_UNSUPPORTED_BYTES_PER_PIXEL = -4
  IJL_MEMORY_ERROR = -5
  IJL_BAD_HUFFMAN_TABLE = -6
  IJL_BAD_QUANT_TABLE = -7
  IJL_INVALID_JPEG_PROPERTIES = -8
  IJL_ERR_FILECLOSE = -9
  IJL_INVALID_FILENAME = -10
  IJL_ERROR_EOF = -11
  IJL_PROG_NOT_SUPPORTED = -12
  IJL_ERR_NOT_JPEG = -13
  IJL_ERR_COMP = -14
  IJL_ERR_SOF = -15
  IJL_ERR_DNL = -16
  IJL_ERR_NO_HUF = -17
  IJL_ERR_NO_QUAN = -18
  IJL_ERR_NO_FRAME = -19
  IJL_ERR_MULT_FRAME = -20
  IJL_ERR_DATA = -21
  IJL_ERR_NO_IMAGE = -22
  IJL_FILE_ERROR = -23
  IJL_INTERNAL_ERROR = -24
  IJL_BAD_RST_MARKER = -25
  IJL_THUMBNAIL_DIB_TOO_SMALL = -26
  IJL_THUMBNAIL_DIB_WRONG_COLOR = -27
  IJL_RESERVED = -99

End Enum

Private Enum IJLIOTYPE
  IJL_SETUP = -1&
  ''// Read JPEG parameters (i.e., height, width, channels,
  ''// sampling, etc.) from a JPEG bit stream.
  IJL_JFILE_READPARAMS = 0&
  IJL_JBUFF_READPARAMS = 1&
  ''// Read a JPEG Interchange Format image.
  IJL_JFILE_READWHOLEIMAGE = 2&
  IJL_JBUFF_READWHOLEIMAGE = 3&
  ''// Read JPEG tables from a JPEG Abbreviated Format bit stream.
  IJL_JFILE_READHEADER = 4&
  IJL_JBUFF_READHEADER = 5&
  ''// Read image info from a JPEG Abbreviated Format bit stream.
  IJL_JFILE_READENTROPY = 6&
  IJL_JBUFF_READENTROPY = 7&
  ''// Write an entire JFIF bit stream.
  IJL_JFILE_WRITEWHOLEIMAGE = 8&
  IJL_JBUFF_WRITEWHOLEIMAGE = 9&
  ''// Write a JPEG Abbreviated Format bit stream.
  IJL_JFILE_WRITEHEADER = 10&
  IJL_JBUFF_WRITEHEADER = 11&
  ''// Write image info to a JPEG Abbreviated Format bit stream.
  IJL_JFILE_WRITEENTROPY = 12&
  IJL_JBUFF_WRITEENTROPY = 13&
  ''// Scaled Decoding Options:
  ''// Reads a JPEG image scaled to 1/2 size.
  IJL_JFILE_READONEHALF = 14&
  IJL_JBUFF_READONEHALF = 15&
  ''// Reads a JPEG image scaled to 1/4 size.
  IJL_JFILE_READONEQUARTER = 16&
  IJL_JBUFF_READONEQUARTER = 17&
  ''// Reads a JPEG image scaled to 1/8 size.
  IJL_JFILE_READONEEIGHTH = 18&
  IJL_JBUFF_READONEEIGHTH = 19&
  ''// Reads an embedded thumbnail from a JFIF bit stream.
  IJL_JFILE_READTHUMBNAIL = 20&
  IJL_JBUFF_READTHUMBNAIL = 21&

End Enum

Private Type JPEG_CORE_PROPERTIES_VB ' Sadly, due to a limitation in VB (UDT variable count)
                                     ' we can't encode the full JPEG_CORE_PROPERTIES structure
  UseJPEGPROPERTIES As Long                      '// default = 0

  '// DIB specific I/O data specifiers.
  DIBBytes As Long ';                  '// default = NULL 4
  DIBWidth As Long ';                  '// default = 0 8
  DIBHeight As Long ';                 '// default = 0 12
  DIBPadBytes As Long ';               '// default = 0 16
  DIBChannels As Long ';               '// default = 3 20
  DIBColor As Long ';                  '// default = IJL_BGR 24
  DIBSubsampling As Long  ';            '// default = IJL_NONE 28

  '// JPEG specific I/O data specifiers.
  JPGFile As Long 'LPTSTR              JPGFile;                32   '// default = NULL
  JPGBytes As Long ';                  '// default = NULL 36
  JPGSizeBytes As Long ';              '// default = 0 40
  JPGWidth As Long ';                  '// default = 0 44
  JPGHeight As Long ';                 '// default = 0 48
  JPGChannels As Long ';               '// default = 3
  JPGColor As Long           ';                  '// default = IJL_YCBCR
  JPGSubsampling As Long  ';            '// default = IJL_411
  JPGThumbWidth As Long ' ;             '// default = 0
  JPGThumbHeight As Long ';            '// default = 0

  '// JPEG conversion properties.
  cconversion_reqd As Long ';          '// default = TRUE
  upsampling_reqd As Long ';           '// default = TRUE
  jquality As Long ';                  '// default = 75.  100 is my preferred quality setting.

  '// Low-level properties - 20,000 bytes.  If the whole structure
  ' is written out then VB fails with an obscure error message
  ' "Too Many Local Variables" !
  '
  ' These all default if they are not otherwise specified so there
  ' is no trouble to just assign a sufficient buffer in memory:
  jprops(0 To 19999) As Byte

End Type

'
Private Declare Function GetDC Lib "user32" (ByVal hwnd As Long) As Long
Private Declare Function ReleaseDC Lib "user32" (ByVal hwnd As Long, ByVal hdc As Long) As Long
Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (ByRef dest As Any, ByRef source As Any, ByVal byteCount As Long)

'

Private Declare Function ijlInit Lib "ijl11.dll" (jcprops As Any) As Long
Private Declare Function ijlFree Lib "ijl11.dll" (jcprops As Any) As Long
Private Declare Function ijlRead Lib "ijl11.dll" (jcprops As Any, ByVal ioType As Long) As Long
Private Declare Function ijlWrite Lib "ijl11.dll" (jcprops As Any, ByVal ioType As Long) As Long
Private Declare Function ijlGetLibVersion Lib "ijl11.dll" () As Long
Private Declare Function ijlGetErrorString Lib "ijl11.dll" (ByVal Code As Long) As Long

' Win32 Declares
Private Declare Function GlobalAlloc Lib "kernel32" (ByVal wFlags As Long, ByVal dwBytes As Long) As Long
Private Declare Function GlobalFree Lib "kernel32" (ByVal hMem As Long) As Long
Private Declare Function GlobalLock Lib "kernel32" (ByVal hMem As Long) As Long
Private Declare Function GlobalUnlock Lib "kernel32" (ByVal hMem As Long) As Long
Private Const GMEM_DDESHARE = &H2000
Private Const GMEM_DISCARDABLE = &H100
Private Const GMEM_DISCARDED = &H4000
Private Const GMEM_FIXED = &H0
Private Const GMEM_INVALID_HANDLE = &H8000
Private Const GMEM_LOCKCOUNT = &HFF
Private Const GMEM_MODIFY = &H80
Private Const GMEM_MOVEABLE = &H2
Private Const GMEM_NOCOMPACT = &H10
Private Const GMEM_NODISCARD = &H20
Private Const GMEM_NOT_BANKED = &H1000
Private Const GMEM_NOTIFY = &H4000
Private Const GMEM_SHARE = &H2000
Private Const GMEM_VALID_FLAGS = &H7F72
Private Const GMEM_ZEROINIT = &H40
Private Const GPTR = (GMEM_FIXED Or GMEM_ZEROINIT)

' Stuff for replacing a file when you have to Kill the original:
Private Const MAX_PATH = 260
Private Type FILETIME
   dwLowDateTime As Long
   dwHighDateTime As Long
End Type
Private Type WIN32_FIND_DATA
   dwFileAttributes As Long
   ftCreationTime As FILETIME
   ftLastAccessTime As FILETIME
   ftLastWriteTime As FILETIME
   nFileSizeHigh As Long
   nFileSizeLow As Long
   dwReserved0 As Long
   dwReserved1 As Long
   cFileName As String * MAX_PATH
   cAlternate As String * 14
End Type
Private Declare Function FindFirstFile Lib "kernel32" Alias "FindFirstFileA" (ByVal lpfilename As String, lpFindFileData As WIN32_FIND_DATA) As Long
Private Declare Function lopen Lib "kernel32" Alias "_lopen" (ByVal lpPathName As String, ByVal iReadWrite As Long) As Long
Private Declare Function lclose Lib "kernel32" Alias "_lclose" (ByVal hFile As Long) As Long
Private Declare Function SetFileTime Lib "kernel32" (ByVal hFile As Long, lpCreationTime As FILETIME, lpLastAccessTime As FILETIME, lpLastWriteTime As FILETIME) As Long
Private Declare Function SetFileAttributes Lib "kernel32" Alias "SetFileAttributesA" (ByVal lpfilename As String, ByVal dwFileAttributes As Long) As Long
Private Const OF_WRITE = &H1
Private Const OF_SHARE_DENY_WRITE = &H20
Private Const GENERIC_WRITE = &H40000000
Private Const GENERIC_READ = &H80000000
Private Const FILE_SHARE_WRITE = &H2
Private Const CREATE_ALWAYS = 2
Private Const FILE_BEGIN = 0
Private Const SECTION_MAP_WRITE = &H2

Public Function LoadJPG(ByRef cDib As cDIBSection, ByVal sFile As String) As Boolean

      Dim tJ As JPEG_CORE_PROPERTIES_VB
      Dim bFile() As Byte
      Dim lR As Long
      Dim lPtr As Long
      Dim lJPGWidth As Long, lJPGHeight As Long

   On Error GoTo LoadJPG_Error

10       lR = ijlInit(tJ)
20       If lR = IJL_OK Then
            
            ' Write the filename to the jcprops.JPGFile member:
30          bFile = StrConv(sFile, vbFromUnicode)
40          ReDim Preserve bFile(0 To UBound(bFile) + 1) As Byte
50          bFile(UBound(bFile)) = 0
60          lPtr = VarPtr(bFile(0))
70          CopyMemory tJ.JPGFile, lPtr, 4
            
            ' Read the JPEG file parameters:
80          lR = ijlRead(tJ, IJL_JFILE_READPARAMS)
90          If lR <> IJL_OK Then
               ' Throw error
100            MsgBox "Failed to read JPG", vbExclamation
110         Else
              ' set JPG color
120            If tJ.JPGChannels = 1 Then
130               tJ.JPGColor = 4& ' IJL_G
140            Else
150               tJ.JPGColor = 3& ' IJL_YCBCR
160            End If
                  
               ' Get the JPGWidth ...
170            lJPGWidth = tJ.JPGWidth
               ' .. & JPGHeight member values:
180            lJPGHeight = tJ.JPGHeight
            
               ' Create a buffer of sufficient size to hold the image:
190            If cDib.Create(lJPGWidth, lJPGHeight) Then
                  ' Store DIBWidth:
200               tJ.DIBWidth = lJPGWidth
                  ' Very important: tell IJL how many bytes extra there
                  ' are on each DIB scan line to pad to 32 bit boundaries:
210               tJ.DIBPadBytes = cDib.BytesPerScanLine - lJPGWidth * 3
                  ' Store DIBHeight:
220               tJ.DIBHeight = -lJPGHeight
                  ' Store Channels:
230               tJ.DIBChannels = 3&
                  ' Store DIBBytes (pointer to uncompressed JPG data):
240               tJ.DIBBytes = cDib.DIBSectionBitsPtr
                  
                  ' Now decompress the JPG into the DIBSection:
250               lR = ijlRead(tJ, IJL_JFILE_READWHOLEIMAGE)
260               If lR = IJL_OK Then
                     ' That's it!  cDib now contains the uncompressed JPG.
270                  LoadJPG = True
280               Else
                     ' Throw error:
290                  MsgBox "Cannot read Image Data from file.", vbExclamation
300               End If
310            Else
                  ' failed to create the DIB...
320            End If
330         End If
                              
            ' Ensure we have freed memory:
340         ijlFree tJ
350      Else
            ' Throw error:
360         MsgBox "Failed to initialise the IJL library: " & lR, vbExclamation
370      End If
         

   On Error GoTo 0
   Exit Function

LoadJPG_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento LoadJPG de Módulo modRenderer línea: " & Erl())
         
End Function

Public Function LoadJPGFromPtr(ByRef cDib As cDIBSection, ByVal lPtr As Long, ByVal lSize As Long) As Boolean


      Dim tJ As JPEG_CORE_PROPERTIES_VB
      Dim lR As Long
      Dim lJPGWidth As Long, lJPGHeight As Long

   On Error GoTo LoadJPGFromPtr_Error

10       lR = ijlInit(tJ)
20       If lR = IJL_OK Then
                  
            ' set JPEG buffer
30          tJ.JPGBytes = lPtr
40          tJ.JPGSizeBytes = lSize
                  
            ' Read the JPEG parameters:
50          lR = ijlRead(tJ, IJL_JBUFF_READPARAMS)
60          If lR <> IJL_OK Then
               ' Throw error
70             MsgBox "Failed to read JPG", vbExclamation
80          Else
              ' set JPG color
90             If tJ.JPGChannels = 1 Then
100               tJ.JPGColor = 4& ' IJL_G
110            Else
120               tJ.JPGColor = 3& ' IJL_YCBCR
130            End If
            
               ' Get the JPGWidth ...
140            lJPGWidth = tJ.JPGWidth
               ' .. & JPGHeight member values:
150            lJPGHeight = tJ.JPGHeight
            
               ' Create a buffer of sufficient size to hold the image:
160            If cDib.Create(lJPGWidth, lJPGHeight) Then
                  ' Store DIBWidth:
170               tJ.DIBWidth = lJPGWidth
                  ' Very important: tell IJL how many bytes extra there
                  ' are on each DIB scan line to pad to 32 bit boundaries:
180               tJ.DIBPadBytes = cDib.BytesPerScanLine - lJPGWidth * 3
                  ' Store DIBHeight:
190               tJ.DIBHeight = -lJPGHeight
                  ' Store Channels:
200               tJ.DIBChannels = 3&
                  ' Store DIBBytes (pointer to uncompressed JPG data):
210               tJ.DIBBytes = cDib.DIBSectionBitsPtr
                  
                  ' Now decompress the JPG into the DIBSection:
220               lR = ijlRead(tJ, IJL_JBUFF_READWHOLEIMAGE)
230               If lR = IJL_OK Then
                     ' That's it!  cDib now contains the uncompressed JPG.
240                  LoadJPGFromPtr = True
250               Else
                     ' Throw error:
260                  MsgBox "Cannot read Image Data from file.", vbExclamation
270               End If
280            Else
                  ' failed to create the DIB...
290            End If
300         End If
                              
            ' Ensure we have freed memory:
310         ijlFree tJ
320      Else
            ' Throw error:
330         MsgBox "Failed to initialise the IJL library: " & lR, vbExclamation
340      End If

   On Error GoTo 0
   Exit Function

LoadJPGFromPtr_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento LoadJPGFromPtr de Módulo modRenderer línea: " & Erl())
         
End Function

Public Function SaveJPG(ByRef cDib As cDIBSection, ByVal sFile As String, Optional ByVal lQuality As Long = 90) As Boolean

Dim tJ As JPEG_CORE_PROPERTIES_VB
Dim bFile() As Byte
Dim lPtr As Long
Dim lR As Long
Dim tFnd As WIN32_FIND_DATA
Dim hFile As Long
Dim bFileExisted As Boolean
Dim lFileSize As Long
   
   hFile = -1
   
   lR = ijlInit(tJ)
   If lR = IJL_OK Then
      
      ' Check if we're attempting to overwrite an existing file.
      ' If so hFile <> INVALID_FILE_HANDLE:
      bFileExisted = (FindFirstFile(sFile, tFnd) <> -1)
      If bFileExisted Then
         Kill sFile
      End If
      
      ' Set up the DIB information:
      ' Store DIBWidth:
      tJ.DIBWidth = cDib.Width
      ' Store DIBHeight:
      tJ.DIBHeight = -cDib.Height
      ' Store DIBBytes (pointer to uncompressed JPG data):
      tJ.DIBBytes = cDib.DIBSectionBitsPtr
      ' Very important: tell IJL how many bytes extra there
      ' are on each DIB scan line to pad to 32 bit boundaries:
      tJ.DIBPadBytes = cDib.BytesPerScanLine - cDib.Width * 3
      
      ' Set up the JPEG information:
      
      ' Store JPGFile:
      bFile = StrConv(sFile, vbFromUnicode)
      ReDim Preserve bFile(0 To UBound(bFile) + 1) As Byte
      bFile(UBound(bFile)) = 0
      lPtr = VarPtr(bFile(0))
      CopyMemory tJ.JPGFile, lPtr, 4
      ' Store JPGWidth:
      tJ.JPGWidth = cDib.Width
      ' .. & JPGHeight member values:
      tJ.JPGHeight = cDib.Height
      ' Set the quality/compression to save:
      tJ.jquality = lQuality
            
      ' Write the image:
      lR = ijlWrite(tJ, IJL_JFILE_WRITEWHOLEIMAGE)
      
      ' Check for success:
      If lR = IJL_OK Then
      
         ' Now if we are replacing an existing file, then we want to
         ' put the file creation and archive information back again:
         If bFileExisted Then
            
            hFile = lopen(sFile, OF_WRITE Or OF_SHARE_DENY_WRITE)
            If hFile = 0 Then
               ' problem
            Else
               SetFileTime hFile, tFnd.ftCreationTime, tFnd.ftLastAccessTime, tFnd.ftLastWriteTime
               lclose hFile
               SetFileAttributes sFile, tFnd.dwFileAttributes
            End If
            
         End If
         
         lFileSize = tJ.JPGSizeBytes - tJ.JPGBytes
         
         ' Success:
         SaveJPG = True
         
      Else
         ' Throw error
         err.Raise 26001, "No se pudo Guarrdar el JPG" & lR, vbExclamation
      End If
      
      ' Ensure we have freed memory:
      ijlFree tJ
   Else
      ' Throw error:
      err.Raise 26001, App.EXEName & ".mIntelJPEGLibrary", "No se pudo inicializar la Libreria " & lR
   End If
   

End Function

Public Function SaveJPGToPtr( _
      ByRef cDib As cDIBSection, _
      ByVal lPtr As Long, _
      ByRef lBufSize As Long, _
      Optional ByVal lQuality As Long = 90 _
   ) As Boolean

      Dim tJ As JPEG_CORE_PROPERTIES_VB
      Dim bFile() As Byte
      Dim lR As Long
      Dim tFnd As WIN32_FIND_DATA
      Dim hFile As Long
      Dim bFileExisted As Boolean
      Dim b As Boolean
         
   On Error GoTo SaveJPGToPtr_Error

10       hFile = -1
         
20       lR = ijlInit(tJ)
30       If lR = IJL_OK Then
            
            ' Set up the DIB information:
            ' Store DIBWidth:
40          tJ.DIBWidth = cDib.Width
            ' Store DIBHeight:
50          tJ.DIBHeight = -cDib.Height
            ' Store DIBBytes (pointer to uncompressed JPG data):
60          tJ.DIBBytes = cDib.DIBSectionBitsPtr
            ' Very important: tell IJL how many bytes extra there
            ' are on each DIB scan line to pad to 32 bit boundaries:
70          tJ.DIBPadBytes = cDib.BytesPerScanLine - cDib.Width * 3
            
            ' Set up the JPEG information:
            ' Store JPGWidth:
80          tJ.JPGWidth = cDib.Width
            ' .. & JPGHeight member values:
90          tJ.JPGHeight = cDib.Height
            ' Set the quality/compression to save:
100         tJ.jquality = lQuality
            ' set JPEG buffer
110         tJ.JPGBytes = lPtr
120         tJ.JPGSizeBytes = lBufSize
                  
            ' Write the image:
130         lR = ijlWrite(tJ, IJL_JBUFF_WRITEWHOLEIMAGE)
                  
            ' Check for success:
140         If lR = IJL_OK Then
               
150            lBufSize = tJ.JPGSizeBytes
               
               ' Success:
160            SaveJPGToPtr = True
               
170         Else
               ' Throw error
180            err.Raise 26001, App.EXEName & ".mIntelJPEGLibrary", "Failed to save to JPG " & lR, vbExclamation
190         End If
            
            ' Ensure we have freed memory:
200         ijlFree tJ
210      Else
            ' Throw error:
220         err.Raise 26001, App.EXEName & ".mIntelJPEGLibrary", "Failed to initialise the IJL library: " & lR
230      End If
         

   On Error GoTo 0
   Exit Function

SaveJPGToPtr_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento SaveJPGToPtr de Módulo modRenderer línea: " & Erl())

End Function
Sub RenderToPicture(Optional Ratio As Single = 1, Optional RenderToBMP As Boolean = False, Optional XMinMapSize2 As Integer, Optional YMinMapSize2 As Integer, Optional XMaxMapSize2 As Integer, Optional YMaxMapsize2 As Integer, Optional NameMap As String = "Mapa")

10       On Error GoTo RenderToPicture_Error

20    If XMinMapSize2 = 0 Then XMinMapSize2 = XMinMapSize
30    If YMinMapSize2 = 0 Then YMinMapSize2 = YMinMapSize

40    If XMaxMapSize2 = 0 Then XMaxMapSize2 = XMaxMapSize
50    If YMaxMapsize2 = 0 Then YMaxMapsize2 = YMaxMapSize

      '*************************************************
      'Author: Salvito
      '*************************************************
      'On Error GoTo Error:


      Dim Y       As Integer              'Keeps track of where on map we are
      Dim X       As Integer
      Dim C As cDIBSection
      Dim ScreenX As Long              'Keeps track of where to place tile on screen
      Dim ScreenY As Long
      Dim r       As RECT
      Dim Sobre   As Integer
      Dim Moved   As Byte
      Dim iPPx    As Long             'Usado en el Layer de Chars
      Dim iPPy    As Long              'Usado en el Layer de Chars
      Dim Grh     As Grh                  'Temp Grh for show tile and blocked
      Dim bCapa    As Byte                 'cCapas ' 31/05/2006 - GS, control de Capas
      Dim rSourceRect         As RECT     'Usado en el Layer 1
      Dim iGrhIndex           As Integer  'Usado en el Layer 1
      Dim TempChar            As Char
      Dim TempRect As RECT
      Dim BMPSurface As DirectDrawSurface7
      Dim TSurfaceDesc As DDSURFACEDESC2


60    frmRenderer.Show vbModeless, frmMain

70    With TempRect
80        .Bottom = 3200
90        .Right = 3200
100       .Left = 0
110       .Top = 0
120   End With
          
130   With TSurfaceDesc
140       .lFlags = DDSD_CAPS Or DDSD_HEIGHT Or DDSD_WIDTH
150       If ClientSetup.bUseVideo Then
160           .ddsCaps.lCaps = DDSCAPS_OFFSCREENPLAIN
170       Else
180           .ddsCaps.lCaps = DDSCAPS_OFFSCREENPLAIN Or DDSCAPS_SYSTEMMEMORY
190       End If
200       .lHeight = 3325
210       .lWidth = 3325
220   End With

      ' Create surface
230   Set BMPSurface = DirectDraw.CreateSurface(TSurfaceDesc)

240   BMPSurface.BltColorFill r, 0 'Solucion a algunos temas molestos :P

250   If Val(frmMain.cCapas.Text) >= 1 And (frmMain.cCapas.Text) <= 4 Then
260       bCapa = Val(frmMain.cCapas.Text)
270   Else
280       bCapa = 1
290   End If
300   ScreenY = 0
310   For Y = YMinMapSize2 To YMaxMapsize2
320       frmRenderer.Caption = "Renderizando Primera Capa... " & Round(Y / (YMaxMapsize2 / 100)) & "%"
330       DoEvents
340       ScreenX = 0
350       For X = XMinMapSize2 To XMaxMapSize2
360           If InMapBounds(X, Y) Then
370               If X > XMaxMapSize2 Or Y < YMinMapSize2 Then Exit For ' 30/05/2006
                  'Layer 1 **********************************
380               If SobreX = X And SobreY = Y Then
                      ' Pone Grh !
390                   Sobre = -1
400                   If frmMain.cSeleccionarSuperficie.value = True Then
410                       Sobre = MapData(X, Y).Graphic(bCapa).GrhIndex
420                       If frmConfigSup.MOSAICO.value = vbChecked Then
                              Dim aux As Integer
                              Dim dy As Integer
                              Dim dX As Integer
430                           If frmConfigSup.DespMosaic.value = vbChecked Then
440                               dy = Val(frmConfigSup.DMLargo.Text)
450                               dX = Val(frmConfigSup.DMAncho.Text)
460                           Else
470                               dy = 0
480                               dX = 0
490                           End If
500                           If frmMain.mnuAutoCompletarSuperficies.Checked = False Then
510                               aux = Val(frmMain.cGrh.Text) + _
                                  (((Y + dy) Mod frmConfigSup.mLargo.Text) * frmConfigSup.mAncho.Text) + ((X + dX) Mod frmConfigSup.mAncho.Text)
520                               If MapData(X, Y).Graphic(bCapa).GrhIndex <> aux Then
530                                   MapData(X, Y).Graphic(bCapa).GrhIndex = aux
540                                   InitGrh MapData(X, Y).Graphic(bCapa), aux
550                               End If
560                           Else
570                               aux = Val(frmMain.cGrh.Text) + _
                                  (((Y + dy) Mod frmConfigSup.mLargo.Text) * frmConfigSup.mAncho.Text) + ((X + dX) Mod frmConfigSup.mAncho.Text)
580                               If MapData(X, Y).Graphic(bCapa).GrhIndex <> aux Then
590                                   MapData(X, Y).Graphic(bCapa).GrhIndex = aux
600                                   InitGrh MapData(X, Y).Graphic(bCapa), aux
610                               End If
620                           End If
630                       Else
640                           If MapData(X, Y).Graphic(bCapa).GrhIndex <> Val(frmMain.cGrh.Text) Then
650                               MapData(X, Y).Graphic(bCapa).GrhIndex = Val(frmMain.cGrh.Text)
660                               InitGrh MapData(X, Y).Graphic(bCapa), Val(frmMain.cGrh.Text)
670                           End If
680                       End If
690                   End If
700               Else
710                   Sobre = -1
720               End If
730               With MapData(X, Y).Graphic(1)
740                   If (.GrhIndex <> 0) Then
750                       If (.Started = 1) Then
760                           If (.SpeedCounter > 0) Then
770                               .SpeedCounter = .SpeedCounter - 1
780                               If (.SpeedCounter = 0) Then
790                                   .SpeedCounter = GrhData(.GrhIndex).Speed
800                                   .FrameCounter = .FrameCounter + 1
810                                   If (.FrameCounter > GrhData(.GrhIndex).NumFrames) Then _
                                          .FrameCounter = 1
820                               End If
830                           End If
840                       End If
                          'Figure out what frame to draw (always 1 if not animated)
850                       iGrhIndex = GrhData(.GrhIndex).Frames(.FrameCounter)
860                   End If
870               End With
880               If iGrhIndex <> 0 Then
890                   rSourceRect.Left = GrhData(iGrhIndex).sX
900                   rSourceRect.Top = GrhData(iGrhIndex).sY
910                   rSourceRect.Right = rSourceRect.Left + GrhData(iGrhIndex).pixelWidth
920                   rSourceRect.Bottom = rSourceRect.Top + GrhData(iGrhIndex).pixelHeight
                      'El width fue hardcodeado para speed!
930                   Call BMPSurface.BltFast( _
                              ((32 * ScreenX) - 32) + 0, _
                              ((32 * ScreenY) - 32) + 0, _
                              SurfaceDB.Surface(GrhData(iGrhIndex).FileNum), _
                              rSourceRect, _
                              DDBLTFAST_WAIT)
940               End If
                  'Layer 2 **********************************
950               If MapData(X, Y).Graphic(2).GrhIndex <> 0 And (frmMain.mnuVerCapa2.Checked = True) Then
960                   Call DDrawTransGrhtoSurface( _
                              BMPSurface, _
                              MapData(X, Y).Graphic(2), _
                              ((32 * ScreenX) - 32) + 0, _
                              ((32 * ScreenY) - 32) + 0, _
                              1, _
                              1)
970               End If
980               If Sobre >= 0 Then
990                   If MapData(X, Y).Graphic(bCapa).GrhIndex <> Sobre Then
1000                  MapData(X, Y).Graphic(bCapa).GrhIndex = Sobre
1010                  InitGrh MapData(X, Y).Graphic(bCapa), Sobre
1020                  End If
1030              End If
1040          End If
1050          ScreenX = ScreenX + 1
1060      Next X
1070      ScreenY = ScreenY + 1
1080      If Y > YMaxMapsize2 Then Exit For
1090  Next Y
1100  ScreenY = 0
1110  For Y = YMinMapSize2 To YMaxMapsize2
1120      ScreenX = 0
1130      frmRenderer.Caption = "Renderizando Segunda Capa... " & Round(Y / (YMaxMapsize2 / 100)) & "%"
1140      DoEvents
1150      For X = XMinMapSize2 To XMaxMapSize2
1160          If InMapBounds(X, Y) Then
1170              If X > XMaxMapSize2 Or X < XMinMapSize2 - 4 Then Exit For ' 30/05/2006
1180              iPPx = ((32 * ScreenX) - 32) + 0
1190              iPPy = ((32 * ScreenY) - 32) + 0
                   'Object Layer **********************************
1200               If MapData(X, Y).OBJInfo.objindex <> 0 And frmMain.mnuVerObjetos.Checked = True Then
1210                   Call DDrawTransGrhtoSurface( _
                               BMPSurface, _
                               MapData(X, Y).ObjGrh, _
                               iPPx, iPPy, 1, 1)
1220               End If
                  
                        'Char layer **********************************
1230                   If MapData(X, Y).CharIndex <> 0 And frmMain.mnuVerNPCs.Checked = True Then
                       
1240                       TempChar = CharList(MapData(X, Y).CharIndex)
                       
                          
                         'Dibuja solamente players
1250                     If TempChar.Head.Head(TempChar.Heading).GrhIndex <> 0 Then
                           'Draw Body
1260                       Call DDrawTransGrhtoSurface(BMPSurface, TempChar.Body.Walk(TempChar.Heading), (PixelPos(ScreenX) + 0), PixelPos(ScreenY) + 0, 1, 1)
                           'Draw Head
1270                       Call DDrawTransGrhtoSurface(BMPSurface, TempChar.Head.Head(TempChar.Heading), (PixelPos(ScreenX) + 0) + TempChar.Body.HeadOffset.X, PixelPos(ScreenY) + 0 + TempChar.Body.HeadOffset.Y, 1, 0)
1280                     Else: Call DDrawTransGrhtoSurface(BMPSurface, TempChar.Body.Walk(TempChar.Heading), (PixelPos(ScreenX) + 0), PixelPos(ScreenY) + 0, 1, 1)
1290                     End If
1300                   End If
                   'Layer 3 *****************************************
1310               If MapData(X, Y).Graphic(3).GrhIndex <> 0 And (frmMain.mnuVerCapa3.Checked = True) Then
                       'Draw
1320                   Call DDrawTransGrhtoSurface( _
                               BMPSurface, _
                               MapData(X, Y).Graphic(3), _
                               ((32 * ScreenX) - 32) + 0, _
                               ((32 * ScreenY) - 32) + 0, _
                               1, 1)
1330               End If
1340          End If
1350          ScreenX = ScreenX + 1
1360      Next X
1370      ScreenY = ScreenY + 1
1380  Next Y
      'Tiles blokeadas, techos, triggers
1390  ScreenY = 0
1400  For Y = YMinMapSize2 To YMaxMapsize2
1410      ScreenX = 0
1420      frmRenderer.Caption = "Renderizando Extras... " & Round(Y / (YMaxMapsize2 / 100)) & "%"
1430      DoEvents
1440      For X = YMinMapSize2 To XMaxMapSize2
1450          If X < XMaxMapSize2 + 1 And X > XMinMapSize2 - 1 And Y < YMaxMapsize2 + 1 And Y > YMinMapSize2 + 1 Then ' 30/05/2006
1460              If MapData(X, Y).Graphic(4).GrhIndex <> 0 _
                  And (frmMain.mnuVerCapa4.Checked = True) Then
                      'Draw
1470                  Call DDrawTransGrhtoSurface( _
                          BMPSurface, _
                          MapData(X, Y).Graphic(4), _
                          ((32 * ScreenX) - 32) + 0, _
                          ((32 * ScreenY) - 32) + 0, _
                          1, 1)
1480              End If
1490              If MapData(X, Y).TileExit.Map <> 0 And frmMain.mnuVerTranslados.Checked = True Then
1500                  Grh.GrhIndex = 3
1510                  Grh.FrameCounter = 1
1520                  Grh.Started = 0
1530                  Call DDrawTransGrhtoSurface( _
                          BMPSurface, _
                          Grh, _
                          ((32 * ScreenX) - 32) + 0, _
                          ((32 * ScreenY) - 32) + 0, _
                          1, 1)
1540              End If
                  'Show blocked tiles
1550              If frmMain.cVerBloqueos.value = True And MapData(X, Y).Blocked = 1 Then
1560                  BMPSurface.SetFillColor vbRed
1570                  Call BMPSurface.DrawBox( _
                          (((32 * ScreenX) - 32) + 0) + 16, _
                          (((32 * ScreenY) - 32) + 0) + 16, _
                          (((32 * ScreenX) - 32) + 0 + 5) + 16, _
                          (((32 * ScreenY) - 32) + 0 + 5) + 16)
1580              End If
1590              If frmMain.cVerTriggers.value = True Then
1600                  Call DrawText(PixelPos(ScreenX), PixelPos(ScreenY), str(MapData(X, Y).Trigger), vbRed)
1610              End If
1620          End If
1630          ScreenX = ScreenX + 1
1640      Next X
1650      ScreenY = ScreenY + 1
1660  Next Y

1670      frmRenderer.Caption = "Dibujando Render... 0%"
1680      DoEvents
1690  frmRenderer.Picture1.AutoRedraw = True
1700  frmRenderer.Picture1.Width = 32 * 99  '* 12
1710  frmRenderer.Picture1.Height = 32 * 99  ' * 12



      ''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      '''''''''''Dibujo el Surface en una StdPicture''''''''''
      ''''''''''''''''''''''''''''''''''''''''''''''''''''''''
1720  BMPSurface.BltToDC frmRenderer.Picture1.hdc, TempRect, TempRect
1730  frmRenderer.Picture1.Picture = frmRenderer.Picture1.Image
      ''''''''''''''''''''''''''''''''''''''''''''''''''''''''

1740      frmRenderer.Caption = "Dibujando Render... 99%"
1750      DoEvents
      ''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      'Esto para achicar la imagen, ALTO bardo, jajajaja''''''
      ''''''''''''''''''''''''''''''''''''''''''''''''''''''''
1760  If Ratio > 1 Then
1770      frmRenderer.Smallpic.Picture = frmRenderer.Picture1.Picture
1780      frmRenderer.Smallpic.Width = frmRenderer.Picture1.Width \ Ratio
1790      frmRenderer.Smallpic.Height = frmRenderer.Picture1.Height \ Ratio
       

          
1800      frmRenderer.Picture1.Height = frmRenderer.Smallpic.Height
1810      frmRenderer.Picture1.Width = frmRenderer.Smallpic.Width
1820      frmRenderer.Picture1.Cls
1830      frmRenderer.Picture1.PaintPicture frmRenderer.Smallpic.Picture, 0, 0, frmRenderer.Picture1.Width, frmRenderer.Picture1.Height
1840      frmRenderer.Picture1.Picture = frmRenderer.Picture1.Image
1850  End If
      '''''''''''''''''''''''''''''''''''''''''''''''''''''''''

      ''''''''''''''''''''''''''''''''''''''''''''''''''''''''
      '''''''''''''''''''Guardo la imagen'''''''''''''''''''''
      ''''''''''''''''''''''''''''''''''''''''''''''''''''''''
1860  If RenderToBMP Then
1870      SavePicture frmRenderer.Picture1.Picture, App.Path & "\ImagenesMundoBAO\" & NameMap & ".bmp"
1880      Debug.Print NameMap & " - " & err.Description
1890      err.Clear
1900  Else
1910      Set C = New cDIBSection
1920      C.CreateFromPicture frmRenderer.Picture1.Picture
1930      Call SaveJPG(C, App.Path & "\" & MapInfo(CurMap).Name & ".jpg")
1940      Set C = Nothing
1950  End If
1960  frmRenderer.Caption = "100% :D"
      ''''''''''''''''''''''''''''''''''''''''''''''''''''''''

      'Unload frmRenderer
1970  Set BMPSurface = Nothing

1980  Exit Sub

Error:
1990  Unload frmRenderer
2000  Set BMPSurface = Nothing
2010  Set C = Nothing
2020  MsgBox err.Description & "-" & err.Number

2030     On Error GoTo 0
2040     Exit Sub

RenderToPicture_Error:

2050      Call LogError("Error " & err.Number & " (" & err.Description & ") en procedimiento RenderToPicture de Módulo modRenderer línea: " & Erl())
End Sub
'Sub RenderToPicture(Optional Ratio As Single = 1, Optional RenderToBMP As Boolean = False, Optional XMinMapSize2 As Integer, Optional YMinMapSize2 As Integer, Optional XMaxMapSize2 As Integer, Optional YMaxMapsize2 As Integer, Optional NameMap As String = "Mapa")
'
'If XMinMapSize2 = 0 Then XMinMapSize2 = XMinMapSize
'If YMinMapSize2 = 0 Then YMinMapSize2 = YMinMapSize
'
'If XMaxMapSize2 = 0 Then XMaxMapSize2 = XMaxMapSize
'If YMaxMapsize2 = 0 Then YMaxMapsize2 = YMaxMapSize
'
''*************************************************
''Author: Salvito
''*************************************************
''On Error GoTo Error:
''On Error Resume Next
'
'Dim y       As Integer              'Keeps track of where on map we are
'Dim X       As Integer
'Dim C As cDIBSection
'Dim ScreenX As Integer              'Keeps track of where to place tile on screen
'Dim ScreenY As Integer
'Dim r       As RECT
'Dim Sobre   As Integer
'Dim Moved   As Byte
'Dim iPPx    As Integer              'Usado en el Layer de Chars
'Dim iPPy    As Integer              'Usado en el Layer de Chars
'Dim Grh     As Grh                  'Temp Grh for show tile and blocked
'Dim bCapa    As Byte                 'cCapas ' 31/05/2006 - GS, control de Capas
'Dim rSourceRect         As RECT     'Usado en el Layer 1
'Dim iGrhIndex           As Integer  'Usado en el Layer 1
'Dim TempChar            As Char
'Dim TempRect As RECT
'Dim BMPSurface As DirectDrawSurface7
'Dim TSurfaceDesc As DDSURFACEDESC2
'
'
'frmRenderer.Show vbModeless, frmMain
'
'With TempRect
'    .Bottom = 3200
'    .Right = 3200
'    .Left = 0
'    .Top = 0
'End With
'
'With TSurfaceDesc
'    .lFlags = DDSD_CAPS Or DDSD_HEIGHT Or DDSD_WIDTH
'    If ClientSetup.bUseVideo Then
'        .ddsCaps.lCaps = DDSCAPS_OFFSCREENPLAIN
'    Else
'        .ddsCaps.lCaps = DDSCAPS_OFFSCREENPLAIN Or DDSCAPS_SYSTEMMEMORY
'    End If
'    .lHeight = 3325
'    .lWidth = 3325
'End With
'
'' Create surface
'Set BMPSurface = DirectDraw.CreateSurface(TSurfaceDesc)
'
'BMPSurface.BltColorFill r, 0 'Solucion a algunos temas molestos :P
'
'If Val(frmMain.cCapas.Text) >= 1 And (frmMain.cCapas.Text) <= 4 Then
'    bCapa = Val(frmMain.cCapas.Text)
'Else
'    bCapa = 1
'End If
'ScreenY = 0
'For y = YMinMapSize2 To YMaxMapsize2
'    frmRenderer.Caption = "Renderizando Primera Capa... " & Round(y / (YMaxMapsize2 / 100)) & "%"
'    DoEvents
'    ScreenX = 0
'    For X = XMinMapSize2 To XMaxMapSize2
'        If InMapBounds(X, y) Then
'            If X > XMaxMapSize2 Or y < YMinMapSize2 Then Exit For ' 30/05/2006
'            'Layer 1 **********************************
'            If SobreX = X And SobreY = y Then
'                ' Pone Grh !
'                Sobre = -1
'                If frmMain.cSeleccionarSuperficie.value = True Then
'                    Sobre = MapData(X, y).Graphic(bCapa).GrhIndex
'                    If frmConfigSup.MOSAICO.value = vbChecked Then
'                        Dim aux As Integer
'                        Dim dy As Integer
'                        Dim dX As Integer
'                        If frmConfigSup.DespMosaic.value = vbChecked Then
'                            dy = Val(frmConfigSup.DMLargo.Text)
'                            dX = Val(frmConfigSup.DMAncho.Text)
'                        Else
'                            dy = 0
'                            dX = 0
'                        End If
'                        If frmMain.mnuAutoCompletarSuperficies.Checked = False Then
'                            aux = Val(frmMain.cGrh.Text) + _
'                            (((y + dy) Mod frmConfigSup.mLargo.Text) * frmConfigSup.mAncho.Text) + ((X + dX) Mod frmConfigSup.mAncho.Text)
'                            If MapData(X, y).Graphic(bCapa).GrhIndex <> aux Then
'                                MapData(X, y).Graphic(bCapa).GrhIndex = aux
'                                InitGrh MapData(X, y).Graphic(bCapa), aux
'                            End If
'                        Else
'                            aux = Val(frmMain.cGrh.Text) + _
'                            (((y + dy) Mod frmConfigSup.mLargo.Text) * frmConfigSup.mAncho.Text) + ((X + dX) Mod frmConfigSup.mAncho.Text)
'                            If MapData(X, y).Graphic(bCapa).GrhIndex <> aux Then
'                                MapData(X, y).Graphic(bCapa).GrhIndex = aux
'                                InitGrh MapData(X, y).Graphic(bCapa), aux
'                            End If
'                        End If
'                    Else
'                        If MapData(X, y).Graphic(bCapa).GrhIndex <> Val(frmMain.cGrh.Text) Then
'                            MapData(X, y).Graphic(bCapa).GrhIndex = Val(frmMain.cGrh.Text)
'                            InitGrh MapData(X, y).Graphic(bCapa), Val(frmMain.cGrh.Text)
'                        End If
'                    End If
'                End If
'            Else
'                Sobre = -1
'            End If
'            With MapData(X, y).Graphic(1)
'                If (.GrhIndex <> 0) Then
'                    If (.Started = 1) Then
'                        If (.SpeedCounter > 0) Then
'                            .SpeedCounter = .SpeedCounter - 1
'                            If (.SpeedCounter = 0) Then
'                                .SpeedCounter = GrhData(.GrhIndex).Speed
'                                .FrameCounter = .FrameCounter + 1
'                                If (.FrameCounter > GrhData(.GrhIndex).NumFrames) Then _
'                                    .FrameCounter = 1
'                            End If
'                        End If
'                    End If
'                    'Figure out what frame to draw (always 1 if not animated)
'                    iGrhIndex = GrhData(.GrhIndex).Frames(.FrameCounter)
'                End If
'            End With
'            If iGrhIndex <> 0 Then
'                rSourceRect.Left = GrhData(iGrhIndex).sX
'                rSourceRect.Top = GrhData(iGrhIndex).sY
'                rSourceRect.Right = rSourceRect.Left + GrhData(iGrhIndex).pixelWidth
'                rSourceRect.Bottom = rSourceRect.Top + GrhData(iGrhIndex).pixelHeight
'                'El width fue hardcodeado para speed!
'                Call BMPSurface.BltFast( _
'                        ((32 * ScreenX) - 32) + 0, _
'                        ((32 * ScreenY) - 32) + 0, _
'                        SurfaceDB.Surface(GrhData(iGrhIndex).FileNum), _
'                        rSourceRect, _
'                        DDBLTFAST_WAIT)
'            End If
'            'Layer 2 **********************************
'            If MapData(X, y).Graphic(2).GrhIndex <> 0 And (frmMain.mnuVerCapa2.Checked = True) Then
'                Call DDrawTransGrhtoSurface( _
'                        BMPSurface, _
'                        MapData(X, y).Graphic(2), _
'                        ((32 * ScreenX) - 32) + 0, _
'                        ((32 * ScreenY) - 32) + 0, _
'                        1, _
'                        1)
'            End If
'            If Sobre >= 0 Then
'                If MapData(X, y).Graphic(bCapa).GrhIndex <> Sobre Then
'                MapData(X, y).Graphic(bCapa).GrhIndex = Sobre
'                InitGrh MapData(X, y).Graphic(bCapa), Sobre
'                End If
'            End If
'        End If
'        ScreenX = ScreenX + 1
'    Next X
'    ScreenY = ScreenY + 1
'    If y > YMaxMapsize2 Then Exit For
'Next y
'ScreenY = 0
'For y = YMinMapSize2 To YMaxMapsize2
'    ScreenX = 0
'    frmRenderer.Caption = "Renderizando Segunda Capa... " & Round(y / (YMaxMapsize2 / 100)) & "%"
'    DoEvents
'    For X = XMinMapSize2 To XMaxMapSize2
'        If InMapBounds(X, y) Then
'            If X > XMaxMapSize2 Or X < XMinMapSize2 - 4 Then Exit For ' 30/05/2006
'            iPPx = ((32 * ScreenX) - 32) + 0
'            iPPy = ((32 * ScreenY) - 32) + 0
'             'Object Layer **********************************
'             If MapData(X, y).OBJInfo.objindex <> 0 And frmMain.mnuVerObjetos.Checked = True Then
'                 Call DDrawTransGrhtoSurface( _
'                         BMPSurface, _
'                         MapData(X, y).ObjGrh, _
'                         iPPx, iPPy, 1, 1)
'             End If
'
'                  'Char layer **********************************
'                 If MapData(X, y).CharIndex <> 0 And frmMain.mnuVerNPCs.Checked = True Then
'
'                     TempChar = CharList(MapData(X, y).CharIndex)
'
'
'                   'Dibuja solamente players
'                   If TempChar.Head.Head(TempChar.Heading).GrhIndex <> 0 Then
'                     'Draw Body
'                     Call DDrawTransGrhtoSurface(BMPSurface, TempChar.Body.Walk(TempChar.Heading), (PixelPos(ScreenX) + 0), PixelPos(ScreenY) + 0, 1, 1)
'                     'Draw Head
'                     Call DDrawTransGrhtoSurface(BMPSurface, TempChar.Head.Head(TempChar.Heading), (PixelPos(ScreenX) + 0) + TempChar.Body.HeadOffset.X, PixelPos(ScreenY) + 0 + TempChar.Body.HeadOffset.y, 1, 0)
'                   Else: Call DDrawTransGrhtoSurface(BMPSurface, TempChar.Body.Walk(TempChar.Heading), (PixelPos(ScreenX) + 0), PixelPos(ScreenY) + 0, 1, 1)
'                   End If
'                 End If
'             'Layer 3 *****************************************
'             If MapData(X, y).Graphic(3).GrhIndex <> 0 And (frmMain.mnuVerCapa3.Checked = True) Then
'                 'Draw
'                 Call DDrawTransGrhtoSurface( _
'                         BMPSurface, _
'                         MapData(X, y).Graphic(3), _
'                         ((32 * ScreenX) - 32) + 0, _
'                         ((32 * ScreenY) - 32) + 0, _
'                         1, 1)
'             End If
'        End If
'        ScreenX = ScreenX + 1
'    Next X
'    ScreenY = ScreenY + 1
'Next y
''Tiles blokeadas, techos, triggers
'ScreenY = 0
'For y = YMinMapSize2 To YMaxMapsize2
'    ScreenX = 0
'    frmRenderer.Caption = "Renderizando Extras... " & Round(y / (YMaxMapsize2 / 100)) & "%"
'    DoEvents
'    For X = YMinMapSize2 To XMaxMapSize2
'        If X < XMaxMapSize2 + 1 And X > XMinMapSize2 - 1 And y < YMaxMapsize2 + 1 And y > YMinMapSize2 + 1 Then ' 30/05/2006
'            If MapData(X, y).Graphic(4).GrhIndex <> 0 _
'            And (frmMain.mnuVerCapa4.Checked = True) Then
'                'Draw
'                Call DDrawTransGrhtoSurface( _
'                    BMPSurface, _
'                    MapData(X, y).Graphic(4), _
'                    ((32 * ScreenX) - 32) + 0, _
'                    ((32 * ScreenY) - 32) + 0, _
'                    1, 1)
'            End If
'            If MapData(X, y).TileExit.Map <> 0 And frmMain.mnuVerTranslados.Checked = True Then
'                Grh.GrhIndex = 3
'                Grh.FrameCounter = 1
'                Grh.Started = 0
'                Call DDrawTransGrhtoSurface( _
'                    BMPSurface, _
'                    Grh, _
'                    ((32 * ScreenX) - 32) + 0, _
'                    ((32 * ScreenY) - 32) + 0, _
'                    1, 1)
'            End If
'            'Show blocked tiles
'            If frmMain.cVerBloqueos.value = True And MapData(X, y).Blocked = 1 Then
'                BMPSurface.SetFillColor vbRed
'                Call BMPSurface.DrawBox( _
'                    (((32 * ScreenX) - 32) + 0) + 16, _
'                    (((32 * ScreenY) - 32) + 0) + 16, _
'                    (((32 * ScreenX) - 32) + 0 + 5) + 16, _
'                    (((32 * ScreenY) - 32) + 0 + 5) + 16)
'            End If
'            If frmMain.cVerTriggers.value = True Then
'                Call DrawText(PixelPos(ScreenX), PixelPos(ScreenY), Str(MapData(X, y).Trigger), vbRed)
'            End If
'        End If
'        ScreenX = ScreenX + 1
'    Next X
'    ScreenY = ScreenY + 1
'Next y
'
'    frmRenderer.Caption = "Dibujando Render... 0%"
'    DoEvents
'frmRenderer.Picture1.AutoRedraw = True
''frmRenderer.Picture1.Width = 32 * 82 * Screen.TwipsPerPixelX '* 12
''frmRenderer.Picture1.Height = 32 * 87 * Screen.TwipsPerPixelY ' * 12
'frmRenderer.Picture1.Width = 32 * 99  '* 12
'frmRenderer.Picture1.Height = 32 * 99  ' * 12
''frmRenderer.Smallpic.Width = frmRenderer.Picture1.Width \ 10
''frmRenderer.Smallpic.Height = frmRenderer.Picture1.Height \ 10
'
'
'
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''Dibujo el Surface en una StdPicture''''''''''
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'BMPSurface.BltToDC frmRenderer.Picture1.hdc, TempRect, TempRect
'frmRenderer.Picture1.Picture = frmRenderer.Picture1.Image
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'
'    frmRenderer.Caption = "Dibujando Render... 99%"
'    DoEvents
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''Esto para achicar la imagen, ALTO bardo, jajajaja''''''
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'If Ratio > 1 Then
'    frmRenderer.Smallpic.Picture = frmRenderer.Picture1.Picture
'    frmRenderer.Smallpic.Width = frmRenderer.Picture1.Width \ Ratio
'    frmRenderer.Smallpic.Height = frmRenderer.Picture1.Height \ Ratio
'
'
'
'    frmRenderer.Picture1.Height = frmRenderer.Smallpic.Height
'    frmRenderer.Picture1.Width = frmRenderer.Smallpic.Width
'    frmRenderer.Picture1.Cls
'    frmRenderer.Picture1.PaintPicture frmRenderer.Smallpic.Picture, 0, 0, frmRenderer.Picture1.Width, frmRenderer.Picture1.Height
'    frmRenderer.Picture1.Picture = frmRenderer.Picture1.Image
'End If
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
''''''''''''''''''''Guardo la imagen'''''''''''''''''''''
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'If RenderToBMP Then
'    SavePicture frmRenderer.Picture1.Picture, App.Path & "\ImagenesMundoBAO\" & NameMap & ".bmp"
'Else
'    Set C = New cDIBSection
'    C.CreateFromPicture frmRenderer.Picture1.Picture
'    Call SaveJPG(C, App.Path & "\" & MapInfo.name & ".jpg")
'    Set C = Nothing
'End If
'frmRenderer.Caption = "100% :D"
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'
''Unload frmRenderer
'Set BMPSurface = Nothing
'
'Exit Sub
'
'Error:
'Unload frmRenderer
'Set BMPSurface = Nothing
'Set C = Nothing
'MsgBox err.Description & "-" & err.Number
'End Sub
'
