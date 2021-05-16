VERSION 5.00
Begin VB.UserControl FImage 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00C0C0FF&
   ClientHeight    =   1800
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   2400
   OLEDropMode     =   1  'Manual
   ScaleHeight     =   120
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   160
End
Attribute VB_Name = "FImage"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'********************************************************************************
'FImage Control v1.07 for Visual Basic
'Copyright (C) 2005 Simon Nash (aka YetiFoot)
'
'This program is free software; you can redistribute it and/or modify
'it under the terms of the GNU General Public License as published by
'the Free Software Foundation; either version 2 of the License, or
'(at your option) any later version.
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
'You can contact the author of this software by e-mail at
'yetifoot@users.sourceforge.net
'
'This software is made available at
'http://sourceforge.net/projects/fimage
'
'Many thanks go to the creators of the freeimage dll which this control utilises.
'For more information visit http://freeimage.sourceforge.net
'
'Thanks to the creators of freeimageocx (http://sourceforge.net/projects/freeimageocx)
'For inspiration and the code for Load/FreeLibrary and the idea to use
'InvertRect, it sped invert up a lot)
'
'Thanks to Manuel Augusto Nogueira dos Santos for his code that is used for
'soften and sharpen.  His 'mFilterG - Graphic Filters' public domain project
'is very useful to show you how to implement filters in VB.  More info on this subject
'which i believe is called 'laplace kernel' filtering, can be found in the
'comp.graphics.algorithms FAQ, which is also very useful, and covers many subjects.
'
'This version uses v3.6.1 of the freeimage dll
'********************************************************************************

Option Explicit

Event Click()
Event DblClick()
Event KeyDown(KeyCode As Integer, Shift As Integer)
Event KeyPress(KeyAscii As Integer)
Event KeyUp(KeyCode As Integer, Shift As Integer)
Event MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Event MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Event MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Event OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single) 'MappingInfo=UserControl,UserControl,-1,OLEDragDrop

'**********************************
'FreeImage Specific Stuff         *
'**********************************

'FreeImage Declares
Private Declare Function FreeImage_Allocate Lib "FreeImage.dll" Alias "_FreeImage_Allocate@24" (ByVal width As Long, ByVal height As Long, ByVal bpp As Long, Optional ByVal red_mask As Long = 0, Optional ByVal green_mask As Long = 0, Optional ByVal blue_mask As Long = 0) As Long
Private Declare Function FreeImage_GetWidth Lib "FreeImage.dll" Alias "_FreeImage_GetWidth@4" (ByVal dib As Long) As Long
Private Declare Function FreeImage_GetHeight Lib "FreeImage.dll" Alias "_FreeImage_GetHeight@4" (ByVal dib As Long) As Long
Private Declare Function FreeImage_GetBits Lib "FreeImage.dll" Alias "_FreeImage_GetBits@4" (ByVal dib As Long) As Long
Private Declare Function FreeImage_GetInfo Lib "FreeImage.dll" Alias "_FreeImage_GetInfo@4" (ByVal dib As Long) As Long
Private Declare Function FreeImage_ConvertTo24Bits Lib "FreeImage.dll" Alias "_FreeImage_ConvertTo24Bits@4" (ByVal dib As Long) As Long
Private Declare Function FreeImage_ColorQuantize Lib "FreeImage.dll" Alias "_FreeImage_ColorQuantize@8" (ByVal dib As Long, ByVal quantize As FREE_IMAGE_QUANTIZE) As Long
Private Declare Function FreeImage_Load Lib "FreeImage.dll" Alias "_FreeImage_Load@12" (ByVal FIF As FREE_IMAGE_FORMAT, ByVal filename As String, Optional ByVal flags As Long = 0) As Long
Private Declare Function FreeImage_Save Lib "FreeImage.dll" Alias "_FreeImage_Save@16" (ByVal FIF As FREE_IMAGE_FORMAT, ByVal dib As Long, ByVal filename As String, Optional ByVal flags As Long = 0) As Long
Private Declare Sub FreeImage_Unload Lib "FreeImage.dll" Alias "_FreeImage_Unload@4" (ByVal dib As Long)
Private Declare Function FreeImage_GetFIFFromFilename Lib "FreeImage.dll" Alias "_FreeImage_GetFIFFromFilename@4" (ByVal filename As String) As FREE_IMAGE_FORMAT
Private Declare Function FreeImage_Rescale Lib "FreeImage.dll" Alias "_FreeImage_Rescale@16" (ByVal dib As Long, ByVal dst_width As Long, ByVal dst_height As Long, ByVal Filter As FREE_IMAGE_FILTER) As Long
Private Declare Function FreeImage_GetFileType Lib "FreeImage.dll" Alias "_FreeImage_GetFileType@8" (ByVal filename As String, Optional ByVal size As Long = 0) As FREE_IMAGE_FORMAT
Private Declare Function FreeImage_GetVersion Lib "FreeImage.dll" Alias "_FreeImage_GetVersion@0" () As Long
Private Declare Function FreeImage_GetCopyrightMessage Lib "FreeImage.dll" Alias "_FreeImage_GetCopyrightMessage@0" () As Long
Private Declare Function FreeImage_Invert Lib "FreeImage.dll" Alias "_FreeImage_Invert@4" (ByVal dib As Long) As Boolean
Private Declare Function FreeImage_ConvertTo8Bits Lib "FreeImage.dll" Alias "_FreeImage_ConvertTo8Bits@4" (ByVal dib As Long) As Long
Private Declare Function FreeImage_GetFIFCount Lib "FreeImage.dll" Alias "_FreeImage_GetFIFCount@0" () As Long
Private Declare Function FreeImage_FIFSupportsReading Lib "FreeImage.dll" Alias "_FreeImage_FIFSupportsReading@4" (ByVal FIF As FREE_IMAGE_FORMAT) As Long
Private Declare Function FreeImage_FIFSupportsWriting Lib "FreeImage.dll" Alias "_FreeImage_FIFSupportsWriting@4" (ByVal FIF As FREE_IMAGE_FORMAT) As Long
Private Declare Function FreeImage_GetFIFExtensionList Lib "FreeImage.dll" Alias "_FreeImage_GetFIFExtensionList@4" (ByVal FIF As FREE_IMAGE_FORMAT) As Long
Private Declare Function FreeImage_GetFIFDescription Lib "FreeImage.dll" Alias "_FreeImage_GetFIFDescription@4" (ByVal FIF As FREE_IMAGE_FORMAT) As Long
Private Declare Function FreeImage_Dither Lib "FreeImage.dll" Alias "_FreeImage_Dither@8" (ByVal dib As Long, ByVal algorithm As FREE_IMAGE_DITHER) As Long
Private Declare Function FreeImage_FlipHorizontal Lib "FreeImage.dll" Alias "_FreeImage_FlipHorizontal@4" (ByVal dib As Long) As Long
Private Declare Function FreeImage_FlipVertical Lib "FreeImage.dll" Alias "_FreeImage_FlipVertical@4" (ByVal dib As Long) As Long
Private Declare Function FreeImage_RotateClassic Lib "FreeImage.dll" Alias "_FreeImage_RotateClassic@12" (ByVal dib As Long, ByVal Angle As Double) As Long
Private Declare Function FreeImage_RotateEx Lib "FreeImage.dll" Alias "_FreeImage_RotateEx@48" (ByVal dib As Long, ByVal Angle As Double, ByVal x_shift As Double, ByVal y_shift As Double, ByVal x_origin As Double, ByVal y_origin As Double, ByVal use_mask As Long) As Long
Private Declare Function FreeImage_LockPage Lib "FreeImage.dll" Alias "_FreeImage_LockPage@8" (ByVal BITMAP As Long, ByVal page As Long) As Long
Private Declare Sub FreeImage_UnlockPage Lib "FreeImage.dll" Alias "_FreeImage_UnlockPage@12" (ByVal BITMAP As Long, ByVal page As Long, ByVal changed As Long)
Private Declare Function FreeImage_OpenMultiBitmap Lib "FreeImage.dll" Alias "_FreeImage_OpenMultiBitmap@20" (ByVal FIF As FREE_IMAGE_FORMAT, ByVal filename As String, ByVal create_new As Long, ByVal read_only As Long, Optional ByVal keep_cache_in_memory As Long = 0) As Long
Private Declare Function FreeImage_CloseMultiBitmap Lib "FreeImage.dll" Alias "_FreeImage_CloseMultiBitmap@8" (ByVal BITMAP As Long, Optional ByVal flags As Long = 0) As Long
Private Declare Function FreeImage_GetBPP Lib "FreeImage.dll" Alias "_FreeImage_GetBPP@4" (ByVal dib As Long) As Long
Private Declare Function FreeImage_GetPageCount Lib "FreeImage.dll" Alias "_FreeImage_GetPageCount@4" (ByVal BITMAP As Long) As Long
'End FreeImage Declares

