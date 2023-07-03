VERSION 5.00
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "msdatgrd.ocx"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form frmViewDetails 
   BackColor       =   &H80000002&
   Caption         =   "View Details"
   ClientHeight    =   6315
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8940
   LinkTopic       =   "Form4"
   ScaleHeight     =   6315
   ScaleWidth      =   8940
   StartUpPosition =   3  'Windows Default
   Begin MSAdodcLib.Adodc Adodc3 
      Height          =   330
      Left            =   2040
      Top             =   5880
      Visible         =   0   'False
      Width           =   3375
      _ExtentX        =   5953
      _ExtentY        =   582
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
      Caption         =   ""
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
   Begin MSDataGridLib.DataGrid DataGrid1 
      Bindings        =   "Form4.frx":0000
      Height          =   2535
      Left            =   480
      TabIndex        =   5
      Top             =   1560
      Width           =   7695
      _ExtentX        =   13573
      _ExtentY        =   4471
      _Version        =   393216
      Enabled         =   -1  'True
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
   Begin VB.CommandButton cmdlogoff 
      Caption         =   "Log Off"
      Height          =   375
      Left            =   240
      TabIndex        =   4
      Top             =   5880
      Width           =   1455
   End
   Begin VB.CommandButton cmdviewcompetitions 
      Caption         =   "View Competitions"
      Height          =   735
      Left            =   2880
      TabIndex        =   2
      Top             =   4680
      Width           =   2415
   End
   Begin VB.CommandButton cmdviewcompetitionentries 
      Caption         =   "View Competition Entries"
      Height          =   735
      Left            =   5640
      TabIndex        =   1
      Top             =   4680
      Width           =   2415
   End
   Begin VB.CommandButton cmdviewswimmers 
      Caption         =   "View Swimmers"
      Height          =   735
      Left            =   240
      TabIndex        =   0
      Top             =   4680
      Width           =   2415
   End
   Begin VB.Label Label31 
      BackColor       =   &H80000002&
      Caption         =   "Club Organiser"
      BeginProperty Font 
         Name            =   "Lucida Calligraphy"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   495
      Left            =   6120
      TabIndex        =   6
      Top             =   5880
      Width           =   2775
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackColor       =   &H80000002&
      Caption         =   "City of Hereford Swimming Club"
      BeginProperty Font 
         Name            =   "Lucida Handwriting"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FFFF&
      Height          =   975
      Left            =   360
      TabIndex        =   3
      Top             =   120
      Width           =   7455
   End
End
Attribute VB_Name = "frmViewDetails"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdlogoff_Click()

Me.Hide
Form1.Show

End Sub

Private Sub cmdviewcompetitionentries_Click()

Set adotables = New ADODB.Recordset

adotables.Open "select * from [Competition Entries]", adodata, adOpenKeyset, adLockOptimistic

Adodc3.connectionstring = connectionstring
Adodc3.CommandType = adCmdUnknown
Adodc3.RecordSource = "select * from [Competition Entries]"
Adodc3.Refresh

End Sub

Private Sub cmdviewcompetitions_Click()

Set adotables = New ADODB.Recordset

adotables.Open "select * from [Competitions]", adodata, adOpenKeyset, adLockOptimistic
Adodc3.connectionstring = connectionstring
Adodc3.CommandType = adCmdUnknown
Adodc3.RecordSource = "select * from [Competitions]"
Adodc3.Refresh

End Sub

Private Sub cmdviewswimmers_Click()

Set adotables = New ADODB.Recordset

adotables.Open "select * from [Personal Details] Order By [Date of Birth]", adodata, adOpenKeyset, adLockOptimistic
Adodc3.connectionstring = connectionstring
Adodc3.CommandType = adCmdUnknown
Adodc3.RecordSource = "select * from [Personal Details] Order By [Date of Birth]"
Adodc3.Refresh

End Sub

Private Sub Form_Load()
    
Call cmdviewswimmers_Click

End Sub
