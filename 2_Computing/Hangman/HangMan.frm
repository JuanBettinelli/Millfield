VERSION 5.00
Begin VB.Form frmHangMan 
   Caption         =   "Hang Man"
   ClientHeight    =   10740
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   13905
   LinkTopic       =   "Form1"
   ScaleHeight     =   10740
   ScaleWidth      =   13905
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdLetter 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   27
      Left            =   720
      TabIndex        =   30
      Top             =   9000
      Width           =   495
   End
   Begin VB.CommandButton lblGuess 
      BackColor       =   &H00FF0000&
      Caption         =   "Guess"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   3240
      Style           =   1  'Graphical
      TabIndex        =   29
      Top             =   8280
      Width           =   8415
   End
   Begin VB.CommandButton Command5 
      BackColor       =   &H000040C0&
      Height          =   255
      Left            =   5640
      Style           =   1  'Graphical
      TabIndex        =   28
      Top             =   2760
      Width           =   3015
   End
   Begin VB.CommandButton Command4 
      Appearance      =   0  'Flat
      BackColor       =   &H000040C0&
      Height          =   375
      Left            =   5640
      Style           =   1  'Graphical
      TabIndex        =   27
      Top             =   6480
      Width           =   3855
   End
   Begin VB.CommandButton Command3 
      Appearance      =   0  'Flat
      BackColor       =   &H000040C0&
      Height          =   4095
      Left            =   5640
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   26
      Top             =   2760
      Width           =   375
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "Z"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   26
      Left            =   1200
      TabIndex        =   25
      Top             =   8160
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "Y"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   25
      Left            =   720
      TabIndex        =   24
      Top             =   8160
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   24
      Left            =   1200
      TabIndex        =   23
      Top             =   7680
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "W"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   23
      Left            =   720
      TabIndex        =   22
      Top             =   7680
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "V"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   22
      Left            =   1200
      TabIndex        =   21
      Top             =   7200
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "U"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   21
      Left            =   720
      TabIndex        =   20
      Top             =   7200
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "T"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   20
      Left            =   1200
      TabIndex        =   19
      Top             =   6720
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "S"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   19
      Left            =   720
      TabIndex        =   18
      Top             =   6720
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "R"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   18
      Left            =   1200
      TabIndex        =   17
      Top             =   6240
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "Q"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   17
      Left            =   720
      TabIndex        =   16
      Top             =   6240
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "P"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   16
      Left            =   1200
      TabIndex        =   15
      Top             =   5760
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "O"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   15
      Left            =   720
      TabIndex        =   14
      Top             =   5760
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "N"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   14
      Left            =   1200
      TabIndex        =   13
      Top             =   5280
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "M"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   13
      Left            =   720
      TabIndex        =   12
      Top             =   5280
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "L"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   12
      Left            =   1200
      TabIndex        =   11
      Top             =   4800
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "K"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   11
      Left            =   720
      TabIndex        =   10
      Top             =   4800
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "J"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   10
      Left            =   1200
      TabIndex        =   9
      Top             =   4320
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "I"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   9
      Left            =   720
      TabIndex        =   8
      Top             =   4320
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "H"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   8
      Left            =   1200
      TabIndex        =   7
      Top             =   3840
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "G"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   7
      Left            =   720
      TabIndex        =   6
      Top             =   3840
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "F"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   6
      Left            =   1200
      TabIndex        =   5
      Top             =   3360
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "E"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   5
      Left            =   720
      TabIndex        =   4
      Top             =   3360
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "D"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   4
      Left            =   1200
      TabIndex        =   3
      Top             =   2880
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "C"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   3
      Left            =   720
      TabIndex        =   2
      Top             =   2880
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "B"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   2
      Left            =   1200
      TabIndex        =   1
      Top             =   2400
      Width           =   495
   End
   Begin VB.CommandButton cmdLetter 
      Caption         =   "A"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Index           =   1
      Left            =   720
      TabIndex        =   0
      Top             =   2400
      Width           =   495
   End
   Begin VB.Shape shpGalMan 
      BackColor       =   &H00C0C0FF&
      BackStyle       =   1  'Opaque
      Height          =   615
      Index           =   2
      Left            =   7200
      Shape           =   3  'Circle
      Top             =   3480
      Width           =   735
   End
   Begin VB.Shape shpGalMan 
      BackColor       =   &H0000C000&
      BackStyle       =   1  'Opaque
      Height          =   1455
      Index           =   3
      Left            =   7200
      Shape           =   2  'Oval
      Top             =   3960
      Width           =   855
   End
   Begin VB.Shape shpGalMan 
      BackColor       =   &H000080FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H000080FF&
      FillColor       =   &H000080FF&
      Height          =   975
      Index           =   1
      Left            =   7560
      Top             =   2760
      Width           =   135
   End
   Begin VB.Shape shpGalMan 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      Height          =   1095
      Index           =   4
      Left            =   7680
      Top             =   5160
      Width           =   255
   End
   Begin VB.Shape shpGalMan 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      Height          =   1095
      Index           =   5
      Left            =   7320
      Top             =   5160
      Width           =   255
   End
   Begin VB.Shape shpGalMan 
      BackColor       =   &H0000C000&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   6
      Left            =   7800
      Top             =   4080
      Width           =   975
   End
   Begin VB.Shape shpGalMan 
      BackColor       =   &H0000C000&
      BackStyle       =   1  'Opaque
      Height          =   255
      Index           =   7
      Left            =   6480
      Top             =   4080
      Width           =   975
   End
   Begin VB.Image Image1 
      Height          =   6045
      Left            =   3240
      Picture         =   "HangMan.frx":0000
      Stretch         =   -1  'True
      Top             =   1800
      Width           =   8295
   End
