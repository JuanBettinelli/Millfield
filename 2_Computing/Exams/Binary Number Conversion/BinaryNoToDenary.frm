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
   Begin VB.CommandButton cmdInputBinaryNo 
      Caption         =   "Input Binary No"
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
Private Sub cmdInputBinaryNo_Click()

Dim BinaryNo As String
Dim LenOfNo As Byte
Dim Valid As Boolean

    BinaryNo = InputBox("Input Binary No (8 bits):")
    LenOfNo = Len(BinaryNo)
    
    If LenOfNo <> 8 Then
        MsgBox "Invalid binary number"
    Else
        Valid = True
        For position = 1 To 8
            NextDigit = Mid(BinaryNo, position, 1)
            If Not (NextDigit = "0" Or NextDigit = "1") Then
                Valid = False
            End If
        Next position
    End If
    
    If Valid = False Then
        MsgBox "Invalid binary number"
    Else
        'continue on...
        For position = 8 To 1 Step -1
            NextDigit = Mid(BinaryNo, position, 1)
            DigitResult = NextDigit * 2 ^ (8 - position)
            DenaryResult = DenaryResult + DigitResult
        Next position
    End If
    
    'continue....
    MsgBox ("Denary Result = " & DenaryResult)

End Sub


