VERSION 5.00
Begin VB.Form frmLogin 
   BackColor       =   &H80000002&
   Caption         =   "Login"
   ClientHeight    =   3645
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5040
   LinkTopic       =   "Form1"
   ScaleHeight     =   3645
   ScaleWidth      =   5040
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame login 
      Caption         =   "Login"
      Height          =   2535
      Left            =   360
      TabIndex        =   0
      Top             =   960
      Width           =   4215
      Begin VB.TextBox txtpassword 
         Height          =   375
         IMEMode         =   3  'DISABLE
         Left            =   2160
         PasswordChar    =   "*"
         TabIndex        =   4
         Top             =   1200
         Width           =   1695
      End
      Begin VB.TextBox txtusername 
         Height          =   375
         Left            =   2160
         TabIndex        =   3
         Top             =   600
         Width           =   1695
      End
      Begin VB.CommandButton cmdlogin 
         Caption         =   "Login"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   480
         TabIndex        =   2
         Top             =   1920
         Width           =   1455
      End
      Begin VB.CommandButton cmdcancel 
         Caption         =   "Cancel"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         TabIndex        =   1
         Top             =   1920
         Width           =   1455
      End
      Begin VB.Label Labelpassword 
         Caption         =   "Password"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   360
         TabIndex        =   6
         Top             =   1200
         Width           =   1695
      End
      Begin VB.Label Labelusername 
         Caption         =   "User Name"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   360
         TabIndex        =   5
         Top             =   600
         Width           =   1695
      End
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H80000002&
      Caption         =   "City of Hereford Swimming Club"
      BeginProperty Font 
         Name            =   "Lucida Handwriting"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   855
      Left            =   600
      TabIndex        =   7
      Top             =   120
      Width           =   3735
   End
End
Attribute VB_Name = "frmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdcancel_Click()

    End
    
End Sub

Private Sub cmdlogin_Click()

Set adotables = New ADODB.Recordset

adotables.Open "Select * from Users where [Username] ='" & txtusername & "'", adodata, adOpenKeyset

If txtusername = "" Then
    MsgBox "Please enter a username"
    txtusername.BackColor = RGB(255, 0, 0)
    txtusername.SetFocus
    Exit Sub
End If

If txtpassword = "" Then
    MsgBox "Please enter your password"
    txtpassword.BackColor = RGB(255, 0, 0)
    txtpassword.SetFocus
    Exit Sub
End If

If adotables.RecordCount = 0 Then
    MsgBox "No such user."
    txtusername.Text = ""
    txtusername.SetFocus
    SendKeys "{Home}+{End}"
    Exit Sub
End If
 
If adotables!Password <> txtpassword.Text Then
    MsgBox "Wrong password."
    txtusername.Text = ""
    txtusername.SetFocus
    SendKeys "{Home}+{End}"
Else
    Me.Hide
    frmCoaches.Show
End If

txtusername = ""
txtpassword = ""

End Sub

Private Sub Form_Load()

Set adodata = New ADODB.Connection
Set adotables = New ADODB.Recordset

datapath = App.Path & "\swimming.mdb"
connectionstring = "provider = microsoft.jet.oledb.4.0; data source = " & datapath

adodata.Open connectionstring

'hard coded for now ....

txtusername.Text = "admin"
txtpassword.Text = "a"

End Sub
