VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
  Persistable = 0  'NotPersistable
  DataBindingBehavior = 0  'vbNone
  DataSourceBehavior  = 0  'vbNone
  MTSTransactionMode  = 0  'NotAnMTSObject
END
Attribute VB_Name = "clsCBFolder"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
Option Explicit
'clsCBFolder - Programado insertaada por MaTeO - 19:40hs 13/05/2012
'Changelog (ultima modificacion 13/05/2012):
'13/05/2012 - Esta clase sirve para crear un buscador de carpetas. Link externo: http://www.recursosvisualbasic.com.ar/htm/listado-api/270-createwindowex-personalizar-browser-folder-dialog.htm



'------------------------------------------------------
' \\ Descripción :  Ejemplo que muestra una forma de poder incrustar controles en un BrowserDialog _
                    mediante CreateWindowEx, para añadir funciones y opciones extras al cuadro de diálogo
  
'    Autor :        Luciano Lodola : http://www.recursosvisualbasic.com.ar/

''''''''''''''''''''''''''''''''''''''''''''''''''''''''

'--------------------------------------------------------------------------------------------------------------------------

' Créditos:         : ( Paul_Caton - cSuperClass - Para usar el  CallBack y el hook en el módulo de clase)
'--------------------------------------------------------------------------------------------------------------------------

Const WS_CLIPCHILDREN = &H2000000   ' Ni idea para que es esta, creo qeu quitandola y dejando WS_CHILD sola, funciona exactamente igual
Const WS_CHILD = &H40000000         ' Para que  el Check sea Child del BrowserFolderDialog

' Mensajes y parámetros para sendMesaje
' ---------------------------------------------------------------------------------------------------------------------------
Const BST_UNCHECKED = &H0           ' Los lparam para cambiar el value
Const BST_CHECKED = &H1             '
Const BM_GETCHECK = &HF0            ' Mensajes para obtener o recuperar el estado
Const BM_SETCHECK = &HF1

Private Const SWP_NOSIZE = &H1
Private Const SWP_NOZORDER = &H4
Private Const SWP_NOACTIVATE = &H10

'Mensajes, no usa ninguna, salvo WM_DESTROY
Private Const WM_DESTROY        As Long = &H2
Private Const WM_MOUSEWHEEL = &H20A
Private Const WM_VSCROLL        As Integer = &H115
Private Const WM_CLOSE          As Long = &H10
Private Const WM_NCLBUTTONDOWN  As Long = &HA1
Private Const WM_MOUSEMOVE      As Long = &H200
Private Const WM_LBUTTONDBLCLK  As Long = &H203
Private Const WM_LBUTTONDOWN    As Long = &H201
Private Const WM_LBUTTONUP      As Long = &H202
Private Const WM_MBUTTONDBLCLK  As Long = &H209
Private Const WM_MBUTTONDOWN    As Long = &H207
Private Const WM_MBUTTONUP      As Long = &H208
Private Const WM_RBUTTONDBLCLK  As Long = &H206
Private Const WM_RBUTTONDOWN    As Long = &H204
Private Const WM_RBUTTONUP      As Long = &H205
Private Const WM_MOVING         As Long = &H216
Private Const WM_PAINT          As Long = &HF&
Private Const WM_SETFONT        As Long = &H30
Private Const WM_ERASEBKGND     As Long = &H14

' AnimateWindow
Private Const AW_ACTIVATE = &H20000
Private Const AW_BLEND = &H80000
Private Const AW_CENTER = &H10
Private Const AW_HOR_POSITIVE = &O1
Enum EAnimated
    [eBLEND] = 0
    [eLEFT] = 2
    [eRIGHT] = 3
    [eCENTER] = 4
    [NONE] = 5
End Enum


' SHBrowsForFolder
Private Const GWL_STYLE = (-16)
Private Const WM_USER = &H400
Private Const BFFM_SETSELECTIONA As Long = (WM_USER + 102)
Private Const BFFM_SETSELECTIONW As Long = (WM_USER + 103)
Private Const LPTR = (&H0 Or &H40)

Private Enum eMsgWhen                                                   'When to callback
    MSG_BEFORE = 1                                                        'Callback before the original WndProc
    MSG_AFTER = 2                                                         'Callback after the original WndProc
    MSG_BEFORE_AFTER = MSG_BEFORE Or MSG_AFTER                            'Callback before and after the original WndProc
End Enum

Private Enum eThunkType
    SubclassThunk = 0
    HookThunk = 1
    CallbackThunk = 2
End Enum

Private z_IDEflag           As Long         'Flag indicating we are in IDE
Private z_ScMem             As Long         'Thunk base address
Private z_scFunk            As Collection   'hWnd/thunk-address collection
Private z_hkFunk            As Collection   'hook/thunk-address collection
Private z_cbFunk            As Collection   'callback/thunk-address collection
Private Const IDX_INDEX     As Long = 2     'index of the subclassed hWnd OR hook type
Private Const IDX_CALLBACKORDINAL As Long = 22 ' Ubound(callback thunkdata)+1, index of the callback

Private Const IDX_WNDPROC   As Long = 9     'Thunk data index of the original WndProc
Private Const IDX_BTABLE    As Long = 11    'Thunk data index of the Before table
Private Const IDX_ATABLE    As Long = 12    'Thunk data index of the After table
Private Const IDX_PARM_USER As Long = 13    'Thunk data index of the User-defined callback parameter data index
Private Const IDX_UNICODE   As Long = 75    'Must be Ubound(subclass thunkdata)+1; index for unicode support
Private Const ALL_MESSAGES  As Long = -1    'All messages callback
Private Const MSG_ENTRIES   As Long = 32    'Number of msg table entries. Set to 1 if using ALL_MESSAGES for all subclassed windows


