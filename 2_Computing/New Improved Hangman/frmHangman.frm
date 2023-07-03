VERSION 5.00
Begin VB.Form frmHangman 
   Caption         =   "Hangman"
   ClientHeight    =   8160
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   12405
   LinkTopic       =   "Form1"
   ScaleHeight     =   8160
   ScaleWidth      =   12405
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdLetter 
      Caption         =   "Space"
      Height          =   495
      Index           =   26
      Left            =   1440
      TabIndex        =   27
      Top             =   7440
      Visible         =   0   'False
      Width           =   735
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "Z"
      Height          =   495
      Index           =   25
      Left            =   840
      TabIndex        =   25
      Top             =   7440
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "Y"
      Height          =   495
      Index           =   24
      Left            =   240
      TabIndex        =   24
      Top             =   7440
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "X"
      Height          =   495
      Index           =   23
      Left            =   840
      TabIndex        =   23
      Top             =   6840
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "W"
      Height          =   495
      Index           =   22
      Left            =   240
      TabIndex        =   22
      Top             =   6840
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "V"
      Height          =   495
      Index           =   21
      Left            =   840
      TabIndex        =   21
      Top             =   6240
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "U"
      Height          =   495
      Index           =   20
      Left            =   240
      TabIndex        =   20
      Top             =   6240
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "T"
      Height          =   495
      Index           =   19
      Left            =   840
      TabIndex        =   19
      Top             =   5640
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "S"
      Height          =   495
      Index           =   18
      Left            =   240
      TabIndex        =   18
      Top             =   5640
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "R"
      Height          =   495
      Index           =   17
      Left            =   840
      TabIndex        =   17
      Top             =   5040
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "Q"
      Height          =   495
      Index           =   16
      Left            =   240
      TabIndex        =   16
      Top             =   5040
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "P"
      Height          =   495
      Index           =   15
      Left            =   840
      TabIndex        =   15
      Top             =   4440
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "O"
      Height          =   495
      Index           =   14
      Left            =   240
      TabIndex        =   14
      Top             =   4440
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "N"
      Height          =   495
      Index           =   13
      Left            =   840
      TabIndex        =   13
      Top             =   3840
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "M"
      Height          =   495
      Index           =   12
      Left            =   240
      TabIndex        =   12
      Top             =   3840
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "L"
      Height          =   495
      Index           =   11
      Left            =   840
      TabIndex        =   11
      Top             =   3240
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "K"
      Height          =   495
      Index           =   10
      Left            =   240
      TabIndex        =   10
      Top             =   3240
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "J"
      Height          =   495
      Index           =   9
      Left            =   840
      TabIndex        =   9
      Top             =   2640
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "I"
      Height          =   495
      Index           =   8
      Left            =   240
      TabIndex        =   8
      Top             =   2640
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "H"
      Height          =   495
      Index           =   7
      Left            =   840
      TabIndex        =   7
      Top             =   2040
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "G"
      Height          =   495
      Index           =   6
      Left            =   240
      TabIndex        =   6
      Top             =   2040
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "F"
      Height          =   495
      Index           =   5
      Left            =   840
      TabIndex        =   5
      Top             =   1440
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "E"
      Height          =   495
      Index           =   4
      Left            =   240
      TabIndex        =   4
      Top             =   1440
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "D"
      Height          =   495
      Index           =   3
      Left            =   840
      TabIndex        =   3
      Top             =   840
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "C"
      Height          =   495
      Index           =   2
      Left            =   240
      TabIndex        =   2
      Top             =   840
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "B"
      Height          =   495
      Index           =   1
      Left            =   840
      TabIndex        =   1
      Top             =   240
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "A"
      Height          =   495
      Index           =   0
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   495
   End
   Begin VB.Label lblChancesLeft 
      Caption         =   "9"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5520
      TabIndex        =   29
      Top             =   6600
      Width           =   495
   End
   Begin VB.Label Label1 
      Caption         =   "Chances Left ="
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3240
      TabIndex        =   28
      Top             =   6600
      Width           =   2055
   End
   Begin VB.Shape shpGalMan 
      BackStyle       =   1  'Opaque
      Height          =   135
      Index           =   8
      Left            =   5880
      Top             =   4320
      Width           =   975
   End
   Begin VB.Shape shpGalMan 
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   7
      Left            =   4680
      Shape           =   2  'Oval
      Top             =   3960
      Width           =   255
   End
   Begin VB.Shape shpGalMan 
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   6
      Left            =   7800
      Shape           =   2  'Oval
      Top             =   3960
      Width           =   255
   End
   Begin VB.Shape shpGalMan 
      BackColor       =   &H8000000C&
      BackStyle       =   1  'Opaque
      Height          =   1095
      Index           =   5
      Left            =   6000
      Top             =   4800
      Width           =   255
   End
   Begin VB.Shape shpGalMan 
      BackColor       =   &H8000000C&
      BackStyle       =   1  'Opaque
      Height          =   1095
      Index           =   4
      Left            =   6480
      Top             =   4800
      Width           =   255
   End
   Begin VB.Shape shpGalMan 
      BackColor       =   &H8000000C&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   3
      Left            =   4920
      Top             =   3960
      Width           =   975
   End
   Begin VB.Shape shpGalMan 
      BackColor       =   &H8000000C&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   2
      Left            =   6840
      Top             =   3960
      Width           =   975
   End
   Begin VB.Line Line1 
      X1              =   6360
      X2              =   6360
      Y1              =   2040
      Y2              =   2520
   End
   Begin VB.Shape shpGalMan 
      BackColor       =   &H8000000C&
      BackStyle       =   1  'Opaque
      Height          =   1455
      Index           =   1
      Left            =   5880
      Shape           =   2  'Oval
      Top             =   3480
      Width           =   975
   End
   Begin VB.Shape shpGalMan 
      BackStyle       =   1  'Opaque
      Height          =   975
      Index           =   0
      Left            =   5880
      Shape           =   2  'Oval
      Top             =   2520
      Width           =   975
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H80000006&
      BackStyle       =   1  'Opaque
      Height          =   495
      Left            =   2880
      Top             =   1680
      Width           =   4455
   End
   Begin VB.Shape Shape1 
      FillColor       =   &H00000040&
      FillStyle       =   0  'Solid
      Height          =   4815
      Left            =   2400
      Top             =   1680
      Width           =   495
   End
   Begin VB.Label lblGuess 
      Alignment       =   2  'Center
      BackColor       =   &H80000007&
      Caption         =   "lblGuess"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   495
      Left            =   2400
      TabIndex        =   26
      Top             =   7440
      Width           =   9255
   End
