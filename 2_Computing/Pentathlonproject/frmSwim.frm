VERSION 5.00
Begin VB.Form frmSwim 
   BackColor       =   &H000000FF&
   Caption         =   "Swimming"
   ClientHeight    =   11010
   ClientLeft      =   450
   ClientTop       =   450
   ClientWidth     =   14340
   LinkTopic       =   "Form2"
   ScaleHeight     =   11010
   ScaleWidth      =   14340
   Begin VB.CommandButton cmdPrint 
      Caption         =   "Print"
      Height          =   375
      Left            =   6120
      TabIndex        =   13
      Top             =   3360
      Width           =   2055
   End
   Begin VB.CommandButton cmdMain2 
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
      Left            =   10200
      TabIndex        =   12
      Top             =   120
      Width           =   2895
   End
   Begin VB.PictureBox Picture3 
      Height          =   1215
      Left            =   0
      Picture         =   "frmSwim.frx":0000
      ScaleHeight     =   1155
      ScaleWidth      =   2235
      TabIndex        =   11
      Top             =   0
      Width           =   2295
   End
   Begin VB.PictureBox Picture2 
      Height          =   7095
      Left            =   960
      Picture         =   "frmSwim.frx":85DA
      ScaleHeight     =   7035
      ScaleWidth      =   5355
      TabIndex        =   10
      Top             =   3840
      Width           =   5415
   End
   Begin VB.PictureBox Picture1 
      Height          =   5055
      Left            =   6960
      Picture         =   "frmSwim.frx":8BBAC
      ScaleHeight     =   4995
      ScaleWidth      =   6795
      TabIndex        =   8
      Top             =   3840
      Width           =   6855
   End
   Begin VB.CommandButton cmdClear2 
      Caption         =   "Clear"
      Height          =   375
      Left            =   9480
      TabIndex        =   7
      Top             =   3360
      Width           =   3855
   End
   Begin VB.CommandButton cmdClear 
      Caption         =   "Clear"
      Height          =   375
      Left            =   1200
      TabIndex        =   6
      Top             =   3360
      Width           =   3975
   End
   Begin VB.CommandButton cmdTranslate 
      Caption         =   "<== Convert ==>"
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
      Left            =   5520
      TabIndex        =   5
      Top             =   2160
      Width           =   3135
   End
   Begin VB.TextBox txtSwimScore 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   9240
      TabIndex        =   3
      Top             =   2160
      Width           =   3855
   End
   Begin VB.TextBox txtSwimTime 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   1200
      TabIndex        =   1
      Top             =   2160
      Width           =   3975
   End
   Begin VB.CommandButton cmdMain 
      BackColor       =   &H000000FF&
      Caption         =   "Main Menu"
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
      Left            =   10560
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   11160
      Width           =   2535
   End
   Begin VB.Label Label3 
      BackColor       =   &H000000FF&
      Caption         =   "SWIMMING"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   1335
      Left            =   5280
      TabIndex        =   9
      Top             =   240
      Width           =   4215
   End
   Begin VB.Label Label2 
      BackColor       =   &H000000FF&
      Caption         =   "Swimming Score"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   9480
      TabIndex        =   4
      Top             =   1080
      Width           =   3615
   End
   Begin VB.Label Label1 
      BackColor       =   &H000000FF&
      Caption         =   "Swimming Time"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1320
      TabIndex        =   2
      Top             =   1560
      Width           =   3615
   End
End
Attribute VB_Name = "frmSwim"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdClear_Click()
    
    'clears swim time box
    txtSwimTime.Text = ""

End Sub

Private Sub cmdClear2_Click()
    
    'clears swim time box
    txtSwimScore.Text = ""

End Sub

Private Sub cmdPrint_Click()

          'landscape
           Printer.Orientation = 2
           frmFence.PrintForm
           Printer.EndDoc
    
End Sub

Private Sub cmdTranslate_Click()
        
        'prevents user from entering values in both boxes
        If Trim(txtSwimTime.Text) <> "" And Trim(txtSwimScore.Text) <> "" Then
            
            MsgBox ("Cannot enter both swim time and swim score")
            'resets cursor
            txtSwimScore.Text = ""
            txtSwimTime.SetFocus
            txtSwimTime.SelStart = 0
            txtSwimTime.SelLength = Len(txtSwimTime.Text)
            Exit Sub
            
           
        ElseIf Trim(txtSwimScore.Text) = "" Then
        'this code alerts the user when the swim time is not a number
            If Not IsNumeric(txtSwimTime.Text) = True Then
                MsgBox ("Must input +ve time (in seconds)")
                txtSwimTime.SetFocus
                txtSwimTime.SelStart = 0
                txtSwimTime.SelLength = Len(txtSwimTime.Text)
                Exit Sub
            End If
            
        'this codes alerts user if they have entered a time < 0
            If Val(txtSwimTime.Text) < 0 Then
                MsgBox ("Must input +ve time (in seconds)")
                txtSwimTime.SetFocus
                txtSwimTime.SelStart = 0
                txtSwimTime.SelLength = Len(txtSwimTime.Text)
                Exit Sub
            End If
            
            'this code finds out what the Extra Time variable is
            ExtraTime = Val(txtSwimTime.Text) - 150
            txtSwimScore.Text = Int(1000 - ExtraTime * 12)
            'points must be rounded to nearest 4
            'e.g. 150 = 1000
            '150.1    = 1000
            '150.2    = 1000
            '150.33   = 1000
            '150.34   = 996
            '150.4    = 996
            '150.5    = 996
            '150.6    = 996
            '150.66   = 996
            '150.67   = 992
            '150.99   = 992
            '151      = 988
            
            If Val(txtSwimScore.Text) < 0 Then
                txtSwimScore.Text = 0
            End If
            
        'now if the swim time box is empty the program will do the following
        'functions below to work out the score
        ElseIf txtSwimTime.Text = "" Then
        
       'this code checks the swimscore is in numeral form
            If Not IsNumeric(txtSwimScore.Text) = True Then
                'tells the user to input a numeric score
                MsgBox ("Must input score (+ve whole number)")
                'resets cursor
                txtSwimScore.SetFocus
                txtSwimScore.SelStart = 0
                txtSwimScore.SelLength = Len(txtSwimScore.Text)
                Exit Sub
            End If
            
            'this code works out if the swim score is an integer and if it is between
            '0 and 2800
            If txtSwimScore.Text <> Int(txtSwimScore.Text) Or Val(txtSwimScore.Text) < 0 Or Val(txtSwimScore.Text) > 2800 Then
                'alerts user to enter a positive score
                MsgBox ("Must input positive Score between 0 and 2800")
                txtSwimScore.SetFocus
                txtSwimScore.SelStart = 0
                txtSwimScore.SelLength = Len(txtSwimScore.Text)
                Exit Sub
            End If
            
            'this code says that the ExtraScore variable is the swimscore - 1000
            ExtraScore = Val(txtSwimScore.Text) - 1000
            txtSwimTime.Text = Format(150 - ExtraScore / 12, "##0.0#")
            
        End If

End Sub

Private Sub cmdMain2_Click()

    'hides frmSwim and shows frmMain
    Me.Hide
    frmMain.Show
    'clears text boxes
    txtSwimTime.Text = ""
    txtSwimScore.Text = ""
    
End Sub

Private Sub Form_Load()

End Sub
