VERSION 5.00
Begin VB.Form frmRunShoot 
   BackColor       =   &H000000FF&
   Caption         =   "Form1"
   ClientHeight    =   11010
   ClientLeft      =   60
   ClientTop       =   255
   ClientWidth     =   14145
   LinkTopic       =   "Form1"
   ScaleHeight     =   11010
   ScaleWidth      =   14145
   Begin VB.CommandButton cmdPrint 
      Caption         =   "Print"
      Height          =   615
      Left            =   4920
      TabIndex        =   13
      Top             =   3600
      Width           =   2415
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
      Left            =   8040
      TabIndex        =   12
      Top             =   360
      Width           =   3015
   End
   Begin VB.TextBox txtTime 
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   360
      TabIndex        =   11
      Text            =   "00:00:00"
      Top             =   2400
      Width           =   3975
   End
   Begin VB.ComboBox cmbSeconds 
      Height          =   315
      ItemData        =   "frmRunShoot.frx":0000
      Left            =   1560
      List            =   "frmRunShoot.frx":00B8
      Style           =   2  'Dropdown List
      TabIndex        =   10
      Top             =   5280
      Width           =   975
   End
   Begin VB.ComboBox cmbMinutes 
      Height          =   315
      ItemData        =   "frmRunShoot.frx":01AC
      Left            =   1560
      List            =   "frmRunShoot.frx":0201
      Style           =   2  'Dropdown List
      TabIndex        =   9
      Top             =   4800
      Width           =   975
   End
   Begin VB.PictureBox Picture2 
      Height          =   1215
      Left            =   0
      Picture         =   "frmRunShoot.frx":0271
      ScaleHeight     =   1155
      ScaleWidth      =   2235
      TabIndex        =   8
      Top             =   0
      Width           =   2295
   End
   Begin VB.PictureBox Picture1 
      Height          =   5535
      Left            =   2880
      Picture         =   "frmRunShoot.frx":884B
      ScaleHeight     =   5475
      ScaleWidth      =   7035
      TabIndex        =   5
      Top             =   4320
      Width           =   7095
   End
   Begin VB.CommandButton cmdClear2 
      Caption         =   "Clear"
      Height          =   495
      Left            =   8400
      TabIndex        =   4
      Top             =   3720
      Width           =   2895
   End
   Begin VB.CommandButton cmdClear 
      Caption         =   "Clear"
      Height          =   495
      Left            =   720
      TabIndex        =   3
      Top             =   3600
      Width           =   3375
   End
   Begin VB.TextBox txtScore 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   8040
      TabIndex        =   2
      Text            =   "0"
      Top             =   2400
      Width           =   3735
   End
   Begin VB.CommandButton cmdConvert 
      Caption         =   "<==CONVERT==>"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   4560
      TabIndex        =   1
      Top             =   2400
      Width           =   3255
   End
   Begin VB.Label Label5 
      Caption         =   "Seconds"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   15
      Top             =   5280
      Width           =   1095
   End
   Begin VB.Label Label4 
      Caption         =   "Minutes"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   360
      TabIndex        =   14
      Top             =   4800
      Width           =   1095
   End
   Begin VB.Label Label3 
      BackColor       =   &H000000FF&
      Caption         =   "Score"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   8040
      TabIndex        =   7
      Top             =   1680
      Width           =   1935
   End
   Begin VB.Label Label2 
      BackColor       =   &H000000FF&
      Caption         =   "Time"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1680
      TabIndex        =   6
      Top             =   1680
      Width           =   1935
   End
   Begin VB.Label Label1 
      BackColor       =   &H000000FF&
      Caption         =   "Run Shoot"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   4080
      TabIndex        =   0
      Top             =   600
      Width           =   3615
   End
End
Attribute VB_Name = "frmRunShoot"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmbMinutes_Click()
    
    'this code formats the time to make it consistantly in the same format when in
    'the textbox
    txtTime.Text = Format(Val(cmbMinutes.Text), "00") & ":" & Format(Val(cmbSeconds.Text), "00") & ":00"
    TimeInSeconds = Val(cmbMinutes.Text) * 60 + Val(cmbSeconds.Text)
  