End
Attribute VB_Name = "frmHangman"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Dim word As String
Dim nextpart As Integer

Private Sub cmdLetter_Click(Index As Integer)
    cmdLetter(Index).Enabled = False

    If Index = 26 Then
        Letter = " "
    Else
        'Change index to appropriate letter
        Letter = Chr(Index + 65)
    End If

    'Check for letter in word
    If InStr(word, Letter) <> 0 Then
        'If in word
        GuessString = lblGuess.Caption
        For currentplace = 1 To Len(word)
            If Letter = Mid(word, currentplace, 1) Then
                GuessString = Left(GuessString, currentplace - 1) + Letter + Mid(GuessString, currentplace + 1)
            End If
        Next
        lblGuess.Caption = GuessString
        'Check if lblGuess if the same as the entered word
        If lblGuess.Caption = word Then
            answer = MsgBox("Well done! You saved the man." + Chr(13) + "Play again?", vbYesNo + vbQuestion, "Hangman")
            If answer = 6 Then Call NewGame Else End
        End If
    Else
        If Index <> 26 Then
            lblChancesLeft = Val(lblChancesLeft) - 1
            'Draw gallows/man
            shpGalMan(nextpart).Visible = True
        
            nextpart = nextpart + 1
        End If
        If nextpart = 9 Then
            answer = MsgBox("Oops. The man is dead." + Chr(13) + "Play again?", vbYesNo + vbQuestion, "Hangman")
            If answer = 6 Then Call NewGame Else End
        End If
    End If
End Sub

Private Sub NewGame()

    nextpart = 0
    word = InputBox("Player 1: Please get Player 2 to look away and then enter your selected word into the box below", "Select Word")
    'Switch on all letters
    For i = 0 To 25
        cmdLetter(i).Enabled = True
    Next
    'Display no gallows/man
    For i = 0 To 8
        shpGalMan(i).Visible = False
    Next
    word = Trim(UCase(word))
    lblGuess.Caption = String(Len(word), "*")
    
    lblChancesLeft = 9
    
    Call cmdLetter_Click(26)
    
End Sub
    
Private Sub Form_Activate()

    frmHangman.Show
    Call NewGame

End Sub