Private Declare Sub RtlMoveMemory Lib "kernel32" (ByVal Destination As Long, ByVal Source As Long, ByVal Length As Long)
Private Declare Function IsBadCodePtr Lib "kernel32" (ByVal lpfn As Long) As Long
Private Declare Function VirtualAlloc Lib "kernel32" (ByVal lpAddress As Long, ByVal dwSize As Long, ByVal flAllocationType As Long, ByVal flProtect As Long) As Long
Private Declare Function VirtualFree Lib "kernel32" (ByVal lpAddress As Long, ByVal dwSize As Long, ByVal dwFreeType As Long) As Long
Private Declare Function GetModuleHandleA Lib "kernel32" (ByVal lpModuleName As String) As Long
Private Declare Function GetModuleHandleW Lib "kernel32" (ByVal lpModuleName As Long) As Long
Private Declare Function GetProcAddress Lib "kernel32" (ByVal hModule As Long, ByVal lpProcName As String) As Long
Private Declare Function CallWindowProcA Lib "user32" (ByVal lpPrevWndFunc As Long, ByVal hwnd As Long, ByVal Msg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
Private Declare Function CallWindowProcW Lib "user32" (ByVal lpPrevWndFunc As Long, ByVal hwnd As Long, ByVal Msg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
Private Declare Function GetCurrentProcessId Lib "kernel32" () As Long
Private Declare Function GetWindowThreadProcessId Lib "user32" (ByVal hwnd As Long, lpdwProcessId As Long) As Long
Private Declare Function IsWindow Lib "user32" (ByVal hwnd As Long) As Long
Private Declare Function IsWindowUnicode Lib "user32.dll" (ByVal hwnd As Long) As Long
Private Declare Function SendMessageA Lib "user32.dll" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByRef lParam As Any) As Long
Private Declare Function SendMessageW Lib "user32.dll" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByRef lParam As Any) As Long
Private Declare Function SetWindowLongA Lib "user32" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Private Declare Function SetWindowLongW Lib "user32" (ByVal hwnd As Long, ByVal nIndex As Long, ByVal dwNewLong As Long) As Long
Private Declare Function CreateWindowEx Lib "user32" Alias "CreateWindowExA" (ByVal dwExStyle As Long, ByVal lpClassName As String, ByVal lpWindowName As String, ByVal dwStyle As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hWndParent As Long, ByVal hMenu As Long, ByVal hInstance As Long, lpParam As Any) As Long
Private Declare Function ShowWindow Lib "user32" (ByVal hwnd As Long, ByVal nCmdShow As Long) As Long
Private Declare Function SetWindowTheme Lib "UxTheme.dll" (ByVal hwnd As Long, ByVal pszSubAppName As Long, ByVal pszSubIdList As Long) As Long
Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, lParam As Any) As Long
Private Declare Function GetWindowRect Lib "user32" (ByVal hwnd As Long, lpRect As RECT) As Long
Private Declare Function MoveWindow Lib "user32" (ByVal hwnd As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal bRepaint As Long) As Long
Private Declare Function AnimateWindow Lib "user32" (ByVal hwnd As Long, ByVal dwTime As Long, ByVal dwFlags As Long) As Long
Private Declare Function SHBrowseForFolder Lib "shell32.dll" Alias "SHBrowseForFolderA" (lpBROWSEINFOTYPE As BROWSEINFOTYPE) As Long
Private Declare Function SHGetPathFromIDList Lib "shell32.dll" Alias "SHGetPathFromIDListA" (ByVal pidl As Long, ByVal pszPath As String) As Long
Private Declare Sub CoTaskMemFree Lib "ole32.dll" (ByVal pv As Long)
Private Declare Sub CopyMemory Lib "kernel32" Alias "RtlMoveMemory" (pDest As Any, pSource As Any, ByVal dwLength As Long)
Private Declare Function LocalAlloc Lib "kernel32" (ByVal uFlags As Long, ByVal uBytes As Long) As Long
Private Declare Function LocalFree Lib "kernel32" (ByVal hMem As Long) As Long
Private Declare Function GetStockObject Lib "gdi32" (ByVal nIndex As Long) As Long
Private Declare Function DeleteObject Lib "gdi32" (ByVal hObject As Long) As Long
Private Const DEFAULT_GUI_FONT = 17
Private Declare Function SendMessageLong Lib "user32" Alias "SendMessageA" (ByVal hwnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
Private Declare Function DestroyWindow Lib "user32" (ByVal hndw As Long) As Boolean

Private Declare Function ShellExecuteEX Lib "shell32.dll" Alias "ShellExecuteEx" (SEI As SHELLEXECUTEINFO) As Long

Private Const SEE_MASK_INVOKEIDLIST = &HC
Private Const SEE_MASK_NOCLOSEPROCESS = &H40
Private Const SEE_MASK_FLAG_NO_UI = &H400
Private Type SHELLEXECUTEINFO
    cbSize As Long
    fMask As Long
    hwnd As Long
    lpVerb As String
    lpFile As String
    lpParameters As String
    lpDirectory As String
    nShow As Long
    hInstApp As Long
    lpIDList As Long
    lpClass As String
    hkeyClass As Long
    dwHotKey As Long
    hIcon As Long
    hProcess As Long
End Type
'-------------------------**********************-----------------------
Private Type RECT
   Left As Long
   Top As Long
   Right As Long
   Bottom As Long
End Type
Private Type BROWSEINFOTYPE
    hOwner As Long
    pidlRoot As Long
    pszDisplayName As String
    lpszTitle As String
    ulFlags As Long
    lpfn As Long
    lParam As Long
    iImage As Long
End Type

'\\ Variables
' -------------------------------------------------------------------------------------------

Private mCenterDialog                           As Boolean

Private mAnimatedDialog                         As EAnimated
Private mTimeAnimated                           As Long
Private mShowButton                             As Boolean
Private mHwndBtn                                As Long         ' handles del botón
Private mHwndBrowserDLG                         As Long         ' handle del DLG
Private mCurrentPath                            As String


' \\ Propiedades
' --------------------------------------------------------------------------------------------------

' Mostrar o no el botón
Property Get ShowButton() As Boolean
    ShowButton = mShowButton
End Property
Property Let ShowButton(bValue As Boolean)
    mShowButton = bValue
End Property

' Tiempo de animación en milisegundos
Property Get TimeAnimated() As Long
    TimeAnimated = mTimeAnimated
End Property
Property Let TimeAnimated(bValue As Long)
    mTimeAnimated = bValue
End Property
' Activar o desactivar animación de ventana
Property Get AnimatedDialog() As EAnimated
    AnimatedDialog = mAnimatedDialog
End Property
Property Let AnimatedDialog(Value As EAnimated)
    mAnimatedDialog = Value
End Property
' Centrar o no el diálogo en la pantalla
Property Get CenterDialog() As Boolean
    CenterDialog = mCenterDialog
End Property
Property Let CenterDialog(bValue As Boolean)
    mCenterDialog = bValue
End Property


' \\ Función para crear el botón
' -----------------------------------------------------------------------------------

Private Function mCreateButton( _
    ByVal lHwndOwner As Long, _
    x1 As Long, _
    y1 As Long, _
    x2 As Long, _
    y2 As Long) As Long
    
    ' Crear el Check y retornar el handle
    mHwndBtn = CreateWindowEx(0, _
        "Button", _
        "Ver propiedades", _
        WS_CHILD, _
        x1, y1, x2, y2, _
        lHwndOwner, 0, App.hInstance, ByVal 0&)
    
    ' Verificar que no sea 0
    If mHwndBtn Then
    
        Dim lRet        As Long
        Dim hFont       As Long
        
        ' obtener fuente
        hFont = GetStockObject(DEFAULT_GUI_FONT)
        ' establecer fuente
        lRet = SendMessage(mHwndBtn, WM_SETFONT, hFont, True)
        
        ' Hacer visible el control
        Call ShowWindow(mHwndBtn, 1)
        
        ' Subclasificar el DLG  y el botón
        Call SubClass(lHwndOwner)
        Call SubClass(mHwndBtn)
        
        mCreateButton = mHwndBtn
    End If
    
End Function

' \\ Función para abrir el diálogo 'Seleccionar carpeta'
' -----------------------------------------------------------------------------------

Public Function BrowseForFolder( _
    Ownerform As Form, _
    Optional sPath As String, _
    Optional sTitle As String) As String
          
          Dim tbf As BROWSEINFOTYPE
          Dim itemID As Long
          Dim selectedPathPointer As Long
          Dim tmpPath As String * 256

          Dim sCheckPath As String
   On Error GoTo BrowseForFolder_Error

10        sCheckPath = sPath
          
20        If Len(sCheckPath) > 0 Then
30            If Not Right$(sCheckPath, 1) <> "\" Then
40                sCheckPath = Left$(sCheckPath, Len(sCheckPath) - 1)
50            End If
60        End If
          
70        sPath = sCheckPath
          
80        With tbf
90            .hOwner = Ownerform.hwnd
100           .lpszTitle = sTitle
110           .ulFlags = 5
120           .lpfn = scb_SetCallbackAddr(4, 2)
130           selectedPathPointer = LocalAlloc(LPTR, Len(sPath) + 1)
140           Call CopyMemory(ByVal selectedPathPointer, ByVal sPath, Len(sPath) + 1)
150           .lParam = selectedPathPointer
160       End With
          
          ' mostrar dlg, y retornar
170       itemID = SHBrowseForFolder(tbf)
180       If itemID Then
190           If SHGetPathFromIDList(itemID, tmpPath) Then
              
200               BrowseForFolder = Left$(tmpPath, InStr(tmpPath, vbNullChar) - 1)
210           End If
220           Call CoTaskMemFree(itemID)
230       End If
          
240       Call LocalFree(selectedPathPointer)

   On Error GoTo 0
   Exit Function

BrowseForFolder_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure BrowseForFolder of Módulo de clase clsCBFolder Linea: " & Erl())
          
End Function


Private Function mGetPathFromIDList() As String
    
End Function

' \\ Iniciar variables
' -----------------------------------------------------------------------------------------------
Private Sub Class_Initialize()
    mTimeAnimated = 100
    mCenterDialog = True
End Sub

' \\ Terminar
' -----------------------------------------------------------------------------------------------
Private Sub Class_Terminate()
    If mHwndBtn Then Call DestroyWindow(mHwndBtn)
    Call ssc_Terminate
    Call scb_TerminateCallbacks
End Sub


'-The following routines are exclusively for the ssc_subclass routines----------------------------
Private Function ssc_Subclass(ByVal lng_hWnd As Long, _
       Optional ByVal lParamUser As Long = 0, _
       Optional ByVal nOrdinal As Long = 1, _
       Optional ByVal oCallback As Object = Nothing, _
       Optional ByVal bIdeSafety As Boolean = True, _
       Optional ByVal bUnicode As Boolean = False) As Boolean 'Subclass the specified window handle

    '*************************************************************************************************
    '* lng_hWnd   - Handle of the window to subclass
    '* lParamUser - Optional, user-defined callback parameter
    '* nOrdinal   - Optional, ordinal index of the callback procedure. 1 = last private method, 2 = second last private method, etc.
    '* oCallback  - Optional, the object that will receive the callback. If undefined, callbacks are sent to this object's instance
    '* bIdeSafety - Optional, enable/disable IDE safety measures. NB: you should really only disable IDE safety in a UserControl for design-time subclassing
    '* bUnicode - Optional, if True, Unicode API calls will be made to the window vs ANSI calls
    '*************************************************************************************************
    '* cSelfSub - self-subclassing class template
    '* Paul_Caton@hotmail.com
    '* Copyright free, use and abuse as you see fit.
    '*
    '* v1.0 Re-write of the SelfSub/WinSubHook-2 submission to Planet Source Code............ 20060322
    '* v1.1 VirtualAlloc memory to prevent Data Execution Prevention faults on Win64......... 20060324
    '* v1.2 Thunk redesigned to handle unsubclassing and memory release...................... 20060325
    '* v1.3 Data array scrapped in favour of property accessors.............................. 20060405
    '* v1.4 Optional IDE protection added
    '*      User-defined callback parameter added
    '*      All user routines that pass in a hWnd get additional validation
    '*      End removed from zError.......................................................... 20060411
    '* v1.5 Added nOrdinal parameter to ssc_Subclass
    '*      Switched machine-code array from Currency to Long................................ 20060412
    '* v1.6 Added an optional callback target object
    '*      Added an IsBadCodePtr on the callback address in the thunk prior to callback..... 20060413
    '*************************************************************************************************
    ' Subclassing procedure must be declared identical to the one at the end of this class (Sample at Ordinal #1)

    ' \\LaVolpe - reworked routine a bit, revised the ASM to allow auto-unsubclass on WM_DESTROY
    Dim z_Sc(0 To IDX_UNICODE) As Long                 'Thunk machine-code initialised here
    Const CODE_LEN      As Long = 4 * IDX_UNICODE      'Thunk length in bytes
    
    Const MEM_LEN       As Long = CODE_LEN + (8 * (MSG_ENTRIES))  'Bytes to allocate per thunk, data + code + msg tables
    Const PAGE_RWX      As Long = &H40&                'Allocate executable memory
    Const MEM_COMMIT    As Long = &H1000&              'Commit allocated memory
    Const MEM_RELEASE   As Long = &H8000&              'Release allocated memory flag
    Const IDX_EBMODE    As Long = 3                    'Thunk data index of the EbMode function address
    Const IDX_CWP       As Long = 4                    'Thunk data index of the CallWindowProc function address
    Const IDX_SWL       As Long = 5                    'Thunk data index of the SetWindowsLong function address
    Const IDX_FREE      As Long = 6                    'Thunk data index of the VirtualFree function address
    Const IDX_BADPTR    As Long = 7                    'Thunk data index of the IsBadCodePtr function address
    Const IDX_OWNER     As Long = 8                    'Thunk data index of the Owner object's vTable address
    Const IDX_CALLBACK  As Long = 10                   'Thunk data index of the callback method address
    Const IDX_EBX       As Long = 16                   'Thunk code patch index of the thunk data
    Const GWL_WNDPROC   As Long = -4                   'SetWindowsLong WndProc index
    Const WNDPROC_OFF   As Long = &H38                 'Thunk offset to the WndProc execution address
    Const SUB_NAME      As String = "ssc_Subclass"     'This routine's name
    
    Dim nAddr         As Long
    Dim nID           As Long
    Dim nMyID         As Long

    If IsWindow(lng_hWnd) = 0 Then                      'Ensure the window handle is valid
        zError SUB_NAME, "Invalid window handle"
        Exit Function
    End If
    
    nMyID = GetCurrentProcessId                         'Get this process's ID
    GetWindowThreadProcessId lng_hWnd, nID              'Get the process ID associated with the window handle
    If nID <> nMyID Then                                'Ensure that the window handle doesn't belong to another process
        zError SUB_NAME, "Window handle belongs to another process"
        Exit Function
    End If
      
    If oCallback Is Nothing Then Set oCallback = Me     'If the user hasn't specified the callback owner
    
    nAddr = zAddressOf(oCallback, nOrdinal)             'Get the address of the specified ordinal method
    If nAddr = 0 Then                                   'Ensure that we've found the ordinal method
        zError SUB_NAME, "Callback method not found"
        Exit Function
    End If
        
    z_ScMem = VirtualAlloc(0, MEM_LEN, MEM_COMMIT, PAGE_RWX) 'Allocate executable memory
    
    If z_ScMem <> 0 Then                                  'Ensure the allocation succeeded
  
        If z_scFunk Is Nothing Then Set z_scFunk = New Collection 'If this is the first time through, do the one-time initialization
        On Error GoTo CatchDoubleSub                              'Catch double subclassing
        z_scFunk.Add z_ScMem, "h" & lng_hWnd                    'Add the hWnd/thunk-address to the collection
        On Error GoTo 0
        
        ' \\Tai Chi Minh Ralph Eastwood - fixed bug where the MSG_AFTER was not being honored
        ' \\LaVolpe - modified thunks to allow auto-unsubclassing when WM_DESTROY received
        z_Sc(14) = &HD231C031: z_Sc(15) = &HBBE58960: z_Sc(16) = &H12345678: z_Sc(17) = &HF63103FF: z_Sc(18) = &H750C4339: z_Sc(19) = &H7B8B4A38: z_Sc(20) = &H95E82C: z_Sc(21) = &H7D810000: z_Sc(22) = &H228&: z_Sc(23) = &HC70C7500: z_Sc(24) = &H20443: z_Sc(25) = &H5E90000: z_Sc(26) = &H39000000: z_Sc(27) = &HF751475: z_Sc(28) = &H25E8&: z_Sc(29) = &H8BD23100: z_Sc(30) = &H6CE8307B: z_Sc(31) = &HFF000000: z_Sc(32) = &H10C2610B: z_Sc(33) = &HC53FF00: z_Sc(34) = &H13D&: z_Sc(35) = &H85BE7400: z_Sc(36) = &HE82A74C0: z_Sc(37) = &H2&: z_Sc(38) = &H75FFE5EB: z_Sc(39) = &H2C75FF30: z_Sc(40) = &HFF2875FF: z_Sc(41) = &H73FF2475: z_Sc(42) = &H1053FF24: z_Sc(43) = &H811C4589: z_Sc(44) = &H13B&: z_Sc(45) = &H39727500:
        z_Sc(46) = &H6D740473: z_Sc(47) = &H2473FF58: z_Sc(48) = &HFFFFFC68: z_Sc(49) = &H873FFFF: z_Sc(50) = &H891453FF: z_Sc(51) = &H7589285D: z_Sc(52) = &H3045C72C: z_Sc(53) = &H8000&: z_Sc(54) = &H8920458B: z_Sc(55) = &H4589145D: z_Sc(56) = &HC4816124: z_Sc(57) = &H4&: z_Sc(58) = &H8B1862FF: z_Sc(59) = &H853AE30F: z_Sc(60) = &H810D78C9: z_Sc(61) = &H4C7&: z_Sc(62) = &H28458B00: z_Sc(63) = &H2975AFF2: z_Sc(64) = &H2873FF52: z_Sc(65) = &H5A1C53FF: z_Sc(66) = &H438D1F75: z_Sc(67) = &H144D8D34: z_Sc(68) = &H1C458D50: z_Sc(69) = &HFF3075FF: z_Sc(70) = &H75FF2C75: z_Sc(71) = &H873FF28: z_Sc(72) = &HFF525150: z_Sc(73) = &H53FF2073: z_Sc(74) = &HC328C328
        
        z_Sc(IDX_EBX) = z_ScMem                                                 'Patch the thunk data address
        z_Sc(IDX_INDEX) = lng_hWnd                                               'Store the window handle in the thunk data
        z_Sc(IDX_BTABLE) = z_ScMem + CODE_LEN                                   'Store the address of the before table in the thunk data
        z_Sc(IDX_ATABLE) = z_ScMem + CODE_LEN + ((MSG_ENTRIES + 1) * 4)         'Store the address of the after table in the thunk data
        z_Sc(IDX_OWNER) = ObjPtr(oCallback)                                     'Store the callback owner's object address in the thunk data
        z_Sc(IDX_CALLBACK) = nAddr                                              'Store the callback address in the thunk data
        z_Sc(IDX_PARM_USER) = lParamUser                                        'Store the lParamUser callback parameter in the thunk data
        
        ' \\LaVolpe - validate unicode request & cache unicode usage
        If bUnicode Then bUnicode = (IsWindowUnicode(lng_hWnd) <> 0&)
        z_Sc(IDX_UNICODE) = bUnicode                                            'Store whether the window is using unicode calls or not
        
        ' \\LaVolpe - added extra parameter "bUnicode" to the zFnAddr calls
        z_Sc(IDX_FREE) = zFnAddr("kernel32", "VirtualFree", bUnicode)           'Store the VirtualFree function address in the thunk data
        z_Sc(IDX_BADPTR) = zFnAddr("kernel32", "IsBadCodePtr", bUnicode)        'Store the IsBadCodePtr function address in the thunk data
        
        Debug.Assert zInIDE
        If bIdeSafety = True And z_IDEflag = 1 Then                             'If the user wants IDE protection
            z_Sc(IDX_EBMODE) = zFnAddr("vba6", "EbMode", bUnicode)                'Store the EbMode function address in the thunk data
        End If
    
        ' \\LaVolpe - use ANSI for non-unicode usage, else use WideChar calls
        If bUnicode Then
            z_Sc(IDX_CWP) = zFnAddr("user32", "CallWindowProcW", bUnicode)          'Store CallWindowProc function address in the thunk data
            z_Sc(IDX_SWL) = zFnAddr("user32", "SetWindowLongW", bUnicode)           'Store the SetWindowLong function address in the thunk data
            z_Sc(IDX_UNICODE) = 1
            RtlMoveMemory z_ScMem, VarPtr(z_Sc(0)), CODE_LEN                        'Copy the thunk code/data to the allocated memory
            nAddr = SetWindowLongW(lng_hWnd, GWL_WNDPROC, z_ScMem + WNDPROC_OFF)    'Set the new WndProc, return the address of the original WndProc
        Else
            z_Sc(IDX_CWP) = zFnAddr("user32", "CallWindowProcA", bUnicode)          'Store CallWindowProc function address in the thunk data
            z_Sc(IDX_SWL) = zFnAddr("user32", "SetWindowLongA", bUnicode)           'Store the SetWindowLong function address in the thunk data
            RtlMoveMemory z_ScMem, VarPtr(z_Sc(0)), CODE_LEN                        'Copy the thunk code/data to the allocated memory
            nAddr = SetWindowLongA(lng_hWnd, GWL_WNDPROC, z_ScMem + WNDPROC_OFF)    'Set the new WndProc, return the address of the original WndProc
        End If
        If nAddr = 0 Then                                                           'Ensure the new WndProc was set correctly
            zError SUB_NAME, "SetWindowLong failed, error #" & err.LastDllError
            GoTo ReleaseMemory
        End If
        'Store the original WndProc address in the thunk data
        RtlMoveMemory z_ScMem + IDX_WNDPROC * 4, VarPtr(nAddr), 4&              ' z_Sc(IDX_WNDPROC) = nAddr
        ssc_Subclass = True                                                     'Indicate success
    Else
        zError SUB_NAME, "VirtualAlloc failed, error: " & err.LastDllError
    End If

    Exit Function                                                             'Exit ssc_Subclass
    
CatchDoubleSub:
    zError SUB_NAME, "Window handle is already subclassed"
      
ReleaseMemory:
    VirtualFree z_ScMem, 0, MEM_RELEASE                                       'ssc_Subclass has failed after memory allocation, so release the memory
End Function

'Terminate all subclassing
Private Sub ssc_Terminate()
    ' can be made public. Releases all subclassing
    ' can be removed and zTerminateThunks can be called directly
    zTerminateThunks SubclassThunk
End Sub

Private Sub UnSubClass(lHwnd As Long)
    ssc_UnSubclass lHwnd
End Sub

'UnSubclass the specified window handle
Private Sub ssc_UnSubclass(ByVal lng_hWnd As Long)
    ' can be made public. Releases a specific subclass
    ' can be removed and zUnThunk can be called directly
    zUnThunk lng_hWnd, SubclassThunk
End Sub

'Add the message value to the window handle's specified callback table
Private Sub ssc_AddMsg(ByVal lng_hWnd As Long, ByVal uMsg As Long, Optional ByVal When As eMsgWhen = MSG_AFTER)
    ' Note: can be removed if not needed and zAddMsg can be called directly
    If IsBadCodePtr(zMap_VFunction(lng_hWnd, SubclassThunk)) = 0 Then                 'Ensure that the thunk hasn't already released its memory
        If When And MSG_BEFORE Then                                             'If the message is to be added to the before original WndProc table...
            zAddMsg uMsg, IDX_BTABLE                                              'Add the message to the before table
        End If
        If When And MSG_AFTER Then                                              'If message is to be added to the after original WndProc table...
            zAddMsg uMsg, IDX_ATABLE                                              'Add the message to the after table
        End If
    End If
End Sub

'Delete the message value from the window handle's specified callback table
Private Sub ssc_DelMsg(ByVal lng_hWnd As Long, ByVal uMsg As Long, Optional ByVal When As eMsgWhen = MSG_AFTER)
    ' Note: can be removed if not needed and zDelMsg can be called directly
    If IsBadCodePtr(zMap_VFunction(lng_hWnd, SubclassThunk)) = 0 Then                'Ensure that the thunk hasn't already released its memory
        If When And MSG_BEFORE Then                                             'If the message is to be deleted from the before original WndProc table...
            zDelMsg uMsg, IDX_BTABLE                                              'Delete the message from the before table
        End If
        If When And MSG_AFTER Then                                              'If the message is to be deleted from the after original WndProc table...
            zDelMsg uMsg, IDX_ATABLE                                              'Delete the message from the after table
        End If
    End If
End Sub

'Call the original WndProc
Private Function ssc_CallOrigWndProc(ByVal lng_hWnd As Long, ByVal uMsg As Long, ByVal wParam As Long, ByVal lParam As Long) As Long
    ' Note: can be removed if you do not use this function inside of your window procedure
    If IsBadCodePtr(zMap_VFunction(lng_hWnd, SubclassThunk)) = 0 Then            'Ensure that the thunk hasn't already released its memory
        If zData(IDX_UNICODE) Then
            ssc_CallOrigWndProc = CallWindowProcW(zData(IDX_WNDPROC), lng_hWnd, uMsg, wParam, lParam) 'Call the original WndProc of the passed window handle parameter
        Else
            ssc_CallOrigWndProc = CallWindowProcA(zData(IDX_WNDPROC), lng_hWnd, uMsg, wParam, lParam) 'Call the original WndProc of the passed window handle parameter
        End If
    End If
End Function

'Get the subclasser lParamUser callback parameter
Private Function zGet_lParamUser(ByVal hWnd_Hook_ID As Long, vType As eThunkType) As Long
    'Note: can be removed if you never need to retrieve/update your user-defined paramter. See ssc_Subclass
    If vType <> CallbackThunk Then
        If IsBadCodePtr(zMap_VFunction(hWnd_Hook_ID, vType)) = 0 Then        'Ensure that the thunk hasn't already released its memory
            zGet_lParamUser = zData(IDX_PARM_USER)                                'Get the lParamUser callback parameter
        End If
    End If
End Function

'Let the subclasser lParamUser callback parameter
Private Sub zSet_lParamUser(ByVal hWnd_Hook_ID As Long, vType As eThunkType, newValue As Long)
    'Note: can be removed if you never need to retrieve/update your user-defined paramter. See ssc_Subclass
    If vType <> CallbackThunk Then
        If IsBadCodePtr(zMap_VFunction(hWnd_Hook_ID, vType)) = 0 Then          'Ensure that the thunk hasn't already released its memory
            zData(IDX_PARM_USER) = newValue                                         'Set the lParamUser callback parameter
        End If
    End If
End Sub

'Add the message to the specified table of the window handle
Private Sub zAddMsg(ByVal uMsg As Long, ByVal nTable As Long)
    Dim nCount As Long                                                        'Table entry count
    Dim nBase  As Long                                                        'Remember z_ScMem
    Dim i      As Long                                                        'Loop index
    
    nBase = z_ScMem                                                           'Remember z_ScMem so that we can restore its value on exit
    z_ScMem = zData(nTable)                                                   'Map zData() to the specified table
    
    If uMsg = ALL_MESSAGES Then                                               'If ALL_MESSAGES are being added to the table...
        nCount = ALL_MESSAGES                                                   'Set the table entry count to ALL_MESSAGES
    Else
        nCount = zData(0)                                                       'Get the current table entry count
        If nCount >= MSG_ENTRIES Then                                           'Check for message table overflow
            zError "zAddMsg", "Message table overflow. Either increase the value of Const MSG_ENTRIES or use ALL_MESSAGES instead of specific message values"
            GoTo Bail
        End If
    
        For i = 1 To nCount                                                     'Loop through the table entries
            If zData(i) = 0 Then                                                  'If the element is free...
                zData(i) = uMsg                                                     'Use this element
                GoTo Bail                                                           'Bail
            ElseIf zData(i) = uMsg Then                                           'If the message is already in the table...
                GoTo Bail                                                           'Bail
            End If
        Next i                                                                  'Next message table entry
    
        nCount = i                                                              'On drop through: i = nCount + 1, the new table entry count
        zData(nCount) = uMsg                                                    'Store the message in the appended table entry
    End If
    
    zData(0) = nCount                                                         'Store the new table entry count
Bail:
    z_ScMem = nBase                                                           'Restore the value of z_ScMem
End Sub

'Delete the message from the specified table of the window handle
Private Sub zDelMsg(ByVal uMsg As Long, ByVal nTable As Long)
          Dim nCount As Long                                                        'Table entry count
          Dim nBase  As Long                                                        'Remember z_ScMem
          Dim i      As Long                                                        'Loop index
          
   On Error GoTo zDelMsg_Error

10        nBase = z_ScMem                                                           'Remember z_ScMem so that we can restore its value on exit
20        z_ScMem = zData(nTable)                                                   'Map zData() to the specified table
          
30        If uMsg = ALL_MESSAGES Then                                               'If ALL_MESSAGES are being deleted from the table...
40            zData(0) = 0                                                            'Zero the table entry count
50        Else
60            nCount = zData(0)                                                       'Get the table entry count
              
70            For i = 1 To nCount                                                     'Loop through the table entries
80                If zData(i) = uMsg Then                                               'If the message is found...
90                    zData(i) = 0                                                        'Null the msg value -- also frees the element for re-use
100                   GoTo Bail                                                           'Bail
110               End If
120           Next i                                                                  'Next message table entry
              
130           zError "zDelMsg", "Message &H" & Hex$(uMsg) & " not found in table"
140       End If
            
Bail:
150       z_ScMem = nBase                                                           'Restore the value of z_ScMem

   On Error GoTo 0
   Exit Sub

zDelMsg_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure zDelMsg of Módulo de clase clsCBFolder Linea: " & Erl())
End Sub

'-SelfCallback code------------------------------------------------------------------------------------
'-The following routines are exclusively for the scb_SetCallbackAddr routines----------------------------
Private Function scb_SetCallbackAddr(ByVal nParamCount As Long, _
       Optional ByVal nOrdinal As Long = 1, _
       Optional ByVal oCallback As Object = Nothing, _
       Optional ByVal bIdeSafety As Boolean = True) As Long   'Return the address of the specified callback thunk
          '*************************************************************************************************
          '* nParamCount  - The number of parameters that will callback
          '* nOrdinal     - Callback ordinal number, the final private method is ordinal 1, the second last is ordinal 2, etc...
          '* oCallback    - Optional, the object that will receive the callback. If undefined, callbacks are sent to this object's instance
          '* bIdeSafety   - Optional, set to false to disable IDE protection.
          '*************************************************************************************************
          ' Callback procedure must return a Long even if, per MSDN, the callback procedure is a Sub vs Function
          ' The number of parameters are dependent on the individual callback procedures
          
          Const MEM_LEN     As Long = IDX_CALLBACKORDINAL * 4 + 4     'Memory bytes required for the callback thunk
          Const PAGE_RWX    As Long = &H40&                           'Allocate executable memory
          Const MEM_COMMIT  As Long = &H1000&                         'Commit allocated memory
          Const SUB_NAME      As String = "scb_SetCallbackAddr"       'This routine's name
          Const INDX_OWNER    As Long = 0
          Const INDX_CALLBACK As Long = 1
          Const INDX_EBMODE   As Long = 2
          Const INDX_BADPTR   As Long = 3
          Const INDX_EBX      As Long = 5
          Const INDX_PARAMS   As Long = 12
          Const INDX_PARAMLEN As Long = 17

          Dim z_Cb()    As Long    'Callback thunk array
          Dim nCallback As Long
            
   On Error GoTo scb_SetCallbackAddr_Error

10        If z_cbFunk Is Nothing Then
20            Set z_cbFunk = New Collection           'If this is the first time through, do the one-time initialization
30        Else
40            On Error Resume Next                    'Catch already initialized?
50            z_ScMem = z_cbFunk.Item("h" & nOrdinal) 'Test it
60            If err = 0 Then
70                scb_SetCallbackAddr = z_ScMem + 16  'we had this one, just reference it
80                Exit Function
90            End If
100           On Error GoTo 0
110       End If
          
120       If nParamCount < 0 Then                     ' validate parameters
130           zError SUB_NAME, "Invalid Parameter count"
140           Exit Function
150       End If
          
160       If oCallback Is Nothing Then Set oCallback = Me     'If the user hasn't specified the callback owner
170       nCallback = zAddressOf(oCallback, nOrdinal)         'Get the callback address of the specified ordinal
180       If nCallback = 0 Then
190           zError SUB_NAME, "Callback address not found."
200           Exit Function
210       End If
220       z_ScMem = VirtualAlloc(0, MEM_LEN, MEM_COMMIT, PAGE_RWX) 'Allocate executable memory
              
230       If z_ScMem = 0& Then
240           zError SUB_NAME, "VirtualAlloc failed, error: " & err.LastDllError  ' oops
250           Exit Function
260       End If
270       z_cbFunk.Add z_ScMem, "h" & nOrdinal                  'Add the callback/thunk-address to the collection
              
280       ReDim z_Cb(0 To IDX_CALLBACKORDINAL) As Long          'Allocate for the machine-code array
          
          ' Create machine-code array
290       z_Cb(4) = &HBB60E089: z_Cb(6) = &H73FFC589: z_Cb(7) = &HC53FF04: z_Cb(8) = &H7B831F75: z_Cb(9) = &H20750008: z_Cb(10) = &HE883E889: z_Cb(11) = &HB9905004: z_Cb(13) = &H74FF06E3: z_Cb(14) = &HFAE2008D: z_Cb(15) = &H53FF33FF: z_Cb(16) = &HC2906104: z_Cb(18) = &H830853FF: z_Cb(19) = &HD87401F8: z_Cb(20) = &H4589C031: z_Cb(21) = &HEAEBFC
          
300       z_Cb(INDX_BADPTR) = zFnAddr("kernel32", "IsBadCodePtr", False)
310       z_Cb(INDX_OWNER) = ObjPtr(oCallback)                  'Set the Owner
320       z_Cb(INDX_CALLBACK) = nCallback                       'Set the callback address
330       z_Cb(IDX_CALLBACKORDINAL) = nOrdinal                  'Cache ordinal used for zTerminateThunks
            
340       Debug.Assert zInIDE
350       If bIdeSafety = True And z_IDEflag = 1 Then             'If the user wants IDE protection
360           z_Cb(INDX_EBMODE) = zFnAddr("vba6", "EbMode", False)  'EbMode Address
370       End If
              
380       z_Cb(INDX_PARAMS) = nParamCount                         'Set the parameter count
390       z_Cb(INDX_PARAMLEN) = nParamCount * 4                   'Set the number of stck bytes to release on thunk return
            
          '\\LaVolpe - redirect address to proper location in virtual memory. Was: z_Cb(INDX_EBX) = VarPtr(z_Cb(INDX_OWNER))
400       z_Cb(INDX_EBX) = z_ScMem                                'Set the data address relative to virtual memory pointer
            
410       RtlMoveMemory z_ScMem, VarPtr(z_Cb(INDX_OWNER)), MEM_LEN 'Copy thunk code to executable memory
420       scb_SetCallbackAddr = z_ScMem + 16                       'Thunk code start address

   On Error GoTo 0
   Exit Function

scb_SetCallbackAddr_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure scb_SetCallbackAddr of Módulo de clase clsCBFolder Linea: " & Erl())
          
End Function

Private Sub scb_ReleaseCallback(ByVal nOrdinal As Long)
    ' can be made public. Releases a specific callback
    ' can be removed and zUnThunk can be called directly
    zUnThunk nOrdinal, CallbackThunk
End Sub
Private Sub scb_TerminateCallbacks()
    ' can be made public. Releases all callbacks
    ' can be removed and zTerminateThunks can be called directly
    zTerminateThunks CallbackThunk
End Sub


'========================================================================
' COMMON USE ROUTINES
'-The following routines are used for each of the three types of thunks
'========================================================================

'Map zData() to the thunk address for the specified window handle
Private Function zMap_VFunction(ByVal vFuncTarget As Long, vType As eThunkType) As Long
          
          ' vFuncTarget is one of the following, depending on vType
          '   - Subclassing:  the hWnd of the window subclassed
          '   - Hooking:      the hook type created
          '   - Callbacks:    the ordinal of the callback
          
          Dim thunkCol As Collection
          
   On Error GoTo zMap_VFunction_Error

10        If vType = CallbackThunk Then
20            Set thunkCol = z_cbFunk
30        ElseIf vType = HookThunk Then
40            Set thunkCol = z_hkFunk
50        ElseIf vType = SubclassThunk Then
60            Set thunkCol = z_scFunk
70        Else
80            zError "zMap_Vfunction", "Invalid thunk type passed"
90            Exit Function
100       End If
          
110       If thunkCol Is Nothing Then
120           zError "zMap_VFunction", "Thunk hasn't been initialized"
130       Else
140           On Error GoTo Catch
150           z_ScMem = thunkCol("h" & vFuncTarget)                    'Get the thunk address
160           zMap_VFunction = z_ScMem
170       End If
180       Exit Function                                               'Exit returning the thunk address
          
Catch:
190       zError "zMap_VFunction", "Thunk type for ID of " & vFuncTarget & " does not exist"

   On Error GoTo 0
   Exit Function

zMap_VFunction_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure zMap_VFunction of Módulo de clase clsCBFolder Linea: " & Erl())
End Function

'Error handler
Private Sub zError(ByVal sRoutine As String, ByVal sMsg As String)
    ' \\LaVolpe -  Note. These two lines can be rem'd out if you so desire. But don't remove the routine
    App.LogEvent TypeName(Me) & "." & sRoutine & ": " & sMsg, vbLogEventTypeError
    MsgBox sMsg & ".", vbExclamation + vbApplicationModal, "Error in " & TypeName(Me) & "." & sRoutine
End Sub

'Return the address of the specified DLL/procedure
Private Function zFnAddr(ByVal sDLL As String, ByVal sProc As String, ByVal asUnicode As Boolean) As Long
   On Error GoTo zFnAddr_Error

10        If asUnicode Then
20            zFnAddr = GetProcAddress(GetModuleHandleW(StrPtr(sDLL)), sProc)         'Get the specified procedure address
30        Else
40            zFnAddr = GetProcAddress(GetModuleHandleA(sDLL), sProc)                 'Get the specified procedure address
50        End If
60        Debug.Assert zFnAddr                                                      'In the IDE, validate that the procedure address was located
          ' ^^ FYI VB5 users. Search for zFnAddr("vba6", "EbMode") and replace with zFnAddr("vba5", "EbMode")

   On Error GoTo 0
   Exit Function

zFnAddr_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure zFnAddr of Módulo de clase clsCBFolder Linea: " & Erl())
End Function

'Return the address of the specified ordinal method on the oCallback object, 1 = last private method, 2 = second last private method, etc
Private Function zAddressOf(ByVal oCallback As Object, ByVal nOrdinal As Long) As Long
          ' Note: used both in subclassing and hooking routines
          Dim bSub  As Byte                                                         'Value we expect to find pointed at by a vTable method entry
          Dim bVal  As Byte
          Dim nAddr As Long                                                         'Address of the vTable
          Dim i     As Long                                                         'Loop index
          Dim J     As Long                                                         'Loop limit
        
   On Error GoTo zAddressOf_Error

10        RtlMoveMemory VarPtr(nAddr), ObjPtr(oCallback), 4                         'Get the address of the callback object's instance
20        If Not zProbe(nAddr + &H1C, i, bSub) Then                                 'Probe for a Class method
30            If Not zProbe(nAddr + &H6F8, i, bSub) Then                              'Probe for a Form method
                  ' \\LaVolpe - Added propertypage offset
40                If Not zProbe(nAddr + &H710, i, bSub) Then                            'Probe for a PropertyPage method
50                    If Not zProbe(nAddr + &H7A4, i, bSub) Then                          'Probe for a UserControl method
60                        Exit Function                                                   'Bail...
70                    End If
80                End If
90            End If
100       End If
        
110       i = i + 4                                                                 'Bump to the next entry
120       J = i + 1024                                                              'Set a reasonable limit, scan 256 vTable entries
130       Do While i < J
140           RtlMoveMemory VarPtr(nAddr), i, 4                                       'Get the address stored in this vTable entry
          
150           If IsBadCodePtr(nAddr) Then                                             'Is the entry an invalid code address?
160               RtlMoveMemory VarPtr(zAddressOf), i - (nOrdinal * 4), 4               'Return the specified vTable entry address
170               Exit Do                                                               'Bad method signature, quit loop
180           End If

190           RtlMoveMemory VarPtr(bVal), nAddr, 1                                    'Get the byte pointed to by the vTable entry
200           If bVal <> bSub Then                                                    'If the byte doesn't match the expected value...
210               RtlMoveMemory VarPtr(zAddressOf), i - (nOrdinal * 4), 4               'Return the specified vTable entry address
220               Exit Do                                                               'Bad method signature, quit loop
230           End If
          
240           i = i + 4                                                               'Next vTable entry
250       Loop

   On Error GoTo 0
   Exit Function

zAddressOf_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure zAddressOf of Módulo de clase clsCBFolder Linea: " & Erl())
End Function

'Probe at the specified start address for a method signature
Private Function zProbe(ByVal nStart As Long, ByRef nMethod As Long, ByRef bSub As Byte) As Boolean
          Dim bVal    As Byte
          Dim nAddr   As Long
          Dim nLimit  As Long
          Dim nEntry  As Long
        
   On Error GoTo zProbe_Error

10        nAddr = nStart                                                            'Start address
20        nLimit = nAddr + 32                                                       'Probe eight entries
30        Do While nAddr < nLimit                                                   'While we've not reached our probe depth
40            RtlMoveMemory VarPtr(nEntry), nAddr, 4                                  'Get the vTable entry
          
50            If nEntry <> 0 Then                                                     'If not an implemented interface
60                RtlMoveMemory VarPtr(bVal), nEntry, 1                                 'Get the value pointed at by the vTable entry
70                If bVal = &H33 Or bVal = &HE9 Then                                    'Check for a native or pcode method signature
80                    nMethod = nAddr                                                     'Store the vTable entry
90                    bSub = bVal                                                         'Store the found method signature
100                   zProbe = True                                                       'Indicate success
110                   Exit Do                                                             'Return
120               End If
130           End If
          
140           nAddr = nAddr + 4                                                       'Next vTable entry
150       Loop

   On Error GoTo 0
   Exit Function

zProbe_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure zProbe of Módulo de clase clsCBFolder Linea: " & Erl())
End Function

Private Function zInIDE() As Long
    ' This is only run in IDE; it is never run when compiled
    z_IDEflag = 1
    zInIDE = z_IDEflag
End Function

Private Property Get zData(ByVal nIndex As Long) As Long
    ' retrieves stored value from virtual function's memory location
    RtlMoveMemory VarPtr(zData), z_ScMem + (nIndex * 4), 4
End Property

Private Property Let zData(ByVal nIndex As Long, ByVal nValue As Long)
    ' sets value in virtual function's memory location
    RtlMoveMemory z_ScMem + (nIndex * 4), VarPtr(nValue), 4
End Property

Private Sub zUnThunk(ByVal thunkID As Long, ByVal vType As eThunkType)
          ' Releases a specific subclass, hook or callback
          ' thunkID depends on vType:
          '   - Subclassing:  the hWnd of the window subclassed
          '   - Hooking:      the hook type created
          '   - Callbacks:    the ordinal of the callback

          Const IDX_SHUTDOWN  As Long = 1
          Const MEM_RELEASE As Long = &H8000&                                'Release allocated memory flag
          
   On Error GoTo zUnThunk_Error

10        If zMap_VFunction(thunkID, vType) Then
20            Select Case vType
                  Case SubclassThunk
30                    If IsBadCodePtr(z_ScMem) = 0 Then       'Ensure that the thunk hasn't already released its memory
40                        zData(IDX_SHUTDOWN) = 1             'Set the shutdown indicator
50                        zDelMsg ALL_MESSAGES, IDX_BTABLE    'Delete all before messages
60                        zDelMsg ALL_MESSAGES, IDX_ATABLE    'Delete all after messages
                          '\\LaVolpe - Force thunks to replace original window procedure handle. Without this, app can crash when a window is subclassed multiple times simultaneously
70                        If zData(IDX_UNICODE) Then          'Force window procedure handle to be replaced
80                            SendMessageW thunkID, 0&, 0&, ByVal 0&
90                        Else
100                           SendMessageA thunkID, 0&, 0&, ByVal 0&
110                       End If
120                   End If
130                   z_scFunk.Remove "h" & thunkID           'Remove the specified thunk from the collection
140               Case HookThunk
150                   If IsBadCodePtr(z_ScMem) = 0 Then       'Ensure that the thunk hasn't already released its memory
160                       zData(IDX_SHUTDOWN) = 1             'Set the shutdown indicator
170                       zData(IDX_ATABLE) = 0               ' want no more After messages
180                       zData(IDX_BTABLE) = 0               ' want no more Before messages
190                   End If
200                   z_hkFunk.Remove "h" & thunkID           'Remove the specified thunk from the collection
210               Case CallbackThunk
220                   If IsBadCodePtr(z_ScMem) = 0 Then       'Ensure that the thunk hasn't already released its memory
230                       VirtualFree z_ScMem, 0, MEM_RELEASE 'Release allocated memory
240                   End If
250                   z_cbFunk.Remove "h" & thunkID           'Remove the specified thunk from the collection
260           End Select
270       End If

   On Error GoTo 0
   Exit Sub

zUnThunk_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure zUnThunk of Módulo de clase clsCBFolder Linea: " & Erl())

End Sub

Private Sub zTerminateThunks(ByVal vType As eThunkType)
          ' Removes all thunks of a specific type: subclassing, hooking or callbacks
          Dim i As Long
          Dim thunkCol As Collection
          
   On Error GoTo zTerminateThunks_Error

10        Select Case vType
              Case SubclassThunk
20                Set thunkCol = z_scFunk
30            Case HookThunk
40                Set thunkCol = z_hkFunk
50            Case CallbackThunk
60                Set thunkCol = z_cbFunk
70            Case Else
80                Exit Sub
90        End Select
          
100       If Not (thunkCol Is Nothing) Then                 'Ensure that hooking has been started
110           With thunkCol
120               For i = .Count To 1 Step -1                   'Loop through the collection of hook types in reverse order
130                   z_ScMem = .Item(i)                          'Get the thunk address
140                   If IsBadCodePtr(z_ScMem) = 0 Then           'Ensure that the thunk hasn't already released its memory
150                       Select Case vType
                              Case SubclassThunk
160                               zUnThunk zData(IDX_INDEX), SubclassThunk     'Unsubclass
170                           Case HookThunk
180                               zUnThunk zData(IDX_INDEX), HookThunk             'Unhook
190                           Case CallbackThunk
200                               zUnThunk zData(IDX_CALLBACKORDINAL), CallbackThunk ' release callback
210                       End Select
220                   End If
230               Next i                                        'Next member of the collection
240           End With
250           Set thunkCol = Nothing                         'Destroy the hook/thunk-address collection
260       End If

   On Error GoTo 0
   Exit Sub

zTerminateThunks_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure zTerminateThunks of Módulo de clase clsCBFolder Linea: " & Erl())

End Sub
' \\ Diálogo  - Propiedades de archivo
' ----------------------------------------------------------------------------------------
Function showDlgFileProperty(sFileName As String) As Long
          Dim SEI As SHELLEXECUTEINFO
          Dim Ret As Long
          
   On Error GoTo showDlgFileProperty_Error

10        If Len(sFileName) = 0 Then Exit Function
          
20        With SEI
30            .cbSize = Len(SEI)
40            .fMask = SEE_MASK_NOCLOSEPROCESS Or SEE_MASK_INVOKEIDLIST Or SEE_MASK_FLAG_NO_UI
50            .hwnd = 0
60            .lpVerb = "properties"
70            .lpFile = sFileName
80            .lpParameters = vbNullChar
90            .lpDirectory = vbNullChar
100           .nShow = 0
110           .hInstApp = 0
120           .lpIDList = 0
130           Ret = ShellExecuteEX(SEI)
140           showDlgFileProperty = .hInstApp
150       End With

   On Error GoTo 0
   Exit Function

showDlgFileProperty_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure showDlgFileProperty of Módulo de clase clsCBFolder Linea: " & Erl())
End Function
Private Function SubClass(ByVal lHwnd As Long) As Boolean
   On Error GoTo SubClass_Error

10        If ssc_Subclass(lHwnd) Then
              ' subclasificar el diálogo, agregar mensaje para saber cuando se destruye
20            Call ssc_AddMsg(lHwnd, WM_DESTROY, MSG_BEFORE)
30            Call ssc_AddMsg(lHwnd, WM_LBUTTONDOWN, MSG_BEFORE)
40            Call ssc_AddMsg(lHwnd, WM_RBUTTONDOWN, MSG_BEFORE)
50        End If

   On Error GoTo 0
   Exit Function

SubClass_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure SubClass of Módulo de clase clsCBFolder Linea: " & Erl())
End Function

' Ordinal 3 - No se usa
Private Function TimerProc( _
       ByVal hwnd As Long, _
       ByVal tMsg As Long, _
       ByVal TimerID As Long, _
       ByVal tickCount As Long) As Long
       
       ' ------------------

End Function

'- ordinal #2 - CallBack para ( Posicionarse en un directorio, para animar la ventana, para crear el Check,  para animarla y para centrar el dialogo en la pantalla )
' -------------------------------------------------------------------------------------------------------------------------------------------------------------------
Private Function BrowseCallbackProcStr( _
    ByVal hwnd As Long, _
    ByVal uMsg As Long, _
    ByVal lParam As Long, _
    ByVal lpData As Long) As Long
          
          
   On Error GoTo BrowseCallbackProcStr_Error

10        mHwndBrowserDLG = hwnd                                    ' guardar el Handle del botón ..
          
20        If uMsg = 1 Then
             ' Desplegar el path indicado (parámetro sPath del ShowBrowserDLG) en el explorer
             ' ----------------------------------------------------------
30           Call SendMessage(hwnd, BFFM_SETSELECTIONA, True, ByVal lpData)
             
             ' Centrar la ventana
             ' ----------------------------------------------------------
40           If mCenterDialog Then
                ' Obtener dimensión de la ventana
                Dim r As RECT
50              Call GetWindowRect(hwnd, r)
                ' Calcular el left/Top
                Dim X As Long
                Dim Y As Long
60              X = ((Screen.Width / 15) - (r.Right - r.Left)) / 2
70              Y = ((Screen.Height / 15) - (r.Bottom - r.Top)) / 2
                ' Posicionar y redimensionar ( Creo que es mejor con setWindowPos, ya que si se cambia el valor del Flag  de la estructura BROWSEINFOTYPE, por ejemplo para mostrar el botón 'Nueva carpeta'(valor 64 y algunos otros), Algunos controles de la ventana no se repintan bien)
80              Call MoveWindow(hwnd, X, Y, (r.Right - r.Left), ((r.Bottom - r.Top)), 0)
90            End If
              
              ' Crear botón
              ' ----------------------------------------------------------
100          If mShowButton Then
110             mHwndBtn = mCreateButton(hwnd, 10, 30, 100, 20)
120          End If
             
             ' Animar ( si mAnimatedDialog = true )
             ' ----------------------------------------------------------
130          Select Case mAnimatedDialog
                  Case eBLEND: Call AnimateWindow(hwnd, mTimeAnimated, AW_BLEND Or AW_ACTIVATE)
140               Case eLEFT: Call AnimateWindow(hwnd, mTimeAnimated, AW_HOR_POSITIVE Or AW_ACTIVATE)
150               Case eRIGHT: Call AnimateWindow(hwnd, mTimeAnimated, &H2 Or AW_ACTIVATE)
160               Case eCENTER: Call AnimateWindow(hwnd, mTimeAnimated, AW_CENTER Or AW_ACTIVATE)
170          End Select
          
180       ElseIf uMsg = 2 Then
              ' obtener el Path y guardarlo en la variable para usarlo cuando se pulsa el botón
              
              ' Buffer para el path
              Dim sPath As String * 255
              ' El lParam contiene el ID del path
190           If SHGetPathFromIDList(lParam, sPath) Then
                  ' quitar nulos y guardar
200               mCurrentPath = Left$(sPath, InStr(sPath, vbNullChar) - 1)
210           End If
220       End If

   On Error GoTo 0
   Exit Function

BrowseCallbackProcStr_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure BrowseCallbackProcStr of Módulo de clase clsCBFolder Linea: " & Erl())
          
End Function
'- ordinal #1
Private Sub WndProc(ByVal bBefore As Boolean, _
       ByRef bHandled As Boolean, _
       ByRef lReturn As Long, _
       ByVal hwnd As Long, _
       ByVal uMsg As Long, _
       ByVal wParam As Long, _
       ByVal lParam As Long, _
       ByRef lParamUser As Long)

   On Error GoTo WndProc_Error

10        On Error GoTo err_wndProc
20            Select Case hwnd
                  Case mHwndBrowserDLG
30                    If uMsg = WM_DESTROY Then
40                       Call UnSubClass(mHwndBrowserDLG) ' terminar el hook
50                       Call UnSubClass(mHwndBtn)        ' terminar el hook
60                    End If
                  ' Mostrar el diálogo de propiedades para la carpeta seleccionada
70                Case mHwndBtn
80                    If uMsg = WM_LBUTTONDOWN Then
90                       If Len(mCurrentPath) Then
100                         Call showDlgFileProperty(mCurrentPath)
110                      End If
120                   End If
130           End Select
140   Exit Sub
err_wndProc:
150   Debug.Print err.Description

   On Error GoTo 0
   Exit Sub

WndProc_Error:

    Call LogError("Error " & err.Number & " (" & err.Description & ") in procedure WndProc of Módulo de clase clsCBFolder Linea: " & Erl())
End Sub

''''''''''''''''''''''''''''''''''''''''''''''''''''''
' Importante : NO colocar ningún código debajo de WndProc
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''




