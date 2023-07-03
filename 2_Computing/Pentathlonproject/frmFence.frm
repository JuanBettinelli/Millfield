VERSION 5.00
Begin VB.Form frmFence 
   BackColor       =   &H000000FF&
   Caption         =   "Form1"
   ClientHeight    =   10575
   ClientLeft      =   1245
   ClientTop       =   645
   ClientWidth     =   13530
   LinkTopic       =   "Form1"
   ScaleHeight     =   10575
   ScaleWidth      =   13530
   Begin VB.CommandButton cmdPrintForm 
      Caption         =   "Print"
      Height          =   495
      Left            =   5520
      TabIndex        =   15
      Top             =   4080
      Width           =   2055
   End
   Begin VB.CommandButton cmdMain 
      Caption         =   "Main Menu"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   9600
      TabIndex        =   14
      Top             =   240
      Width           =   2895
   End
   Begin VB.CommandButton cmdClear1 
      Caption         =   "CLEAR"
      Height          =   615
      Index           =   1
      Left            =   3600
      TabIndex        =   13
      Top             =   1560
      Width           =   975
   End
   Begin VB.PictureBox Picture2 
      Height          =   1215
      Left            =   0
      Picture         =   "frmFence.frx":0000
      ScaleHeight     =   1155
      ScaleWidth      =   2235
      TabIndex        =   12
      Top             =   0
      Width           =   2295
   End
   Begin VB.PictureBox Picture1 
      Height          =   5535
      Left            =   1920
      Picture         =   "frmFence.frx":85DA
      ScaleHeight     =   5475
      ScaleWidth      =   8235
      TabIndex        =   10
      Top             =   4920
      Width           =   8295
   End
   Begin VB.CommandButton cmdBackToMenu 
      Caption         =   "Back To Menu"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   9240
      TabIndex        =   9
      Top             =   11760
      Width           =   4215
   End
   Begin VB.TextBox txtFencers 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3600
      TabIndex        =   8
      Top             =   720
      Width           =   975
   End
   Begin VB.CommandButton cmdClear3 
      Caption         =   "CLEAR"
      Height          =   735
      Index           =   1
      Left            =   8400
      TabIndex        =   4
      Top             =   4200
      Width           =   4335
   End
   Begin VB.CommandButton cmdClear2 
      Caption         =   "CLEAR"
      Height          =   615
      Index           =   0
      Left            =   600
      TabIndex        =   3
      Top             =   4200
      Width           =   4215
   End
   Begin VB.CommandButton cmdConvert 
      Caption         =   "<==CONVERT==>"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   5400
      TabIndex        =   2
      Top             =   2760
      Width           =   2415
   End
   Begin VB.TextBox txtScore 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   8160
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   2640
      Width           =   4575
   End
   Begin VB.TextBox txtVictories 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1455
      Left            =   480
      TabIndex        =   0
      Top             =   2640
      Width           =   4455
   End
   Begin VB.Label Label4 
      BackColor       =   &H000000FF&
      Caption         =   "Fencers"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2400
      TabIndex        =   11
      Top             =   840
      Width           =   1095
   End
   Begin VB.Label Label3 
      BackColor       =   &H000000FF&
      Caption         =   "Score"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   9120
      TabIndex        =   7
      Top             =   1560
      Width           =   4095
   End
   Begin VB.Label Label2 
      BackColor       =   &H000000FF&
      Caption         =   "Victories"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   975
      Left            =   840
      TabIndex        =   6
      Top             =   1560
      Width           =   4215
   End
   Begin VB.Label Label1 
      BackColor       =   &H000000FF&
      Caption         =   "Fencing"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   72
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1815
      Left            =   4680
      TabIndex        =   5
      Top             =   0
      Width           =   4455
   End
End
Attribute VB_Name = "frmFence"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdClear1_Click(Index As Integer)
    
    'this code clears the specified text box
    txtFencers.Text = ""

End Sub

Private Sub cmdClear2_Click(Index As Integer)
    
    'this code clears the specified text box
    txtVictories.Text = ""

End Sub

Private Sub cmdClear3_Click(Index As Integer)

    'this code clears the specified text box
    txtScore.Text = ""

End Sub

Private Sub cmdConvert_Click()

