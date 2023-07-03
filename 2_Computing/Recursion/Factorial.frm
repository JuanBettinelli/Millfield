VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   11925
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   13305
   LinkTopic       =   "Form1"
   ScaleHeight     =   11925
   ScaleWidth      =   13305
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdStart 
      Caption         =   "Start"
      Height          =   615
      Left            =   2400
      TabIndex        =   0
      Top             =   7320
      Width           =   3495
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Number As Integer

Private Sub cmdStart_Click()

    Number = InputBox("Number = ")

    Total = Factorial(Number)
    
    MsgBox "Total = " & Total

End Sub

Private Function Factorial(Num As Integer) As Long

    If Num = 1 Then
        MsgBox ("Value of Num (1)")
        Result = 1
    Else:
        MsgBox ("Pushes RA onto stack along with the value of Num (" & Num & ")")
        Result = Num * Factorial(Num - 1)
        MsgBox ("Pops RA off stack")
    End If
    
    Factorial = Result
    
End Function

