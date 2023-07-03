VERSION 5.00
Begin VB.Form frmNext 
   BackColor       =   &H00FFFFC0&
   Caption         =   "frmNext"
   ClientHeight    =   8700
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10815
   LinkTopic       =   "Form1"
   ScaleHeight     =   8700
   ScaleWidth      =   10815
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton cmdBack 
      BackColor       =   &H00C0C0FF&
      Caption         =   "Back"
      Height          =   615
      Left            =   3840
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   6360
      Width           =   2535
   End
   Begin VB.Image Image1 
      Height          =   3360
      Left            =   2760
      Picture         =   "frmNext.frx":0000
      Stretch         =   -1  'True
      Top             =   1800
      Width           =   4815
   End
End
Attribute VB_Name = "frmNext"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdBack_Click()

    Me.Hide
    frmStart.Show

End Sub
