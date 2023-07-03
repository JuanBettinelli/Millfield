VERSION 5.00
Begin VB.Form frmLogin 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Login"
   ClientHeight    =   3750
   ClientLeft      =   2835
   ClientTop       =   3360
   ClientWidth     =   7950
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2215.624
   ScaleMode       =   0  'User
   ScaleWidth      =   7464.621
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer tmrDateAndTime 
      Interval        =   1000
      Left            =   7560
      Top             =   0
   End
   Begin VB.TextBox txtUserName 
      Height          =   345
      Left            =   2250
      TabIndex        =   1
      Top             =   975
      Width           =   2325
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   390
      Left            =   1935
      TabIndex        =   4
      Top             =   2220
      Width           =   1140
   End
   Begin VB.CommandButton cmdCancel 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   390
      Left            =   3540
      TabIndex        =   5
      Top             =   2220
      Width           =   1140
   End
   Begin VB.TextBox txtPassword 
      Height          =   345
      IMEMode         =   3  'DISABLE
      Left            =   2250
      PasswordChar    =   "*"
      TabIndex        =   3
      Top             =   1605
      Width           =   2325
   End
   Begin VB.Label lblTime 
      Caption         =   "Time"
      Height          =   375
      Left            =   5400
      TabIndex        =   7
      Top             =   1560
      Width           =   1575
   End
   Begin VB.Label lblDate 
      Caption         =   "Date"
      Height          =   375
      Left            =   5400
      TabIndex        =   6
      Top             =   960
      Width           =   1575
   End
   Begin VB.Label lblLabels 
      Caption         =   "&User Name:"
      Height          =   270
      Index           =   0
      Left            =   1065
      TabIndex        =   0
      Top             =   990
      Width           =   1080
   End
   Begin VB.Label lblLabels 
      Caption         =   "&Password:"
      Height          =   270
      Index           =   1
      Left            =   1065
      TabIndex        =   2
      Top             =   1620
      Width           =   1080
   End
End
Attribute VB_Name = "frmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Forces you to declare all variables
Option Explicit

Dim Attempts As Integer

Private Sub Form_Activate()

Dim TodaysDate As Date
Dim i As Integer

    'create connection between DB and program
    Set conDB = New ADODB.Connection
    PathToDB = "Provider = Microsoft.Jet.OLEDB.4.0; Data Source =" & App.Path & "\Database\Winery.mdb"
    conDB.Open PathToDB
    
    Set rsPasswords = New ADODB.Recordset
    rsPasswords.Open "tblPasswords", conDB, adOpenKeyset, adLockOptimistic
   
    'add date and time to form
    lblDate.Caption = Format(Date, "dddd dd mmmm yyyy")
    lblTime.Caption = Time
    Call CmdCancel_Click
        
    cmdOK.Enabled = True
    Attempts = 0
    
    'rsPasswords.MoveFirst
    'For i = 1 To rsPasswords.RecordCount
        'MsgBox rsPasswords![UserName] & " " & rsPasswords![Password]
        'rsPasswords.MoveNext
    'Next i
    
End Sub

Private Sub CheckAccessAttempts()
    
    If rsPasswords![Access Attempts] < 2 Then
        rsPasswords![Access Attempts] = rsPasswords![Access Attempts] + 1
        Attempts = rsPasswords![Access Attempts]
        'update database
        rsPasswords.Update
            'MsgBox "Invalid Password, try again!", , "Login"
        txtPassword.SetFocus
        txtPassword.SelStart = 0
        txtPassword.SelLength = Len(txtPassword)
    Else
        MsgBox "Access Denied."
        cmdOK.Enabled = False
    End If
    
End Sub

Private Sub CmdOK_Click()

    'check for correct user name
    
    UserName = UCase(txtUserName.Text)
    rsPasswords.MoveFirst
    rsPasswords.Find ("[Username] = '" & UserName & "'")
 
    If Not rsPasswords.EOF Then
        txtPassword.SetFocus
    Else
        MsgBox "Invalid Username, please try again.", , "Login"
        txtUserName.SetFocus
        txtUserName.SelStart = 0
        txtUserName.SelLength = Len(txtUserName.Text)
        Exit Sub    'exit subroutine if invalid user name entered
    End If
    
    'check for correct password
    
    Password = UCase(txtPassword.Text)
    If Password = rsPasswords!Password Then
        UserStatus = rsPasswords!Status   'holds status: 'A' or 'U'
        rsPasswords![Access Attempts] = 0    'reset attempts to zero
        'update database
        rsPasswords.Update
        
        frmLogin.Hide
        frmMain.Show
    Else
        MsgBox "Invalid Password, please try again.", , "Login"
        txtPassword.SetFocus
        txtPassword.SelStart = 0
        txtPassword.SelLength = Len(txtPassword.Text)
        Call CheckAccessAttempts    'call AccessAttempts subroutine
        Exit Sub                    'exit subroutine if invalid password entered
    End If
    
End Sub

Private Sub CmdCancel_Click()

    txtUserName.Text = ""
    txtPassword.Text = ""
    txtUserName.SetFocus
    
End Sub

Private Sub tmrDateAndTime_Timer()

    lblDate.Caption = Format(Date, "dddd dd mmmm yyyy")
    lblTime.Caption = Time
    
End Sub

Private Sub TxtPassword_KeyPress(KeyAscii As Integer)

    If KeyAscii = 13 And cmdOK.Enabled = True Then
    'Enter Button was pressed
        Call CmdOK_Click
    End If
    
End Sub

Private Sub TxtUserName_KeyPress(KeyAscii As Integer)

    If KeyAscii = 13 And cmdOK.Enabled = True Then
    'Enter Button was pressed
        Call CmdOK_Click
    End If
    
End Sub

Private Sub TxtUserName_Change()

    If Trim(txtUserName.Text) <> "" And Trim(txtPassword.Text) <> "" Then
        cmdOK.Enabled = True
    Else
        cmdOK.Enabled = False
    End If
    
End Sub

Private Sub TxtPassword_Change()

    If Attempts < 2 Then
        If Trim(txtUserName.Text) <> "" And Trim(txtPassword.Text) <> "" Then
            cmdOK.Enabled = True
        Else
            cmdOK.Enabled = False
        End If
    End If
    
End Sub


