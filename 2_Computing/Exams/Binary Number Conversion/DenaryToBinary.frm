VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6180
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10575
   LinkTopic       =   "Form1"
   ScaleHeight     =   6180
   ScaleWidth      =   10575
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdInputDenaryNo 
      Caption         =   "Input Denary No"
      Height          =   735
      Left            =   4800
      TabIndex        =   0
      Top             =   3360
      Width           =   1695
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdInputDenaryNo_Click()

Dim DenaryNo As String
Dim BinaryDigit(8) As Byte
Dim NumberLeft As Byte
Dim position As Byte
Dim BinaryNo As String

    DenaryNo = InputBox("Input Denary No (0 - > 255): ")
    
    If (DenaryNo < 0) Or (DenaryNo > 255) Then
        MsgBox "Invalid denary number"
    End If
    
    BinaryNo = ""
    NumberLeft = DenaryNo
    For position = 1 To 8
        BinaryDigit(position) = NumberLeft Mod 2
        NumberLeft = Int(NumberLeft / 2)
        BinaryNo = BinaryDigit(position) & BinaryNo
    Next position
    
    MsgBox ("Binary No. = " & BinaryNo)

End Sub