'FreeImage Enums
Public Enum FREE_IMAGE_FORMAT
  FIF_UNKNOWN = -1
  FIF_BMP = 0
  FIF_ICO = 1
  FIF_JPEG = 2
  FIF_JNG = 3
  FIF_KOALA = 4
  FIF_LBM = 5
  FIF_IFF = FIF_LBM
  FIF_MNG = 6
  FIF_PBM = 7
  FIF_PBMRAW = 8
  FIF_PCD = 9
  FIF_PCX = 10
  FIF_PGM = 11
  FIF_PGMRAW = 12
  FIF_PNG = 13
  FIF_PPM = 14
  FIF_PPMRAW = 15
  FIF_RAS = 16
  FIF_TARGA = 17
  FIF_TIFF = 18
  FIF_WBMP = 19
  FIF_PSD = 20
  FIF_CUT = 21
  FIF_XBM = 22
  FIF_XPM = 23
  FIF_DDS = 24
  FIF_GIF = 25
End Enum
Public Enum FREE_IMAGE_QUANTIZE
  FIQ_WUQUANT = 0
  FIQ_NNQUANT = 1
End Enum
Public Enum FREE_IMAGE_FILTER
  FILTER_BOX = 0
  FILTER_BICUBIC = 1
  FILTER_BILINEAR = 2
  FILTER_BSPLINE = 3
  FILTER_CATMULLROM = 4
  FILTER_LANCZOS3 = 5
End Enum
Public Enum FREE_IMAGE_DITHER
  FID_FS = 0
  FID_BAYER4x4 = 1
  FID_BAYER8x8 = 2
  FID_CLUSTER6x6 = 3
  FID_CLUSTER8x8 = 4
  FID_CLUSTER16x16 = 5
End Enum
'End FreeImage Enums

'FreeImage Constants
Private Const JPEG_ACCURATE As Long = 2
Private Const BMP_SAVE_RLE As Long = 1
'End FreeImage Constants

'**********************************
'Window API Specific Stuff        *
'**********************************

'Windows API Declares
Private Declare Function SetDIBitsToDevice Lib "gdi32" (ByVal hDC As Long, ByVal X As Long, ByVal Y As Long, ByVal dx As Long, ByVal dy As Long, ByVal SrcX As Long, ByVal SrcY As Long, ByVal Scan As Long, ByVal NumScans As Long, bits As Long, BitsInfo As Long, ByVal wUsage As Long) As Long
Private Declare Function GetObject Lib "gdi32" Alias "GetObjectA" (ByVal hObject As Long, ByVal nCount As Long, lpObject As Any) As Long
Private Declare Function GetDIBits Lib "gdi32" (ByVal aHDC As Long, ByVal hBitmap As Long, ByVal nStartScan As Long, ByVal nNumScans As Long, lpBits As Any, lpBI As Any, ByVal wUsage As Long) As Long
Private Declare Function lstrcpy Lib "kernel32.dll" Alias "lstrcpyA" (ByVal lpString1 As Any, ByVal lpString2 As Any) As Long
Private Declare Function lstrlen Lib "kernel32.dll" Alias "lstrlenA" (ByVal lpString As Any) As Long
Private Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long
Private Declare Function GetDC Lib "user32" (ByVal hwnd As Long) As Long
Private Declare Function ReleaseDC Lib "user32" (ByVal hwnd As Long, ByVal hDC As Long) As Long
Private Declare Function LoadLibrary Lib "kernel32" Alias "LoadLibraryA" (ByVal lpLibFileName As String) As Long
Private Declare Function FreeLibrary Lib "kernel32" (ByVal hLibModule As Long) As Long
Private Declare Function InvertRect Lib "user32" (ByVal hDC As Long, lpRect As RECT) As Long
Private Declare Function CreateCompatibleDC Lib "gdi32" (ByVal hDC As Long) As Long
Private Declare Function SelectObject Lib "gdi32" (ByVal hDC As Long, ByVal hObject As Long) As Long
Private Declare Function SetDIBits Lib "gdi32" (ByVal hDC As Long, ByVal hBitmap As Long, ByVal nStartScan As Long, ByVal nNumScans As Long, lpBits As Any, lpBI As BITMAPINFO, ByVal wUsage As Long) As Long
Private Declare Function DeleteDC Lib "gdi32" (ByVal hDC As Long) As Long
Private Declare Function GetWindowRect Lib "user32.dll" (ByVal hwnd As Long, lpRect As RECT) As Long
'End Windows API Declares

'Windows API Constants
Private Const SRCCOPY = &HCC0020
Private Const DIB_RGB_COLORS = 0
Private Const DIB_PAL_COLORS = 1
'End Windows API Constants

'Windows API Types
Private Type BITMAP
  bmType As Long
  bmWidth As Long
  bmHeight As Long
  bmWidthBytes As Long
  bmPlanes As Integer
  bmBitsPixel As Integer
  bmBits As Long
End Type
Private Type RECT
  left As Long
  top As Long
  Right As Long
  Bottom As Long
End Type
Private Type BITMAPINFOHEADER
  biSize As Long
  biWidth As Long
  biHeight As Long
  biPlanes As Integer
  biBitCount As Integer
  biCompression As Long
  biSizeImage As Long
  biXPelsPerMeter As Long
  biYPelsPerMeter As Long
  biClrUsed As Long
  biClrImportant As Long
End Type
Private Type RGBQUAD
  rgbBlue As Byte
  rgbGreen As Byte
  rgbRed As Byte
  rgbReserved As Byte
End Type
Private Type BITMAPINFO
  bmiHeader As BITMAPINFOHEADER
  bmiColors As RGBQUAD
End Type
'End Windows API Types

'**********************************
'FreeImage Control Specific Stuff *
'**********************************

'Enum used for FIGetCommonDialogFilter
Public Enum cdlgType
  cdlgLoad = 0
  cdlgSave = 1
End Enum

'Enum for errors (return in many functions)
Public Enum FIMAGE_ERROR
  FIMAGE_OK = 0
  FIMAGE_ERROR_FORMAT_UNKNOWN = 1
  FIMAGE_ERROR_DRAWDIBTODC = 2
  FIMAGE_ERROR_LOAD = 3
  FIMAGE_ERROR_GETDIBITS = 4
  FIMAGE_ERROR_SAVECONVERSION = 5
  FIMAGE_ERROR_SAVE = 6
  FIMAGE_ERROR_BITBLT = 7
  FIMAGE_ERROR_INVERTRECT = 8
  FIMAGE_ERROR_SAMESIZE = 9
  FIMAGE_ERROR_LOCKPAGE = 10
  FIMAGE_ERROR_INVALIDSIZE = 11
  FIMAGE_ERROR_RESCALE = 12
  FIMAGE_ERROR_ALLOCATE = 13
  FIMAGE_ERROR_GETFREEDIBFROMPICTURE = 14
  FIMAGE_ERROR_FIBUSY = 15
End Enum

'Default properties and storage variable
Const m_def_AutoSize = True
Dim m_AutoSize As Boolean

Const m_def_BMPSaveRLE = False
Dim m_BMPSaveRLE As Boolean

Const m_def_JPEGSaveQuality = 85
Dim m_JPEGSaveQuality As Long

Const m_def_QuantizeMethod = FIQ_WUQUANT
Dim m_QuantizeMethod As FREE_IMAGE_QUANTIZE

