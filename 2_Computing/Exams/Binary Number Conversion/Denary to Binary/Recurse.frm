VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5055
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   6945
   LinkTopic       =   "Form1"
   ScaleHeight     =   5055
   ScaleWidth      =   6945
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox List2 
      Height          =   1815
      Left            =   3960
      TabIndex        =   2
      Top             =   2400
      Width           =   2055
   End
   Begin VB.ListBox List1 
      Height          =   1815
      Left            =   3960
      TabIndex        =   1
      Top             =   240
      Width           =   2055
   End
   Begin VB.CommandButton cmdRecursion 
      Caption         =   "Start Recursion"
      Height          =   855
      Left            =   600
      TabIndex        =   0
      Top             =   2880
      Width           =   2295
   End
   Begin VB.Label Label1 
      Caption         =   "Denary to Binary Conversion"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   240
      TabIndex        =   3
      Top             =   360
      Width           =   3015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'1998, Paper 3: Illustration of Recursion

Private Sub cmdRecursion_Click()

    List1.Clear
    List2.Clear
    
    num = InputBox("Input the +ve integer to be processed")
    B (num)                     'Initial call to subroutine
    
End Sub

Private Sub B(number As Integer)

    If (number = 0) Or (number = 1) Then
        List2.AddItem number            'Adds binary output to list
    Else
        List1.AddItem Int(number / 2)   'Adds output from trace table to list
        B (Int(number / 2))             'Recursive call to subroutine
        List2.AddItem number Mod 2      'Adds binary output to list
    End If
        
End Sub

