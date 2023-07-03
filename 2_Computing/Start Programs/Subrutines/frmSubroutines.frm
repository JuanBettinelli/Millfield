VERSION 5.00
Begin VB.Form frmSubroutines 
   Caption         =   "Subroutines"
   ClientHeight    =   6540
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10260
   LinkTopic       =   "Form1"
   ScaleHeight     =   6540
   ScaleWidth      =   10260
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdRound 
      Caption         =   "Round"
      Height          =   975
      Left            =   840
      TabIndex        =   0
      Top             =   1320
      Width           =   2535
   End
End
Attribute VB_Name = "frmSubroutines"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdRound_Click()

    x = InputBox(" Put a Number to Round")
    Result = rount(x)
    mesagebox ("The rounded Number" & "x" & "Result")

End Sub