Const m_def_DitherMethod = FID_FS
Dim m_DitherMethod As FREE_IMAGE_DITHER

'Stores the handle to freeimage.dll for load/freelibrary
Dim hLibrary As Long

'Status of filter (so filters cant be run at the same time as each other)
Dim FIBusy As Byte

'Storage used for filters
Private iDATA() As Byte           'holds bitmap data
Private bDATA() As Byte           'holds bitmap backup
Private PicInfo As BITMAP         'bitmap info structure
Private fdibinfo As BITMAPINFO     'Device Ind. Bitmap info structure
'
'

Private Type FIDIBInfoType
  dib As Long
  width As Long
  height As Long
End Type

'********End of Declares/Constants/Enums/Types*********

'******************************************************
Public Sub FIRefresh()
  UserControl.Refresh
End Sub

'******************************************************
Public Function FIRescale(ByVal NewWidth As Long, ByVal NewHeight As Long, ByVal Method As FREE_IMAGE_FILTER) As FIMAGE_ERROR
If FIBusy = 1 Then
  FIRescale = FIMAGE_ERROR_FIBUSY
  Exit Function
End If

  Dim tmpdib As Long
  Dim ret As Long
  Dim OldWidth As Long
  Dim OldHeight As Long
  Dim r As RECT
  Dim dibinfo As FIDIBInfoType
  
    If NewWidth = 0 Or NewHeight = 0 Then
      FIRescale = FIMAGE_ERROR_INVALIDSIZE
      Exit Function
    End If
    
    'Get The Size of the control
    GetWindowRect UserControl.hwnd, r
    OldWidth = r.Right - r.left
    OldHeight = r.Bottom - r.top
    
    If (NewWidth = OldWidth) And (NewHeight = OldHeight) Then
      'Same Size Do Nothing
      FIRescale = FIMAGE_ERROR_SAMESIZE
      Exit Function
    End If

    dibinfo = GetFreeDIBFromPicture
    
    If dibinfo.dib = 0 Then
      'Problem Getting A DIB
      FIRescale = FIMAGE_ERROR_GETFREEDIBFROMPICTURE
      Exit Function
    End If
  
    'rescale to tmpdib and unload old
    tmpdib = FreeImage_Rescale(dibinfo.dib, NewWidth, NewHeight, Method)
    FreeImage_Unload (dibinfo.dib)
    dibinfo.dib = tmpdib
    
    If dibinfo.dib = 0 Then
      'Error Resizing
      FIRescale = FIMAGE_ERROR_RESCALE
      Exit Function
    End If
    
    If AutoSize = True Then
      UserControl.width = NewWidth * Screen.TwipsPerPixelX
      UserControl.height = NewHeight * Screen.TwipsPerPixelY
    End If
  
    'The next line seems to be necessary to make sure the control
    'knows its new size plus we might as well clear the image
    UserControl.Cls
  
    'Draw To DC
    ret = DrawDibToDC(dibinfo.dib, UserControl.hDC, 0, 0, NewWidth, NewHeight)
    If ret = 0 Then FIRescale = FIMAGE_ERROR_DRAWDIBTODC
    
    'Unload
    FreeImage_Unload dibinfo.dib
    
End Function

'******************************************************
Public Function FISave(filename As String, FileType As FREE_IMAGE_FORMAT) As FIMAGE_ERROR
If FIBusy = 1 Then
  FISave = FIMAGE_ERROR_FIBUSY
  Exit Function
End If

  Dim tmpdib As Long
  Dim flags As Long
  Dim ret As Long
  Dim dibinfo As FIDIBInfoType
  
    dibinfo = GetFreeDIBFromPicture
    
    If dibinfo.dib = 0 Then
      FISave = FIMAGE_ERROR_GETFREEDIBFROMPICTURE
      Exit Function
    End If
    
    'Do conversions for filetypes that have limitations and prep flags
    If FileType = FIF_JPEG Then
      tmpdib = FreeImage_ConvertTo24Bits(dibinfo.dib)
      FreeImage_Unload dibinfo.dib
      flags = m_JPEGSaveQuality
      dibinfo.dib = tmpdib
    End If
  
    If FileType = FIF_GIF Then
      tmpdib = FreeImage_ConvertTo24Bits(dibinfo.dib)
      FreeImage_Unload dibinfo.dib
      dibinfo.dib = tmpdib
      tmpdib = FreeImage_ColorQuantize(dibinfo.dib, m_QuantizeMethod)
      FreeImage_Unload dibinfo.dib
      dibinfo.dib = tmpdib
    End If

    If (FileType = FIF_BMP) And (m_BMPSaveRLE = True) Then
      'This code removed due to bug
      '
    End If
    
    If dibinfo.dib = 0 Then
      'Something went wrong during conversion
      FISave = FIMAGE_ERROR_SAVECONVERSION
      Exit Function
    End If
    
    'Save the image
    ret = FreeImage_Save(FileType, dibinfo.dib, filename, flags)
    
    If ret = 0 Then
      'Error
      FISave = FIMAGE_ERROR_SAVE
    End If
    
    'Unload
    FreeImage_Unload dibinfo.dib
    
End Function

'******************************************************
Public Function FILoad(filename As String) As FIMAGE_ERROR
If FIBusy = 1 Then
  FILoad = FIMAGE_ERROR_FIBUSY
  Exit Function
End If

  Dim FIF As FREE_IMAGE_FORMAT
  Dim dib As Long
  Dim multidib As Long
  Dim DIBWidth As Long
  Dim DIBHeight As Long
  Dim flags As Long
  Dim retval As Long
  
    'Get File Format
    FIF = FreeImage_GetFileType(filename, 0)
    If FIF = FIF_UNKNOWN Then
      FIF = FreeImage_GetFIFFromFilename(filename)
    End If
    
    'Exit If Unknown
    If FIF = FIF_UNKNOWN Then
      FILoad = FIMAGE_ERROR_FORMAT_UNKNOWN
      Exit Function
    End If
    
    'Always load jpegs accurately
    If FIF = FIF_JPEG Then flags = JPEG_ACCURATE
    
    'Load Image
    dib = FreeImage_Load(FIF, filename, flags)
    
    If dib = 0 Then
      'Problem During Load
      FILoad = FIMAGE_ERROR_LOAD
      Exit Function
    End If
    
    'Get Size
    DIBWidth = FreeImage_GetWidth(dib)
    DIBHeight = FreeImage_GetHeight(dib)
    
    'Resize Control If Necessary
    If AutoSize Then
      UserControl.width = DIBWidth * Screen.TwipsPerPixelX
      UserControl.height = DIBHeight * Screen.TwipsPerPixelY
    End If
      
    'The next line seems to be necessary to make sure the control
    'knows its new size
    UserControl.Cls
    
    'Draw To DC
    retval = DrawDibToDC(dib, UserControl.hDC, 0, 0, DIBWidth, DIBHeight)
    If retval = 0 Then FILoad = FIMAGE_ERROR_DRAWDIBTODC
    
    'Unload
    FreeImage_Unload dib
End Function

'******************************************************
Public Sub FIPSet(X As Single, Y As Single, pixelcolor As Long)
  UserControl.PSet (X, Y), pixelcolor
End Sub

'******************************************************
Public Function FIPoint(X As Single, Y As Single) As Long
  FIPoint = UserControl.Point(X, Y)
End Function

'******************************************************
Public Sub FILine(x1 As Single, y1 As Single, x2 As Single, y2 As Single, Color As Long, Optional Box As Boolean, Optional Fill As Boolean)
  If (Box = True) And (Fill = True) Then
    UserControl.Line (x1, y1)-(x2, y2), Color, BF
  ElseIf (Box = True) Then
    UserControl.Line (x1, y1)-(x2, y2), Color, B
  Else
    UserControl.Line (x1, y1)-(x2, y2), Color
  End If
End Sub

'******************************************************
Public Sub FICircle(X As Single, Y As Single, Radius As Single, Color As Long)
  UserControl.Circle (X, Y), Radius, Color
End Sub