'this code is saying that the variable 'bouts' should be a byte in length
Dim Bouts As Byte
'The varieble 'VictoriesFor1000Points' is
Dim VictoriesFor1000Points As Single

    'the Trim function removes spaces in the text before so problems do not occur
    'this code checks whether a value has been entered and alerts the user to
    'enter a numeric value if this is not true
    If Trim(txtFencers.Text) = "" Then
        MsgBox ("Must input between 21 and 76 fencers")
        'clears box and resets cursor
        txtFencers.Text = ""
        txtFencers.SetFocus
        txtFencers.SelStart = 0
        txtFencers.SelLength = Len(txtFencers.Text)
    End If
    
    'this code checks that the value entered is numeric
    If Not IsNumeric(txtFencers.Text) = True Then
        MsgBox ("Must input between 21 and 76 fencers")
        'resets cursor
        txtFencers.SetFocus
        txtFencers.SelStart = 0
        txtFencers.SelLength = Len(txtFencers.Text)
        Exit Sub
    End If
    
    If Not IsNumeric(txtVictories.Text) = True Then
        MsgBox ("Must input a numeric value")
        'resets cursor
        txtVictories.SetFocus
        txtVictories.SelStart = 0
        txtVictories.SelLength = Len(txtVictories.Text)
        Exit Sub
    End If
    
    'this code alerts the user if they have entered an invalid amount of fencers
    If txtFencers.Text <> Int(txtFencers.Text) Or Val(txtFencers.Text) < 21 Or Val(txtFencers.Text) > 76 Then
        MsgBox ("Must input between 21 and 76 fencers")
        txtFencers.SetFocus
        txtFencers.SelStart = 0
        txtFencers.SelLength = Len(txtFencers.Text)
        Exit Sub
    End If
    
    'this code tells you that you must enter one value at least
    If Trim(txtVictories.Text) = "" And Trim(txtScore.Text) = "" Then
        MsgBox "You must enter one value"
        txtVictories.SetFocus
        txtVictories.SelStart = 0
        txtVictories.SelLength = Len(txtVictories.Text)
        Exit Sub
    End If
    
    'this code is saying that both boxes cannot be filled and alersts the user
    If Trim(txtVictories.Text) <> "" And Trim(txtScore.Text) <> "" Then
        MsgBox "Both boxes cannot be filled"
        txtVictories.SetFocus
        txtVictories.SelStart = 0
        txtVictories.SelLength = Len(txtVictories.Text)
        Exit Sub
    End If
    
    If txtVictories.Text < 0 Then
        MsgBox "Must input positive value"
        txtVictories.SetFocus
        txtVictories.SelStart = 0
        txtVictories.SelLength = Len(txtVictories.Text)
        Exit Sub
    End If
    
    'bouts is a variable for how many fencing matches there are
    Bouts = Val(txtFencers.Text) - 1
    
    
    If Trim(txtVictories.Text) <> "" And Trim(txtScore.Text) = "" Then
    'this is a new variable stating how many hits are needed for 1000 points
        VictoriesFor1000Points = Bouts * 0.7
        
    'this is saying that if the variable VictoriesFor1000Points is not a whole number
    'it should be rounded up to the nearest whole number
        If Int(VictoriesFor1000Points) <> VictoriesFor1000Points Then
            VictoriesFor1000Points = Int(VictoriesFor1000Points) + 1
        End If
    End If
    
    'these if statements decide how many points will be awarded for each hit depending
    'on how many fencers there are
    If Bouts >= 61 And Bouts <= 75 Then
        EachVictory = 12
    ElseIf Bouts >= 48 And Bouts <= 60 Then
        EachVictory = 16
    ElseIf Bouts >= 40 And Bouts <= 47 Then
        EachVictory = 20
    ElseIf Bouts >= 34 And Bouts <= 39 Then
        EachVictory = 24
    ElseIf Bouts >= 30 And Bouts <= 33 Then
        EachVictory = 28
    ElseIf Bouts >= 27 And Bouts <= 29 Then
        EachVictory = 32
    ElseIf Bouts >= 24 And Bouts <= 26 Then
        EachVictory = 36
    ElseIf Bouts >= 22 And Bouts <= 23 Then
        EachVictory = 40
    ElseIf Bouts >= 20 And Bouts <= 21 Then
        EachVictory = 44
    Else: MsgBox ("Invalid number of fencers, enter between 21 and 76 fencers")
          Exit Sub
    End If
    
    'this code works out the final score
    txtScore.Text = 1000 - (VictoriesFor1000Points - Val(txtVictories.Text)) * EachVictory
    
    
End Sub

'takes user to main form and clers all text boxes
Private Sub cmdMain_Click()
    
    txtScore.Text = ""
    txtFencers.Text = ""
    txtVictories.Text = ""
    Me.Hide
    frmMain.Show

End Sub

Private Sub cmdPrintForm_Click()

    'landscape
    Printer.Orientation = 2
    frmFence.PrintForm
    Printer.EndDoc

End Sub


