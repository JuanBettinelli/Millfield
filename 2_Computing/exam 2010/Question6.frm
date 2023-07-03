VERSION 5.00
Begin VB.Form frmNoughtsAndCrosses 
   Caption         =   "Form1"
   ClientHeight    =   8235
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9750
   LinkTopic       =   "Form1"
   ScaleHeight     =   8235
   ScaleWidth      =   9750
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdStart 
      Caption         =   "Start"
      Height          =   735
      Left            =   2160
      TabIndex        =   0
      Top             =   2640
      Width           =   2055
   End
End
Attribute VB_Name = "frmNoughtsAndCrosses"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub cmdStart_Click()

Dim PlayerOneScore As Integer
Dim PlayerTwoScore As Integer

NoOfGamesInMatch = InputBox("How many games?")

For NoOfGamesPlayed = 1 To NoOfGamesInMatch
    PlayerOneWinsGame = InputBox("Did Player One win the game (enter Y or N)?")
    
    If PlayerOneWinsGame = "Y" Then
        PlayerOneScore = PlayerOneScore + 1
    Else: PlayerTwoScore = PlayerTwoScore + 1
    End If
Next

MsgBox PlayerOneScore
MsgBox PlayerTwoScore

End Sub
