VERSION 5.00
Begin VB.Form frmLoginPage 
   BackColor       =   &H000000FF&
   Caption         =   "Form1"
   ClientHeight    =   9270
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   11100
   LinkTopic       =   "Form1"
   ScaleHeight     =   9270
   ScaleWidth      =   11100
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture2 
      Height          =   1215
      Left            =   0
      Picture         =   "frmLoginPage.frx":0000
      ScaleHeight     =   1155
      ScaleWidth      =   2235
      TabIndex        =   7
      Top             =   0
      Width           =   2295
   End
   Begin VB.CommandButton cmdClear 
      BackColor       =   &H000000FF&
      Caption         =   "CLEAR"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1800
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   3960
      Width           =   2415
   End
   Begin VB.CommandButton cmdLogin 
      BackColor       =   &H000000FF&
      Caption         =   "LOGIN"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4800
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   3960
      Width           =   3135
   End
   Begin VB.TextBox txtPassword 
      Height          =   735
      IMEMode         =   3  'DISABLE
      Left            =   3840
      PasswordChar    =   "*"
      TabIndex        =   2
      Top             =   3000
      Width           =   4095
   End
   Begin VB.TextBox txtUsername 
      Height          =   735
      Left            =   3840
      TabIndex        =   1
      Top             =   2040
      Width           =   4095
   End
   Begin VB.Label Label5 
      BackColor       =   &H000000FF&
      Caption         =   "Date"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   7800
      TabIndex        =   11
      Top             =   1440
      Width           =   615
   End
   Begin VB.Label Label4 
      BackColor       =   &H000000FF&
      Caption         =   "Time"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7800
      TabIndex        =   10
      Top             =   600
      Width           =   615
   End
   Begin VB.Label lblTime 
      BackColor       =   &H000000C0&
      Height          =   615
      Left            =   8520
      TabIndex        =   9
      Top             =   480
      Width           =   2055
   End
   Begin VB.Label lblDate 
      BackColor       =   &H000000C0&
      Height          =   615
      Left            =   8520
      TabIndex        =   8
      Top             =   1320
      Width           =   2055
   End
   Begin VB.Label Label3 
      BackColor       =   &H000000FF&
      Caption         =   "PASSWORD"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   1440
      TabIndex        =   4
      Top             =   3000
      Width           =   2295
   End
   Begin VB.Label Label2 
      BackColor       =   &H000000FF&
      Caption         =   "USERNAME"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   735
      Left            =   1440
      TabIndex        =   3
      Top             =   2040
      Width           =   2295
   End
   Begin VB.Label Label1 
      BackColor       =   &H000000FF&
      Caption         =   "Login To Pentathlon Project"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   27.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1335
      Left            =   3000
      TabIndex        =   0
      Top             =   360
      Width           =   3375
   End
End
Attribute VB_Name = "frmLoginPage"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Activate()

Dim TodaysDate As Date
Dim i As Integer

    'this code connects the program with the database
    'I have done this so I can keep the passwords in an access file
    Set ConDB = New ADODB.Connection
    PathToDB = "Provider = Microsoft.ACE.OLEDB.12.0; Data Source=" & App.Path & "\Pentathlon.accdb"
    ConDB.Open PathToDB
    
    Set rsPasswords = New ADODB.Recordset
    rsPasswords.Open "tblLogin", ConDB, adOpenKeyset, adLockOptimistic
   
    'shows date and time on the login page
    lblDate.Caption = Format(Date, "dddd dd mmmm yyyy")
    lblTime.Caption = Time
    Call cmdClear_Click
        
    ' puts cursor in username box
    txtUsername.SetFocus
    cmdLogin.Enabled = False
    
        
End Sub

Private Sub cmdLogin_Click()

    'this code is checking for correct user name
    
    UserName = LCase(txtUsername.Text)
    rsPasswords.MoveFirst
    rsPasswords.Find ("[Username] = '" & UserName & "'")
 
    If Not rsPasswords.EOF Then
        txtPassword.SetFocus
    Else
        MsgBox "Invalid Username, please try again.", , "Login"
        txtUsername.SetFocus
        txtUsername.SelStart = 0
        txtUsername.SelLength = Len(txtUsername.Text)
        Exit Sub
        'exit subroutine if invalid user name entered
    End If
    
    'this code is checking for correct password
    
    Password = LCase(txtPassword.Text)
    If Password = rsPasswords![Password] Then
        UserStatus = rsPasswords!Status
        'the database holds the status: either 'A' [administrator] or 'U' [user]
        
        frmLoginPage.Hide
        frmMain.Show
    Else
        ' if the password is incorrect a message box will come up
        ' saying "incorrect password"
        ' puts cursor in password box
        
        MsgBox "Invalid Password, please try again.", , "Login"
        txtPassword.SetFocus
        txtPassword.SelStart = 0
        txtPassword.SelLength = Len(txtPassword.Text)
      
    End If
    
End Sub

Private Sub cmdClear_Click()

    ' this code clears both boxes and puts the cursor in the username box
    txtUsername.Text = ""
    txtPassword.Text = ""
    txtUsername.SetFocus
    
    
End Sub

Private Sub tmrDateAndTime_Timer()

    lblDate.Caption = Format(Date, "dddd dd mmmm yyyy")
    lblTime.Caption = Time
    
End Sub

Private Sub TxtPassword_KeyPress(KeyAscii As Integer)

    'Enter Button was pressed (enter button = Ascii value of 13)
    If KeyAscii = 13 And cmdLogin.Enabled = True Then
        Call cmdLogin_Click
    End If
    
End Sub

Private Sub TxtUserName_KeyPress(KeyAscii As Integer)
    
    'Enter Button was pressed (enter button = Ascii value of 13)
    If KeyAscii = 13 And cmdLogin.Enabled = True Then
        Call cmdLogin_Click
    End If
    
End Sub

Private Sub TxtUserName_Change()

    'login command button is enabled when a username and password are entered
    If Trim(txtUsername.Text) <> "" And Trim(txtPassword.Text) <> "" Then
        cmdLogin.Enabled = True
    Else
        cmdLogin.Enabled = False
    End If
    
End Sub

Private Sub TxtPassword_Change()

    'login command button is enabled when a username and password are entered
    If Trim(txtUsername.Text) <> "" And Trim(txtPassword.Text) <> "" Then
        cmdLogin.Enabled = True
    Else
        cmdLogin.Enabled = False
    End If
    
End Sub