'******************************************************
Private Function DrawDibToDC(InputDIB As Long, OutputDC As Long, DestLeft As Single, DestTop As Single, DIBWidth As Long, DIBHeight As Long) As Long
  DrawDibToDC = SetDIBitsToDevice(OutputDC, DestLeft, DestTop, DIBWidth, DIBHeight, 0, 0, 0, DIBHeight, ByVal FreeImage_GetBits(InputDIB), ByVal FreeImage_GetInfo(InputDIB), DIB_RGB_COLORS)
End Function

'******************************************************
Private Sub UserControl_Initialize()
  Dim tmpVersion As String
    hLibrary = LoadLibrary("FreeImage.dll")
    
    If hLibrary = 0 Then
        MsgBox "Failed to load FreeImage.dll", vbCritical, "DLL Load Error"
        Exit Sub
    End If
    
    tmpVersion = FIGetVersion
    If FIGetVersion <> "3.6.1" Then MsgBox ("Incorrect FreeImage.dll Version" + vbNewLine + "Should be 3.6.1" + vbNewLine + "Yours is " + tmpVersion), vbOKOnly, "DLL Error"
    
End Sub

'******************************************************
Private Sub UserControl_InitProperties()
  UserControl.BackColor = &HC0C0FF
  m_AutoSize = m_def_AutoSize
  m_BMPSaveRLE = m_def_BMPSaveRLE
  m_JPEGSaveQuality = m_def_JPEGSaveQuality
  m_QuantizeMethod = m_def_QuantizeMethod
  m_DitherMethod = m_def_DitherMethod
End Sub

Private Sub UserControl_OLEDragDrop(Data As DataObject, Effect As Long, Button As Integer, Shift As Integer, X As Single, Y As Single)
    RaiseEvent OLEDragDrop(Data, Effect, Button, Shift, X, Y)
End Sub

'******************************************************
Private Sub UserControl_Terminate()
    FreeLibrary hLibrary
End Sub

'******************************************************
Private Sub UserControl_WriteProperties(PropBag As PropertyBag)
  Call PropBag.WriteProperty("BackColor", UserControl.BackColor, &HC0C0FF)
  Call PropBag.WriteProperty("AutoSize", m_AutoSize, m_def_AutoSize)
  Call PropBag.WriteProperty("BMPSaveRLE", m_BMPSaveRLE, m_def_BMPSaveRLE)
  Call PropBag.WriteProperty("JPEGSaveQuality", m_JPEGSaveQuality, m_def_JPEGSaveQuality)
  Call PropBag.WriteProperty("QuantizeMethod", m_QuantizeMethod, m_def_QuantizeMethod)
  Call PropBag.WriteProperty("DitherMethod", m_DitherMethod, m_def_DitherMethod)
End Sub

'******************************************************
Private Sub UserControl_ReadProperties(PropBag As PropertyBag)
  UserControl.BackColor = PropBag.ReadProperty("BackColor", &HC0C0FF)
  m_AutoSize = PropBag.ReadProperty("AutoSize", m_def_AutoSize)
  m_BMPSaveRLE = PropBag.ReadProperty("BMPSaveRLE", m_def_BMPSaveRLE)
  m_JPEGSaveQuality = PropBag.ReadProperty("JPEGSaveQuality", m_def_JPEGSaveQuality)
  m_QuantizeMethod = PropBag.ReadProperty("QuantizeMethod", m_def_QuantizeMethod)
  m_DitherMethod = PropBag.ReadProperty("DitherMethod", m_def_DitherMethod)
End Sub

'******************************************************
Public Property Get AutoSize() As Boolean
  AutoSize = m_AutoSize
End Property

'******************************************************
Public Property Let AutoSize(ByVal New_AutoSize As Boolean)
  m_AutoSize = New_AutoSize
  PropertyChanged "AutoSize"
End Property

'******************************************************
Public Property Get BMPSaveRLE() As Boolean
  BMPSaveRLE = m_BMPSaveRLE
End Property

'******************************************************
Public Property Let BMPSaveRLE(ByVal New_BMPSaveRLE As Boolean)
  m_BMPSaveRLE = New_BMPSaveRLE
  PropertyChanged "BMPSaveRLE"
End Property

'******************************************************
Public Property Get JPEGSaveQuality() As Long
  JPEGSaveQuality = m_JPEGSaveQuality
End Property

'******************************************************
Public Property Let JPEGSaveQuality(ByVal New_JPEGSaveQuality As Long)
  m_JPEGSaveQuality = New_JPEGSaveQuality
  If m_JPEGSaveQuality > 100 Then m_JPEGSaveQuality = 100
  If m_JPEGSaveQuality < 1 Then m_JPEGSaveQuality = 1
  PropertyChanged "JPEGSaveQuality"
End Property

'******************************************************
Public Property Get QuantizeMethod() As FREE_IMAGE_QUANTIZE
  QuantizeMethod = m_QuantizeMethod
End Property

'******************************************************
Public Property Let QuantizeMethod(ByVal New_QuantizeMethod As FREE_IMAGE_QUANTIZE)
  m_QuantizeMethod = New_QuantizeMethod
  PropertyChanged "QuantizeMethod"
End Property

'******************************************************
Public Property Get DitherMethod() As FREE_IMAGE_DITHER
  DitherMethod = m_DitherMethod
End Property

'******************************************************
Public Property Let DitherMethod(ByVal New_DitherMethod As FREE_IMAGE_DITHER)
  m_DitherMethod = New_DitherMethod
  PropertyChanged "DitherMethod"
End Property

'******************************************************
Public Property Get BackColor() As OLE_COLOR
    BackColor = UserControl.BackColor
End Property

'******************************************************
Public Property Let BackColor(ByVal New_BackColor As OLE_COLOR)
    UserControl.BackColor() = New_BackColor
    PropertyChanged "BackColor"
End Property

'******************************************************
Private Sub UserControl_Click()
    RaiseEvent Click
End Sub

'******************************************************
Private Sub UserControl_DblClick()
    RaiseEvent DblClick
End Sub

'******************************************************
Private Sub UserControl_KeyDown(KeyCode As Integer, Shift As Integer)
    RaiseEvent KeyDown(KeyCode, Shift)
End Sub

'******************************************************
Private Sub UserControl_KeyPress(KeyAscii As Integer)
    RaiseEvent KeyPress(KeyAscii)
End Sub

'******************************************************
Private Sub UserControl_KeyUp(KeyCode As Integer, Shift As Integer)
    RaiseEvent KeyUp(KeyCode, Shift)
End Sub

'******************************************************
Private Sub UserControl_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    RaiseEvent MouseDown(Button, Shift, X, Y)
End Sub

'******************************************************
Private Sub UserControl_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    RaiseEvent MouseMove(Button, Shift, X, Y)
End Sub

'******************************************************
Private Sub UserControl_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    RaiseEvent MouseUp(Button, Shift, X, Y)
End Sub

'******************************************************
Public Function FIGetCopyrightMessage() As String
  Dim FreeInfoPtr As Long
  Dim msg As String
    FreeInfoPtr = FreeImage_GetCopyrightMessage
    msg = Space(lstrlen(FreeInfoPtr))
    lstrcpy msg, FreeInfoPtr
    FIGetCopyrightMessage = msg
End Function

'******************************************************
Public Function FIGetVersion() As String
  Dim FreeInfoPtr As Long
  Dim msg As String
    FreeInfoPtr = FreeImage_GetVersion
    msg = Space(lstrlen(FreeInfoPtr))
    lstrcpy msg, FreeInfoPtr
    FIGetVersion = msg
End Function

'******************************************************
Public Function FIScreenCapture() As FIMAGE_ERROR
If FIBusy = 1 Then
  FIScreenCapture = FIMAGE_ERROR_FIBUSY
  Exit Function
End If

  Dim scrWidth As Long
  Dim scrHeight As Long
  Dim DesktopDC As Long
  Dim ret As Long
  
  'Get ScreenSize In Pixels
  scrWidth = Screen.width / Screen.TwipsPerPixelX
  scrHeight = Screen.height / Screen.TwipsPerPixelY
  
  'Resize PictureBox To Receive Picture
  If AutoSize Then
    UserControl.width = Screen.width
    UserControl.height = Screen.height
  End If
  
  'get dc of desktop
  DesktopDC = GetDC(0)
  
  'Copy Image From Screen to control
  ret = BitBlt(UserControl.hDC, 0, 0, scrWidth, scrHeight, DesktopDC, 0, 0, SRCCOPY)
  If ret = 0 Then
    'Error
    FIScreenCapture = FIMAGE_ERROR_BITBLT
  End If
  
  ret = ReleaseDC(0, DesktopDC)