End
Attribute VB_Name = "frmHangMan"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim word As String
Dim nextpart As Integer

Private Sub cmdLetter_Click(Index As Integer)

    '(assignment statement)
    cmdLetter(Index).Enabled = False

    '2. SELECTION STATEMENT.....
    If Index = 27 Then
        Letter = " "
    Else
        'Change index to appropriate letter
        '(Function statement)
        Letter = Chr(Index + 64)
    End If

    'Check for letter in word
    '(Function statement)
    '1 = letter found in word; 0 = letter not found in word
    If InStr(word, Letter) = 1 Then
        '(Selection statement)
        'If in word...
        GuessString = lblGuess.Caption
        
        '3. REPETITION STATEMENT.....
        For currentplace = 1 To Len(word)
            '(Function statement)
            If Letter = Mid(word, currentplace, 1) Then
                '(Function statement) x 2
                GuessString = Left(GuessString, currentplace - 1) + Letter + Mid(GuessString, currentplace + 1)
            End If
        Next currentplace
        
        lblGuess.Caption = GuessString
        
        '(Selection statement)
        'Check if lblGuess if the same as the entered word
        If lblGuess.Caption = word Then
            '(Function statement)
            answer = MsgBox("Well done! You saved the man." + Chr(13) + "Play again?", vbYesNo + vbQuestion, "Hangman")
            
            '(Selection statement)
            If answer = vbYes Then
                Call NewGame
            Else: End
            End If
            
        End If
     Else
        '(Selection statement)
        If Index <> 27 Then
            '1. SEQUENCE OF STATEMENTS.....
            lblChancesLeft = Val(lblChancesLeft) - 1
            'Draw gallows/man
            shpGalMan(nextpart).Visible = True
            
            nextpart = nextpart + 1
        End If
        
        '(Selection statement)
        If nextpart = 8 Then
            '(Function statement)
            answer = MsgBox("Oops. The man is dead." + Chr(13) + "Play again?", vbYesNo + vbQuestion, "Hangman")
            
            '(Selection statement)
            If answer = vbYes Then
                Call NewGame
            Else: End
            End If
            
        End If
    End If
End Sub

Private Sub NewGame()

    nextpart = 1
    word = InputBox("Player 1: Please get Player 2 to look away and then enter your selected word into the box below", "Select Word")
    
    '(Repetition statement)
    'Switch on all letters
    For i = 1 To 26
        cmdLetter(i).Enabled = True
    Next
    
    '(Repetition statement)
    'Display no gallows/man
    For i = 1 To 7
        shpGalMan(i).Visible = False
    Next
    
    '(Sequence of statements)
    '(Function statement x 2)
    word = Trim(UCase(word))
    lblGuess.Caption = String(Len(word), "*")
    
    lblChancesLeft = 7
    
    '(Subroutine call)
    Call cmdLetter_Click(27)
    
End Sub
    
Private Sub Form_Activate()

    '(Sequence of statements)
    frmHangMan.Show
    cmdLetter(27).Visible = False
    
    '(Repetition statement)
    For i = 1 To 7
        shpGalMan(i).Visible = False
    Next
    
    '(Subroutine call)
    Call NewGame

End Sub



