Attribute VB_Name = "modValores"
'Para mayor rendimiento desactivar la constante #ShapesVisible pero no se veran los Shapes.
Option Explicit

Public Const MaxUsers As Integer = 10000 'Limite 100, se puede poner 1000 pero desactivar el procesamiento de shapes si no tu PC morira xD
Public Const MaxNPCs As Integer = 10000 'Mismo que arriba

Public Const XMaxMapSize As Integer = 1200 'Este no importa el tamaño del mapa que se ponga, funcionara igual y el procesamiento disminuira en un sentido casi nulo a medida que se agrande el mapa
Public Const XMinMapSize As Integer = 1
Public Const YMaxMapSize As Integer = 1200
Public Const YMinMapSize As Integer = 1