End Function

'******************************************************
Public Function FIInvert() As FIMAGE_ERROR
If FIBusy = 1 Then
  FIInvert = FIMAGE_ERROR_FIBUSY
  Exit Function
End If
  
  Dim r As RECT
  Dim ret As Long
  
    r.top = 0
    r.left = 0
    r.Bottom = (UserControl.height / Screen.TwipsPerPixelX)
    r.Right = (UserControl.width / Screen.TwipsPerPixelY)

    ret = InvertRect(UserControl.hDC, r)
    If ret = 0 Then FIInvert = FIMAGE_ERROR_INVERTRECT
    
End Function

'******************************************************
Public Function FIGreyScale() As FIMAGE_ERROR
If FIBusy = 1 Then
  FIGreyScale = FIMAGE_ERROR_FIBUSY
  Exit Function
End If

  Dim dibinfo As FIDIBInfoType
  Dim retval As Long
  Dim tmpdib As Long
  
    dibinfo = GetFreeDIBFromPicture
  
    If dibinfo.dib = 0 Then
      'Problem Getting A DIB
      FIGreyScale = FIMAGE_ERROR_GETFREEDIBFROMPICTURE
      Exit Function
    End If
  
    tmpdib = FreeImage_ConvertTo8Bits(dibinfo.dib)
    FreeImage_Unload (dibinfo.dib)
    dibinfo.dib = tmpdib
    
    'Draw To DC
    retval = DrawDibToDC(dibinfo.dib, UserControl.hDC, 0, 0, dibinfo.width, dibinfo.height)
    If retval = 0 Then FIGreyScale = FIMAGE_ERROR_DRAWDIBTODC
    
    'Unload
    FreeImage_Unload dibinfo.dib

End Function

'******************************************************
Public Function FIGetCommonDialogFilter(Method As cdlgType) As String
  Dim i As Integer
  Dim Filter As String
  Dim AllTmp As String

  For i = 0 To FreeImage_GetFIFCount - 1
    'Load has All Known and All Files included
    If Method = cdlgLoad Then
      If FreeImage_FIFSupportsReading(i) Then
        Filter = Filter + FIGetFIFDescription(i) + "(" + FIGetFIFExtensionList(i) + ")|" + FIGetFIFExtensionList(i) + "|"
        AllTmp = AllTmp + FIGetFIFExtensionList(i) + ";"
      End If
    End If
    'Save
    If Method = cdlgSave Then
      If FreeImage_FIFSupportsWriting(i) Then
        Filter = Filter + FIGetFIFDescription(i) + "(" + FIGetFIFExtensionList(i) + ")|" + FIGetFIFExtensionList(i) + "|"
      End If
    End If
  Next i
  'Add Extra Stuff if loading
  If AllTmp <> "" Then AllTmp = "All Known Formats|" + AllTmp + "|All Files (*.*)|*.*|"
  
  'Return filter as string
  FIGetCommonDialogFilter = AllTmp + left(Filter, Len(Filter) - 1) + ""
End Function

Private Function FIGetFIFExtensionList(i As Integer)
'******************************************************
  Dim FreeInfoPtr As Long
  Dim msg As String
  Dim tmpmsg As String
  Dim z As Integer
    FreeInfoPtr = FreeImage_GetFIFExtensionList(i)
    msg = Space(lstrlen(FreeInfoPtr))
    lstrcpy msg, FreeInfoPtr
    For z = 1 To Len(msg)
      If Mid(msg, z, 1) <> "," Then
        tmpmsg = tmpmsg + Mid(msg, z, 1)
      Else
        tmpmsg = tmpmsg + ";*."
      End If
    Next z
    tmpmsg = "*." + tmpmsg
    FIGetFIFExtensionList = tmpmsg
End Function

'******************************************************
Private Function FIGetFIFDescription(i As Integer)
  Dim FreeInfoPtr As Long
  Dim msg As String
    FreeInfoPtr = FreeImage_GetFIFDescription(i)
    msg = Space(lstrlen(FreeInfoPtr))
    lstrcpy msg, FreeInfoPtr
    FIGetFIFDescription = msg
End Function

'******************************************************
Public Function FIDither() As FIMAGE_ERROR
If FIBusy = 1 Then
  FIDither = FIMAGE_ERROR_FIBUSY
  Exit Function
End If

  Dim dibinfo As FIDIBInfoType
  Dim retval As Long
  Dim tmpdib As Long
  
    dibinfo = GetFreeDIBFromPicture
  
    If dibinfo.dib = 0 Then
      'Problem Getting A DIB
      FIDither = FIMAGE_ERROR_GETFREEDIBFROMPICTURE
      Exit Function
    End If
  
    tmpdib = FreeImage_Dither(dibinfo.dib, m_DitherMethod)
    FreeImage_Unload (dibinfo.dib)
    dibinfo.dib = tmpdib
    
    'Draw To DC
    retval = DrawDibToDC(dibinfo.dib, UserControl.hDC, 0, 0, dibinfo.width, dibinfo.height)
    If retval = 0 Then FIDither = FIMAGE_ERROR_DRAWDIBTODC
    
    'Unload
    FreeImage_Unload dibinfo.dib

End Function

'******************************************************
Public Function FIFlipHorizontal() As FIMAGE_ERROR
If FIBusy = 1 Then
  FIFlipHorizontal = FIMAGE_ERROR_FIBUSY
  Exit Function
End If

  Dim dibinfo As FIDIBInfoType
  Dim retval As Long
  
    dibinfo = GetFreeDIBFromPicture
  
    If dibinfo.dib = 0 Then
      'Problem Getting A DIB
      FIFlipHorizontal = FIMAGE_ERROR_GETFREEDIBFROMPICTURE
      Exit Function
    End If
  
    FreeImage_FlipHorizontal dibinfo.dib
  
    'Draw To DC
    retval = DrawDibToDC(dibinfo.dib, UserControl.hDC, 0, 0, dibinfo.width, dibinfo.height)
    If retval = 0 Then FIFlipHorizontal = FIMAGE_ERROR_DRAWDIBTODC
    
    'Unload
    FreeImage_Unload dibinfo.dib

End Function

'******************************************************
Public Function FIFlipVertical() As FIMAGE_ERROR
If FIBusy = 1 Then
  FIFlipVertical = FIMAGE_ERROR_FIBUSY
  Exit Function
End If

  Dim dibinfo As FIDIBInfoType
  Dim retval As Long
  
    dibinfo = GetFreeDIBFromPicture
  
    If dibinfo.dib = 0 Then
      'Problem Getting A DIB
      FIFlipVertical = FIMAGE_ERROR_GETFREEDIBFROMPICTURE
      Exit Function
    End If
  
    FreeImage_FlipVertical dibinfo.dib
  
    'Draw To DC
    retval = DrawDibToDC(dibinfo.dib, UserControl.hDC, 0, 0, dibinfo.width, dibinfo.height)
    If retval = 0 Then FIFlipVertical = FIMAGE_ERROR_DRAWDIBTODC
    
    'Unload
    FreeImage_Unload dibinfo.dib

End Function

'******************************************************
Public Function FIGetFIFFromFilename(filename As String) As FREE_IMAGE_FORMAT
  FIGetFIFFromFilename = FreeImage_GetFIFFromFilename(filename)
End Function

'******************************************************
Public Function FIGetThumbnail(filename As String, MaxWidth As Long, MaxHeight As Long, Method As FREE_IMAGE_FILTER, HasBackground As Boolean) As FIMAGE_ERROR
If FIBusy = 1 Then
  FIGetThumbnail = FIMAGE_ERROR_FIBUSY
  Exit Function
