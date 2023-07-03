VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "Sum and Average"
   ClientHeight    =   8505
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10125
   LinkTopic       =   "Form1"
   ScaleHeight     =   8505
   ScaleWidth      =   10125
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdReadNumbers 
      Caption         =   "Read Numbers"
      Height          =   735
      Left            =   2040
      TabIndex        =   0
      Top             =   4440
      Width           =   2415
   End
   Begin VB.Label Label1 
      Caption         =   "Sum and average of two numbers"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   2040
      TabIndex        =   1
      Top             =   2400
      Width           =   5535
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdReadNumbers_Click()

Dim Number(2) As Single

    For Index = 1 To 2
        Number(Index) = InputBox("Number " & Index & " = ")
    Next Index
    
    'sequence of statements
    Sum = Number(1) + Number(2)
    Average = Sum / 2
    
    MsgBox ("Sum = " & Sum)
    MsgBox ("Average = " & Average)
    
    'Selection statement
    If Sum > 30 Then
        MsgBox ("Sum is greater than 30")
    ElseIf Sum = 30 Then
        MsgBox ("Sum is equal to 30")
    Else
        MsgBox ("Sum is less than 30")
    End If
    
End Sub