End Sub

Private Sub cmbSeconds_Click()

    'this code formats the time to make it consistantly in the same format when in
    'the textbox
    txtTime.Text = Format(Val(cmbMinutes.Text), "00") & ":" & Format(Val(cmbSeconds.Text), "00") & ":00"
    TimeInSeconds = Val(cmbMinutes.Text) * 60 + Val(cmbSeconds.Text)

End Sub

Private Sub cmdClear_Click()
    
    'resets time as below
    txtTime.Text = "00:00:00"
    
End Sub


Private Sub cmdClear2_Click()
    'resets score as below
    txtScore.Text = "0"

End Sub

Private Sub cmdConvert_Click()

    'checks that both time and score have not been entered
    If txtTime.Text <> "00:00:00" And txtScore.Text <> "0" Then
        
            MsgBox ("Cannot enter both time and score")
            txtScore.Text = "0"
            txtScore.SetFocus
            txtScore.SelStart = 0
            txtScore.SelLength = Len(txtScore.Text)
            Exit Sub
    End If
    
    'checks that either score or time have been entered
    If txtTime.Text = "00:00:00" And txtScore.Text = "0" Then
        MsgBox ("Must enter either score or time")
        Exit Sub
    End If
    
    'when the time is entered the code will continue
    If txtTime.Text <> "00:00:00" Then
    
        StartingScore = 2000
        
        'calculates the score by either reducing it from 2000 or increasing it
        If TimeInSeconds > 840 Then
            ReduceScore = (TimeInSeconds - 840) * 4
            NewScore = StartingScore - ReduceScore
        Else: IncreaseScore = (840 - TimeInSeconds) * 4
              NewScore = StartingScore + IncreaseScore
        End If
        
        'makes score = 0
        If NewScore < 0 Then
            txtScore.Text = 0
        Else: txtScore.Text = NewScore
        End If
        
    ElseIf txtScore.Text <> "0" Then
    
        If Not IsNumeric(txtScore.Text) = True Then
            MsgBox ("Must input +ve Score")
            txtScore.SetFocus
            txtScore.SelStart = 0
            txtScore.SelLength = Len(txtScore.Text)
            Exit Sub
        End If
        
        'put in other scores....
        If Int(Val(txtScore.Text)) <> Val(txtScore.Text) Then
            MsgBox ("Must enter Integer Value")
            txtScore.Text = "0"
            txtTime.SetFocus
            txtTime.SelStart = 0
            txtTime.SelLength = Len(txtTime.Text)
            Exit Sub
        End If
        
        If Val(txtScore.Text) < 0 Then
            MsgBox ("Must enter positive score")
            txtScore.Text = "0"
            txtTime.SetFocus
            txtTime.SelStart = 0
            txtTime.SelLength = Len(txtTime.Text)
            Exit Sub
        End If
        
        StartingTime = 840
        Score = Val(txtScore.Text)
        
        If Score > 2000 Then
            ReduceTime = (Score - 2000) / 4
            OverallTimeInSeconds = StartingTime - ReduceTime
        Else: IncreaseTime = (2000 - Score) / 4
            OverallTimeInSeconds = StartingTime + IncreaseTime
        End If
        
         'converts time in seconds to minutes and seconds
        TimeInMinutes = Int(OverallTimeInSeconds / 60)
        TimeInSeconds = OverallTimeInSeconds - TimeInMinutes * 60
        
        '= Val(cmbMinutes.Text) * 60 + Val(cmbSeconds.Text) + Val(cmbMilliseconds.Text) / 1000
        txtTime.Text = Format(TimeInMinutes, "00") & ":" & Format(TimeInSeconds, "00") & ":00"
        
    End If
    
End Sub

Private Sub cmdMain_Click()

    'shows main screen and clears time and score boxes
    Me.Hide
    frmMain.Show
    txtTime.Text = ""
    txtScore.Text = ""

End Sub

Private Sub cmdPrint_Click()

     'landscape
    Printer.Orientation = 2
    frmFence.PrintForm
    Printer.EndDoc

End Sub