End If

  Dim FIF As FREE_IMAGE_FORMAT
  Dim dib As Long
  Dim DIBWidth As Long
  Dim DIBHeight As Long
  Dim NewWidth As Long
  Dim NewHeight As Long
  Dim flags As Long
  Dim retval As Long
  Dim ScaleFactor As Double
  Dim tmpdib As Long
  
    'Get File Format
    FIF = FreeImage_GetFileType(filename, 0)
    If FIF = FIF_UNKNOWN Then
      FIF = FreeImage_GetFIFFromFilename(filename)
    End If
    
    'Exit If Unknown
    If FIF = FIF_UNKNOWN Then
      FIGetThumbnail = FIMAGE_ERROR_FORMAT_UNKNOWN
      Exit Function
    End If
    
    'Load Image
    If FIF = FIF_JPEG Then flags = JPEG_ACCURATE
    dib = FreeImage_Load(FIF, filename, flags)
    If dib = 0 Then
      'Problem During Load
      FIGetThumbnail = FIMAGE_ERROR_LOAD
      Exit Function
    End If
    
    'Get Size
    DIBWidth = FreeImage_GetWidth(dib)
    DIBHeight = FreeImage_GetHeight(dib)
    
    'Get Scaling Details
    
    If DIBWidth > DIBHeight Then
      ScaleFactor = DIBWidth / DIBHeight
      
      NewWidth = MaxWidth
      NewHeight = NewWidth / ScaleFactor
      
      If NewHeight > MaxHeight Then
        NewHeight = MaxHeight
        NewWidth = NewHeight * ScaleFactor
      End If
    End If
    
    If DIBWidth < DIBHeight Then
      ScaleFactor = DIBHeight / DIBWidth
      
      NewHeight = MaxHeight
      NewWidth = NewHeight / ScaleFactor
      
      If NewWidth > MaxWidth Then
        NewWidth = MaxWidth
        NewHeight = NewWidth * ScaleFactor
      End If
    End If
    
    If DIBWidth = DIBHeight Then
      If MaxWidth > MaxHeight Then
        NewWidth = MaxHeight
        NewHeight = MaxHeight
      End If
      If MaxWidth < MaxHeight Then
        NewWidth = MaxWidth
        NewHeight = MaxWidth
      End If
      If MaxWidth = MaxHeight Then
        NewWidth = MaxWidth
        NewHeight = MaxHeight
      End If
    End If
    
    'Cant Resize images<8bit so convert
    If FreeImage_GetBPP(dib) < 8 Then
      tmpdib = FreeImage_ConvertTo24Bits(dib)
      FreeImage_Unload dib
      dib = tmpdib
    End If
    
    tmpdib = FreeImage_Rescale(dib, NewWidth, NewHeight, Method)
    FreeImage_Unload dib
    dib = tmpdib
      
    If HasBackground = True Then
      If AutoSize Then
        UserControl.width = MaxWidth * Screen.TwipsPerPixelX
        UserControl.height = MaxHeight * Screen.TwipsPerPixelY
      End If
    Else
      If AutoSize Then
        UserControl.width = NewWidth * Screen.TwipsPerPixelX
        UserControl.height = NewHeight * Screen.TwipsPerPixelY
      End If
    End If
    'The next line seems to be necessary to make sure the control
    'knows its new size, and also clears to the backgorund color
    UserControl.Cls
  
    'Draw To DC
    If HasBackground = True Then
      retval = DrawDibToDC(dib, UserControl.hDC, (MaxWidth / 2) - (NewWidth / 2), (MaxHeight / 2) - (NewHeight / 2), NewWidth, NewHeight)
    Else
      retval = DrawDibToDC(dib, UserControl.hDC, 0, 0, NewWidth, NewHeight)
    End If
    
    If retval = 0 Then FIGetThumbnail = FIMAGE_ERROR_DRAWDIBTODC
    
    'Unload
    FreeImage_Unload dib
End Function

'******************************************************
Public Function FIRotateClassic(Angle As Double) As FIMAGE_ERROR
If FIBusy = 1 Then
  FIRotateClassic = FIMAGE_ERROR_FIBUSY
  Exit Function
End If

  Dim dibinfo As FIDIBInfoType
  Dim retval As Long
  Dim tmpdib As Long
  Dim NewWidth As Long
  Dim NewHeight As Long
  
    dibinfo = GetFreeDIBFromPicture
  
    If dibinfo.dib = 0 Then
      'Problem Getting A DIB
      FIRotateClassic = FIMAGE_ERROR_GETFREEDIBFROMPICTURE
      Exit Function
    End If
  
    tmpdib = FreeImage_RotateClassic(dibinfo.dib, Angle)
    FreeImage_Unload dibinfo.dib
    dibinfo.dib = tmpdib
  
    NewWidth = FreeImage_GetWidth(dibinfo.dib)
    NewHeight = FreeImage_GetHeight(dibinfo.dib)
  
    If AutoSize Then
      UserControl.width = NewWidth * Screen.TwipsPerPixelX
      UserControl.height = NewHeight * Screen.TwipsPerPixelY
    End If
  
    'The next line seems to be necessary to make sure the control
    'knows its new size
    UserControl.Cls
  
    'Draw To DC
    retval = DrawDibToDC(dibinfo.dib, UserControl.hDC, 0, 0, NewWidth, NewHeight)
    If retval = 0 Then FIRotateClassic = FIMAGE_ERROR_DRAWDIBTODC
    
    'Unload
    FreeImage_Unload dibinfo.dib
    
End Function

'******************************************************
Public Function FIRotateEx(Angle As Double, Mask As Boolean) As FIMAGE_ERROR
If FIBusy = 1 Then
  FIRotateEx = FIMAGE_ERROR_FIBUSY
  Exit Function
End If

  Dim dibinfo As FIDIBInfoType
  Dim retval As Long
  Dim tmpdib As Long
  Dim NewWidth As Long
  Dim NewHeight As Long
  Dim xOrig As Long
  Dim yOrig As Long
  
    dibinfo = GetFreeDIBFromPicture
  
    If dibinfo.dib = 0 Then
      'Problem Getting A DIB
      FIRotateEx = FIMAGE_ERROR_GETFREEDIBFROMPICTURE
      Exit Function
    End If
  
    xOrig = FreeImage_GetWidth(dibinfo.dib) / 2
    yOrig = FreeImage_GetHeight(dibinfo.dib) / 2
  
    tmpdib = FreeImage_RotateEx(dibinfo.dib, Angle, 0, 0, xOrig, yOrig, CLng(Not Mask))
    FreeImage_Unload dibinfo.dib
    dibinfo.dib = tmpdib
    
    'Draw To DC
    retval = DrawDibToDC(dibinfo.dib, UserControl.hDC, 0, 0, dibinfo.width, dibinfo.height)
    If retval = 0 Then FIRotateEx = FIMAGE_ERROR_DRAWDIBTODC
    
    'Unload
    FreeImage_Unload dibinfo.dib
    
End Function

'******************************************************
Public Function FISoften() As FIMAGE_ERROR
If FIBusy = 1 Then
  FISoften = FIMAGE_ERROR_FIBUSY
  Exit Function
End If

FIBusy = 1
  
  Dim hdcNew As Long
  Dim oldhand As Long
  Dim ret As Long
  Dim BytesPerScanLine As Long
  Dim PadBytesPerScanLine As Long
  Dim pic 'As Long
  
  pic = UserControl.Image
  
  'get data buffer
  Call GetObject(pic, Len(PicInfo), PicInfo)
  hdcNew = CreateCompatibleDC(0&)
  oldhand = SelectObject(hdcNew, pic)
  With fdibinfo.bmiHeader
    .biSize = 40
    .biWidth = PicInfo.bmWidth
    .biHeight = -PicInfo.bmHeight     'bottom up scan line is now inverted
    .biPlanes = 1
    .biBitCount = 32
    .biCompression = 0
    BytesPerScanLine = ((((.biWidth * .biBitCount) + 31) \ 32) * 4)
    PadBytesPerScanLine = _
       BytesPerScanLine - (((.biWidth * .biBitCount) + 7) \ 8)
    .biSizeImage = BytesPerScanLine * Abs(.biHeight)
  End With
  'redimension  (BGR+pad,x,y)
  ReDim iDATA(1 To 4, 1 To PicInfo.bmWidth, 1 To PicInfo.bmHeight) As Byte
  ReDim bDATA(1 To 4, 1 To PicInfo.bmWidth, 1 To PicInfo.bmHeight) As Byte
  'get bytes
  ret = GetDIBits(hdcNew, pic, 0, PicInfo.bmHeight, iDATA(1, 1, 1), fdibinfo, DIB_RGB_COLORS)
  ret = GetDIBits(hdcNew, pic, 0, PicInfo.bmHeight, bDATA(1, 1, 1), fdibinfo, DIB_RGB_COLORS)
  
  'do it
  Smooth
  
  'copy bytes to device
  ret = SetDIBits(hdcNew, pic, 0, PicInfo.bmHeight, iDATA(1, 1, 1), fdibinfo, DIB_RGB_COLORS)
  
  'clear up
  SelectObject hdcNew, oldhand
  DeleteDC hdcNew
  ReDim iDATA(1 To 4, 1 To 2, 1 To 2) As Byte
  ReDim bDATA(1 To 4, 1 To 2, 1 To 2) As Byte

  FIBusy = 0
