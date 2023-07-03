VERSION 5.00
Begin VB.Form frmRide 
   BackColor       =   &H000000FF&
   Caption         =   "Form1"
   ClientHeight    =   11010
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   14790
   LinkTopic       =   "Form1"
   ScaleHeight     =   11010
   ScaleWidth      =   14790
   Begin VB.CommandButton cmdPrint 
      Caption         =   "Print "
      Height          =   615
      Left            =   8280
      TabIndex        =   14
      Top             =   6240
      Width           =   2535
   End
   Begin VB.CommandButton cmdTotalScore 
      Caption         =   "Total Score"
      Height          =   855
      Left            =   5400
      TabIndex        =   13
      Top             =   2400
      Width           =   2175
   End
   Begin VB.TextBox txtOptimum 
      Height          =   615
      Left            =   600
      TabIndex        =   11
      Top             =   4560
      Width           =   1335
   End
   Begin VB.PictureBox Picture2 
      Height          =   1215
      Left            =   0
      Picture         =   "frmRide.frx":0000
      ScaleHeight     =   1155
      ScaleWidth      =   2235
      TabIndex        =   10
      Top             =   0
      Width           =   2295
   End
   Begin VB.PictureBox Picture1 
      Height          =   6375
      Left            =   1920
      Picture         =   "frmRide.frx":85DA
      ScaleHeight     =   6315
      ScaleWidth      =   5715
      TabIndex        =   9
      Top             =   5760
      Width           =   5775
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
      Left            =   8760
      TabIndex        =   8
      Top             =   240
      Width           =   3015
   End
   Begin VB.CommandButton cmdcancel 
      Caption         =   "CLEAR"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   7080
      TabIndex        =   7
      Top             =   4200
      Width           =   4215
   End
   Begin VB.TextBox txtPenalties 
      Height          =   1215
      Left            =   2760
      TabIndex        =   5
      Text            =   "0"
      Top             =   4440
      Width           =   3735
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
      Height          =   1815
      Left            =   7920
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   1800
      Width           =   4095
   End
   Begin VB.TextBox txtTime 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1695
      Left            =   840
      TabIndex        =   1
      Top             =   2040
      Width           =   3855
   End
   Begin VB.Label Label5 
      BackColor       =   &H000000FF&
      Caption         =   "Optimum Time"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   615
      Left            =   360
      TabIndex        =   12
      Top             =   4080
      Width           =   1935
   End
   Begin VB.Label Label4 
      BackColor       =   &H000000FF&
      Caption         =   "Penalties"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3000
      TabIndex        =   6
      Top             =   3720
      Width           =   3855
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
      Height          =   735
      Left            =   9120
      TabIndex        =   4
      Top             =   1080
      Width           =   2535
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
      Height          =   855
      Left            =   2760
      TabIndex        =   3
      Top             =   1200
      Width           =   1695
   End
   Begin VB.Label Label1 
      BackColor       =   &H000000FF&
      Caption         =   "Riding"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   72
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2055
      Left            =   4560
      TabIndex        =   0
      Top             =   120
      Width           =   4095
   End
End
Attribute VB_Name = "frmRide"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdcancel_Click()
    
    'clears the designated text boxes
    txtTime.Text = ""
    txtScore.Text = ""
    txtPenalties.Text = "0"
    
    End Sub

Private Sub cmdPrint_Click()

     'landscape
    Printer.Orientation = 2
    frmRide.PrintForm
    Printer.EndDoc

End Sub

Private Sub cmdTotalScore_Click()
   
   'sees if the time is entered in a numeric value
    If Not IsNumeric(txtTime.Text) Then
        MsgBox ("Must input time (in seconds)")
        txtTime.SetFocus
        txtTime.SelStart = 0
        txtTime.SelLength = Len(txtTime.Text)
        Exit Sub
    End If
    
    'tells user to enter positive time
    If txtTime.Text <> Int(txtTime.Text) Or Val(txtTime.Text) < 0 Then
        MsgBox ("Must input positive time (in seconds)")
        'resets cursor
        txtTime.SetFocus
        txtTime.SelStart = 0
        txtTime.SelLength = Len(txtTime.Text)
        Exit Sub
    End If
    
    'checks if the optimum time is in number form
    If Not IsNumeric(txtOptimum.Text) Then
        MsgBox ("Must input +ve optimum time (in seconds)")
        txtOptimum.SetFocus
        txtOptimum.SelStart = 0
        txtOptimum.SelLength = Len(txtOptimum.Text)
        Exit Sub
    End If
    
    'checking the optimum time is positive
    If txtOptimum.Text <> Int(txtOptimum.Text) Or Val(txtOptimum.Text) < 0 Then
        MsgBox ("Must input +ve optimum time (in seconds)")
        txtOptimum.SetFocus
        txtOptimum.SelStart = 0
        txtOptimum.SelLength = Len(txtOptimum.Text)
        Exit Sub
    End If
    
    'checking if penalties are positive
    If Not IsNumeric(txtPenalties.Text) Or Val(txtPenalties.Text) < 0 Then
        MsgBox ("Must input penalties (positive whole number)")
        txtPenalties.SetFocus
        txtPenalties.SelStart = 0
        txtPenalties.SelLength = Len(txtPenalties.Text)
        Exit Sub
    End If
    
    'checks if the penalties are entered and integers
    If txtPenalties.Text <> Int(txtPenalties.Text) Then
        MsgBox ("Must input penalties (+ve whole number)")
        txtPenalties.SetFocus
        txtPenalties.SelStart = 0
        txtPenalties.SelLength = Len(txtPenalties.Text)
        Exit Sub
    End If
    
    'new variale = total score
    TotalScore = 1200 - Val(txtPenalties.Text)
    
    'this is working out the total score with the time penalties as well
    If txtOptimum.Text - txtTime.Text < 0 Then
        TotalScore = TotalScore - 4 * (txtTime.Text - txtOptimum.Text)
    End If
    
    'saying that is the total score < 0 the output score will be 0 as 0 is the minimum
    'score allowed
    If TotalScore < 0 Then
        txtScore.Text = 0
    Else: txtScore.Text = TotalScore
    End If

End Sub

'takes you to the main menu and clears all the text boxes
Private Sub cmdMain_Click()

    Me.Hide
    frmMain.Show
    txtTime.Text = ""
    txtPenalties.Text = ""
    txtScore.Text = ""
    
End Sub

