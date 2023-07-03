VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   8565
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9705
   LinkTopic       =   "Form1"
   ScaleHeight     =   8565
   ScaleWidth      =   9705
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdQuicker 
      Caption         =   "Quicker method"
      Height          =   495
      Left            =   3120
      TabIndex        =   1
      Top             =   5760
      Width           =   1575
   End
   Begin VB.CommandButton cmdSumNaturalNumbers 
      Caption         =   "Sum of Natural numbers"
      Height          =   495
      Left            =   3120
      TabIndex        =   0
      Top             =   4680
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdQuicker_Click()

    '//Implements sum of first natural numbers
    '//Input: An integer n >= 1
    '//Output: Sum
    
    n = InputBox("n = ")
    NoOfLoops = 0
    
    Sum = 0
    Sum = n * (n + 1) / 2
    NoOfLoops = NoOfLoops + 1
    
    MsgBox ("Sum of first " & n & " numbers = " & Sum)
    MsgBox ("No. of Loops = " & NoOfLoops)


End Sub

Private Sub cmdSumNaturalNumbers_Click()

    '//Implements sum of first natural numbers
    '//Input: An integer n >= 1
    '//Output: Sum
    
    n = InputBox("n = ")
    NoOfLoops = 0
    
    Sum = 0
    For i = 1 To n
        Sum = Sum + i
        NoOfLoops = NoOfLoops + 1
    Next i
    
    MsgBox ("Sum of first " & n & " numbers = " & Sum)
    MsgBox ("No. of Loops = " & NoOfLoops)

End Sub