End Function

'******************************************************
Private Sub Smooth()
  Dim X As Long, Y As Long
  Dim r As Long, G As Long, B As Long

  For Y = 2 To PicInfo.bmHeight - 1
    For X = 2 To PicInfo.bmWidth - 1
      B = CLng(iDATA(1, X, Y)) + _
        CLng(iDATA(1, X - 1, Y)) + CLng(iDATA(1, X, Y - 1)) + _
        CLng(iDATA(1, X, Y + 1)) + CLng(iDATA(1, X + 1, Y))
      B = B \ 5
      G = CLng(iDATA(2, X, Y)) + _
        CLng(iDATA(2, X - 1, Y)) + CLng(iDATA(2, X, Y - 1)) + _
        CLng(iDATA(2, X, Y + 1)) + CLng(iDATA(2, X + 1, Y))
      G = G \ 5
      r = CLng(iDATA(3, X, Y)) + _
        CLng(iDATA(3, X - 1, Y)) + CLng(iDATA(3, X, Y - 1)) + _
        CLng(iDATA(3, X, Y + 1)) + CLng(iDATA(3, X + 1, Y))
      r = r \ 5
      iDATA(1, X, Y) = B
      iDATA(2, X, Y) = G
      iDATA(3, X, Y) = r
    Next X
    DoEvents
  Next Y
  DoEvents
End Sub

'******************************************************
Private Sub Sharpen(ByVal Factor As Long)
  Dim X As Long, Y As Long
  Dim r As Long, G As Long, B As Long
  Dim mf As Long, dF As Long
  
  mf = 24 + Factor
  dF = 8 + Factor
  For Y = 2 To PicInfo.bmHeight - 1
    For X = 2 To PicInfo.bmWidth - 1
      B = CLng(iDATA(1, X, Y - 1)) + CLng(iDATA(1, X - 1, Y)) + _
          CLng(iDATA(1, X + 1, Y)) + CLng(iDATA(1, X, Y + 1)) + _
          CLng(iDATA(1, X + 1, Y + 1)) + CLng(iDATA(1, X - 1, Y + 1)) + _
          CLng(iDATA(1, X + 1, Y - 1)) + CLng(iDATA(1, X - 1, Y - 1))
      B = (mf * CLng(iDATA(1, X, Y)) - 2 * B) \ dF
      G = CLng(iDATA(2, X, Y - 1)) + CLng(iDATA(2, X - 1, Y)) + _
          CLng(iDATA(2, X + 1, Y)) + CLng(iDATA(2, X, Y + 1)) + _
          CLng(iDATA(2, X + 1, Y + 1)) + CLng(iDATA(2, X - 1, Y + 1)) + _
          CLng(iDATA(2, X + 1, Y - 1)) + CLng(iDATA(2, X - 1, Y - 1))
      G = (mf * CLng(iDATA(2, X, Y)) - 2 * G) \ dF
      r = CLng(iDATA(3, X, Y - 1)) + CLng(iDATA(3, X - 1, Y)) + _
          CLng(iDATA(3, X + 1, Y)) + CLng(iDATA(3, X, Y + 1)) + _
          CLng(iDATA(3, X + 1, Y + 1)) + CLng(iDATA(3, X - 1, Y + 1)) + _
          CLng(iDATA(3, X + 1, Y - 1)) + CLng(iDATA(3, X - 1, Y - 1))
      r = (mf * CLng(iDATA(3, X, Y)) - 2 * r) \ dF
      If r > 255 Then r = 255
      If r < 0 Then r = 0
      If G > 255 Then G = 255
      If G < 0 Then G = 0
      If B > 255 Then B = 255
      If B < 0 Then B = 0
      iDATA(1, X, Y) = B
      iDATA(2, X, Y) = G
      iDATA(3, X, Y) = r
    Next X
    DoEvents
  Next Y
  DoEvents
End Sub

'******************************************************
Public Function FISharpen() As FIMAGE_ERROR
If FIBusy = 1 Then
  FISharpen = FIMAGE_ERROR_FIBUSY
  Exit Function
End If

FIBusy = 1
  
  Dim hdcNew As Long
  Dim oldhand As Long
  Dim ret As Long
  Dim BytesPerScanLine As Long
  Dim PadBytesPerScanLine As Long
  Dim pic 'As Long
  
  pic = UserControl.Image
  
  'get data buffer
  Call GetObject(pic, Len(PicInfo), PicInfo)
  hdcNew = CreateCompatibleDC(0&)
  oldhand = SelectObject(hdcNew, pic)
  With fdibinfo.bmiHeader
    .biSize = 40
    .biWidth = PicInfo.bmWidth
    .biHeight = -PicInfo.bmHeight     'bottom up scan line is now inverted
    .biPlanes = 1
    .biBitCount = 32
    .biCompression = 0
    BytesPerScanLine = ((((.biWidth * .biBitCount) + 31) \ 32) * 4)
    PadBytesPerScanLine = _
       BytesPerScanLine - (((.biWidth * .biBitCount) + 7) \ 8)
    .biSizeImage = BytesPerScanLine * Abs(.biHeight)
  End With
  'redimension  (BGR+pad,x,y)
  ReDim iDATA(1 To 4, 1 To PicInfo.bmWidth, 1 To PicInfo.bmHeight) As Byte
  ReDim bDATA(1 To 4, 1 To PicInfo.bmWidth, 1 To PicInfo.bmHeight) As Byte
  'get bytes
  ret = GetDIBits(hdcNew, pic, 0, PicInfo.bmHeight, iDATA(1, 1, 1), fdibinfo, DIB_RGB_COLORS)
  ret = GetDIBits(hdcNew, pic, 0, PicInfo.bmHeight, bDATA(1, 1, 1), fdibinfo, DIB_RGB_COLORS)
  
  'do it
  Sharpen 2 '(factor 2 is normal,0 is sharpen more)
  
  'copy bytes to device
  ret = SetDIBits(hdcNew, pic, 0, PicInfo.bmHeight, iDATA(1, 1, 1), fdibinfo, DIB_RGB_COLORS)
  
  'clear up
  SelectObject hdcNew, oldhand
  DeleteDC hdcNew
  ReDim iDATA(1 To 4, 1 To 2, 1 To 2) As Byte
  ReDim bDATA(1 To 4, 1 To 2, 1 To 2) As Byte
  
  FIBusy = 0
End Function

'******************************************************
Public Function FILoadPage(filename As String, page As Integer) As FIMAGE_ERROR
If FIBusy = 1 Then
  FILoadPage = FIMAGE_ERROR_FIBUSY
  Exit Function
