VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form frmLogin 
   Caption         =   "Login"
   ClientHeight    =   5640
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10110
   LinkTopic       =   "Form1"
   ScaleHeight     =   5640
   ScaleWidth      =   10110
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrTimeAndDate 
      Interval        =   1000
      Left            =   8760
      Top             =   3240
   End
   Begin MSAdodcLib.Adodc adodcPasswords 
      Height          =   735
      Left            =   7080
      Top             =   4440
      Visible         =   0   'False
      Width           =   2055
      _ExtentX        =   3625
      _ExtentY        =   1296
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   ""
      OLEDBString     =   ""
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "Passwords"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSDataGridLib.DataGrid dbgPasswords 
      Bindings        =   "frmLogin.frx":0000
      Height          =   1455
      Left            =   600
      TabIndex        =   6
      Top             =   3840
      Visible         =   0   'False
      Width           =   5535
      _ExtentX        =   9763
      _ExtentY        =   2566
      _Version        =   393216
      HeadLines       =   1
      RowHeight       =   15
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2057
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   2057
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
   Begin VB.TextBox txtUsername 
      Height          =   495
      Left            =   1680
      TabIndex        =   4
      Top             =   840
      Width           =   1815
   End
   Begin VB.TextBox txtPassword 
      Height          =   495
      Left            =   1680
      TabIndex        =   2
      Top             =   1440
      Width           =   1815
   End
   Begin VB.CommandButton cmdQuit 
      Caption         =   "Quit"
      Height          =   495
      Left            =   600
      TabIndex        =   1
      Top             =   3120
      Width           =   1215
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "OK"
      Height          =   495
      Left            =   600
      TabIndex        =   0
      Top             =   2520
      Width           =   1215
   End
   Begin VB.Label lblTime 
      Caption         =   "Time"
      Height          =   615
      Left            =   5040
      TabIndex        =   8
      Top             =   1440
      Width           =   3975
   End
   Begin VB.Label lblDate 
      Caption         =   "Date"
      Height          =   495
      Left            =   5040
      TabIndex        =   7
      Top             =   960
      Width           =   3855
   End
   Begin VB.Label Label2 
      Caption         =   "Username"
      Height          =   255
      Left            =   360
      TabIndex        =   5
      Top             =   960
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Password"
      Height          =   255
      Left            =   360
      TabIndex        =   3
      Top             =   1560
      Width           =   1215
   End
End
Attribute VB_Name = "frmLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdOK_Click()
Dim rsPasswords2 As ADODB.Recordset

    Set rsPasswords = New ADODB.Recordset
    rsPasswords.Open "SELECT * FROM tblPasswords WHERE Username = '" & UCase(txtUsername.Text) & "'", conDB, adOpenKeyset, adLockOptimistic

    If rsPasswords.RecordCount <> 0 Then
        Set rsPasswords2 = New ADODB.Recordset
        rsPasswords2.Open "SELECT * FROM tblPasswords WHERE Username = '" & UCase(txtUsername.Text) & "' AND Password = '" & UCase(txtPassword.Text) & "'", conDB, adOpenKeyset, adLockOptimistic
        
        If rsPasswords2.RecordCount <> 0 Then
            txtPassword.Text = ""
            txtUsername.Text = ""
            frmLogin.Hide
            frmMain.Show
        Else: MsgBox ("Wrong Password")
          txtPassword.Text = ""
          txtPassword.SetFocus
        End If
    ElseIf UCase(txtUsername.Text) <> rsPasswords!UserName Then
        MsgBox ("Wrong Username")
        txtUsername.Text = ""
        txtUsername.SetFocus
    End If
    
End Sub

Private Sub cmdQuit_Click()

    End

End Sub

Private Sub Form_Activate()

    'create connection between DB and program
    Set conDB = New ADODB.Connection
    PathToDB = "Provider = Microsoft.Ace.OLEDB.12.0; Data Source = " & App.Path & "\MyData.accdb"
    conDB.Open PathToDB
    
    Set rsPasswords = New ADODB.Recordset
    rsPasswords.Open "tblPasswords", conDB, adOpenKeyset, adLockOptimistic
    
    'connect recordset to adodc
    adodcPasswords.ConnectionString = PathToDB
    adodcPasswords.CommandType = adCmdTable
    adodcPasswords.RecordSource = "tblPasswords"
    adodcPasswords.Refresh
    
    txtUsername.SetFocus
    
    Call tmrTimeAndDate_Timer

End Sub

Private Sub tmrTimeAndDate_Timer()

    lblDate.Caption = Date
    lblTime.Caption = Time

End Sub