End If
  
  Dim FIF As FREE_IMAGE_FORMAT
  Dim dib As Long
  Dim multidib As Long
  Dim DIBWidth As Long
  Dim DIBHeight As Long
  Dim flags As Long
  Dim ret As Long
  
    'Get File Format
    FIF = FreeImage_GetFileType(filename, 0)
    If FIF = FIF_UNKNOWN Then
      FIF = FreeImage_GetFIFFromFilename(filename)
    End If
    
    'Exit If Unknown
    If FIF = FIF_UNKNOWN Then
      FILoadPage = FIMAGE_ERROR_FORMAT_UNKNOWN
      Exit Function
    End If
    If FIF = FIF_TIFF Then
      'This is start of future code for multipage tif
      multidib = FreeImage_OpenMultiBitmap(FIF, filename, 0, 1, 1)
      dib = FreeImage_LockPage(multidib, page - 1)
        If dib = 0 Then
          FreeImage_CloseMultiBitmap multidib, 0
          FILoadPage = FIMAGE_ERROR_LOCKPAGE
          Exit Function
        End If
      DIBWidth = FreeImage_GetWidth(dib)
      DIBHeight = FreeImage_GetHeight(dib)
        If AutoSize Then
          UserControl.width = DIBWidth * Screen.TwipsPerPixelX
          UserControl.height = DIBHeight * Screen.TwipsPerPixelY
        End If
      UserControl.Cls
      ret = DrawDibToDC(dib, UserControl.hDC, 0, 0, DIBWidth, DIBHeight)
      If ret = 0 Then FILoadPage = FIMAGE_ERROR_DRAWDIBTODC
      FreeImage_UnlockPage multidib, page - 1, 0
      FreeImage_Unload dib
      FreeImage_CloseMultiBitmap multidib, 0
      Exit Function
    End If
End Function

'******************************************************
Public Function FIGetNumberOfPages(filename As String) As Integer
  Dim FIF As FREE_IMAGE_FORMAT
  Dim dib As Long
  Dim multidib As Long
  Dim DIBWidth As Long
  Dim DIBHeight As Long
  Dim flags As Long
  Dim ret As Long
  
    'Get File Format
    FIF = FreeImage_GetFileType(filename, 0)
    If FIF = FIF_UNKNOWN Then
      FIF = FreeImage_GetFIFFromFilename(filename)
    End If
    
    'Exit If Unknown
    If FIF = FIF_UNKNOWN Then
      Exit Function
    End If
    
    If FIF = FIF_TIFF Then
      multidib = FreeImage_OpenMultiBitmap(FIF, filename, 0, 1, 1)
      FIGetNumberOfPages = FreeImage_GetPageCount(multidib)
      FreeImage_CloseMultiBitmap multidib, 0
      Exit Function
    Else
      FIGetNumberOfPages = 1
    End If
End Function

'******************************************************
Public Function FIGetErrorString(errconst As FIMAGE_ERROR) As String

  Select Case errconst

    Case FIMAGE_OK
      FIGetErrorString = "There was no error."

    Case FIMAGE_ERROR_FORMAT_UNKNOWN
      FIGetErrorString = "Unknown image format"

    Case FIMAGE_ERROR_DRAWDIBTODC
      FIGetErrorString = "There was an error drawing to screen (DrawDibToDC)"
  
    Case FIMAGE_ERROR_LOAD
      FIGetErrorString = "Error loading image (FreeImage_Load)"
  
    Case FIMAGE_ERROR_GETDIBITS
      FIGetErrorString = "There was an error getting the image (GetDIBits)"
  
    Case FIMAGE_ERROR_SAVECONVERSION
      FIGetErrorString = "Error while converting before save."
  
    Case FIMAGE_ERROR_SAVE
      FIGetErrorString = "Error saving image (FreeImage_Save)"
  
    Case FIMAGE_ERROR_BITBLT
      FIGetErrorString = "There was an error copying the image (BitBlt)"

    Case FIMAGE_ERROR_INVERTRECT
      FIGetErrorString = "Unable to invert image (InvertRect)"

    Case FIMAGE_ERROR_SAMESIZE
      FIGetErrorString = "New size is identical to old size."

    Case FIMAGE_ERROR_LOCKPAGE
      FIGetErrorString = "Unable to lock page."
  
    Case FIMAGE_ERROR_INVALIDSIZE
      FIGetErrorString = "An invalid size was passed."
  
    Case FIMAGE_ERROR_RESCALE
      FIGetErrorString = "A problem occurred while rescaling."

    Case FIMAGE_ERROR_ALLOCATE
      FIGetErrorString = "Unable to allocate a FreeImage DIB."
  
    Case FIMAGE_ERROR_GETFREEDIBFROMPICTURE
      FIGetErrorString = "Unable to retrieve a FreeImage DIB from the controls image."
  
    Case FIMAGE_ERROR_FIBUSY
      FIGetErrorString = "Please wait, an operation is still running."

    Case Else
      FIGetErrorString = "Unknown Error: Code " + Trim(Str(errconst))

  End Select

End Function

'******************************************************
Public Sub Cls()
    'UserControl.Cls
    FILine 0, 0, UserControl.ScaleWidth - 1, UserControl.ScaleHeight, BackColor, True, True
End Sub

'******************************************************
Public Property Get hDC() As Long
    hDC = UserControl.hDC
End Property

'******************************************************
Public Property Get hwnd() As Long
    hwnd = UserControl.hwnd
End Property

'******************************************************
Public Property Get Image() As Picture
    Set Image = UserControl.Image
End Property

'******************************************************
Private Function GetFreeDIBFromPicture() As FIDIBInfoType
  Dim hBmp
  Dim bm As BITMAP
  Dim Success As Integer
  
    'Update the picture
    Set UserControl.Picture = UserControl.Image

    'Get a handle to the bitmap of the control
    hBmp = UserControl.Picture.Handle
    
    'Fill bm with bitmap info
    GetObject hBmp, Len(bm), bm
  
    'Allocate FreeImage DIB
    GetFreeDIBFromPicture.dib = FreeImage_Allocate(bm.bmWidth, bm.bmHeight, 32)
    
    If GetFreeDIBFromPicture.dib = 0 Then
      'unable to allocate
      GetFreeDIBFromPicture.dib = 0
      Exit Function
    End If
    
    'Fill the dib with data drom the bitmap
    Success = GetDIBits(UserControl.hDC, hBmp, 0, bm.bmHeight, ByVal FreeImage_GetBits(GetFreeDIBFromPicture.dib), ByVal FreeImage_GetInfo(GetFreeDIBFromPicture.dib), DIB_RGB_COLORS)
  
    If Success = 0 Then
      'Error in Get DIBits
      GetFreeDIBFromPicture.dib = 0
      FreeImage_Unload GetFreeDIBFromPicture.dib
      Exit Function
    End If
    
    'Return size
    GetFreeDIBFromPicture.height = bm.bmHeight
    GetFreeDIBFromPicture.width = bm.bmWidth
    
End Function

'******************************************************
Public Function FICrop(x1 As Long, y1 As Long, x2 As Long, y2 As Long) As FIMAGE_ERROR
If FIBusy = 1 Then
  FICrop = FIMAGE_ERROR_FIBUSY
  Exit Function
End If

FIBusy = 1
  
  Dim NewWidth As Long
  Dim NewHeight As Long
  Dim ret As Long
  Dim InpErr As Boolean
  
  InpErr = False
  
  NewWidth = x2 - x1
  NewHeight = y2 - y1
  
  If x1 < 0 Or x1 > UserControl.ScaleWidth - 1 Then InpErr = True
  If x2 < 0 Or x2 > UserControl.ScaleWidth - 1 Then InpErr = True
  If y1 < 0 Or y1 > UserControl.ScaleHeight - 1 Then InpErr = True
  If y2 < 0 Or y2 > UserControl.ScaleHeight - 1 Then InpErr = True
  
  If NewWidth < 1 Or NewHeight < 1 Then InpErr = True
  
  If InpErr = True Then
    FICrop = FIMAGE_ERROR_INVALIDSIZE
  End If
  
  
  ret = BitBlt(UserControl.hDC, 0, 0, NewWidth, NewHeight, UserControl.hDC, x1, y1, SRCCOPY)
  
  If ret = 0 Then
    'Error
    FICrop = FIMAGE_ERROR_BITBLT
  End If
  
  
  If AutoSize Then
    UserControl.width = NewWidth * Screen.TwipsPerPixelX
    UserControl.height = NewHeight * Screen.TwipsPerPixelY
  End If
  
  FIBusy = 0

End Function

