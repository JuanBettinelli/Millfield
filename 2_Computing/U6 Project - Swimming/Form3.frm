VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "msadodc.ocx"
Begin VB.Form Form3 
   BackColor       =   &H80000002&
   Caption         =   "Form3"
   ClientHeight    =   9975
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   13830
   ForeColor       =   &H0080FFFF&
   LinkTopic       =   "Form3"
   ScaleHeight     =   9975
   ScaleWidth      =   13830
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdloggoff3 
      Caption         =   "Log Off"
      Height          =   375
      Left            =   10080
      TabIndex        =   1
      Top             =   240
      Width           =   1575
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   8415
      Left            =   0
      TabIndex        =   3
      Top             =   960
      Width           =   13455
      _ExtentX        =   23733
      _ExtentY        =   14843
      _Version        =   393216
      Tabs            =   8
      Tab             =   7
      TabsPerRow      =   4
      TabHeight       =   520
      BackColor       =   -2147483646
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Tahoma"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "Print Outs"
      TabPicture(0)   =   "Form3.frx":0000
      Tab(0).ControlEnabled=   0   'False
      Tab(0).Control(0)=   "cmdprintscpbs"
      Tab(0).Control(1)=   "cmdprintlcpbs"
      Tab(0).Control(2)=   "Frame2"
      Tab(0).Control(3)=   "cmdprintcompetitionentries"
      Tab(0).Control(4)=   "Frame1"
      Tab(0).ControlCount=   5
      TabCaption(1)   =   "Search For Swimmer"
      TabPicture(1)   =   "Form3.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Label30"
      Tab(1).Control(1)=   "Label29"
      Tab(1).Control(2)=   "txtsearchasanumber"
      Tab(1).Control(3)=   "Label28"
      Tab(1).Control(4)=   "Label27"
      Tab(1).Control(5)=   "DataGrid3"
      Tab(1).Control(6)=   "Adodc3"
      Tab(1).Control(7)=   "Picture1"
      Tab(1).Control(8)=   "cmdsearch"
      Tab(1).Control(9)=   "txtemailsearch"
      Tab(1).Control(10)=   "txtphonenumbersearch"
      Tab(1).Control(11)=   "Text2"
      Tab(1).Control(12)=   "txtsearchname"
      Tab(1).ControlCount=   13
      TabCaption(2)   =   "Add Swimmer"
      TabPicture(2)   =   "Form3.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Label2(0)"
      Tab(2).Control(1)=   "Label2(1)"
      Tab(2).Control(2)=   "Label2(3)"
      Tab(2).Control(3)=   "Label2(4)"
      Tab(2).Control(4)=   "Label3(0)"
      Tab(2).Control(5)=   "Label4"
      Tab(2).Control(6)=   "Label5"
      Tab(2).Control(7)=   "Label6"
      Tab(2).Control(8)=   "Label7"
      Tab(2).Control(9)=   "Image1"
      Tab(2).Control(10)=   "cmdaddswimmer"
      Tab(2).Control(11)=   "txtasanumber"
      Tab(2).Control(12)=   "txtname"
      Tab(2).Control(13)=   "txtswimmermobilenumber"
      Tab(2).Control(14)=   "txtswimmeremail"
      Tab(2).Control(15)=   "txtparentsnumber"
      Tab(2).Control(16)=   "txtparentsemail"
      Tab(2).Control(17)=   "txtmedicalinjury"
      Tab(2).Control(18)=   "cmbdate"
      Tab(2).Control(19)=   "cmbmonth"
      Tab(2).Control(20)=   "cmbyear"
      Tab(2).Control(21)=   "cmbgender"
      Tab(2).ControlCount=   22
      TabCaption(3)   =   "Attendances"
      TabPicture(3)   =   "Form3.frx":0054
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "Frame9"
      Tab(3).Control(1)=   "Picture2"
      Tab(3).ControlCount=   2
      TabCaption(4)   =   "Competition Entries"
      TabPicture(4)   =   "Form3.frx":0070
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "Frame3"
      Tab(4).Control(1)=   "Frame6"
      Tab(4).ControlCount=   2
      TabCaption(5)   =   "Personal Bests"
      TabPicture(5)   =   "Form3.frx":008C
      Tab(5).ControlEnabled=   0   'False
      Tab(5).Control(0)=   "cmbswimmer(2)"
      Tab(5).Control(1)=   "cmdpbsearch"
      Tab(5).Control(2)=   "Adodc1"
      Tab(5).Control(3)=   "DataGrid1"
      Tab(5).Control(4)=   "Label33"
      Tab(5).ControlCount=   5
      TabCaption(6)   =   "Competition Calander"
      TabPicture(6)   =   "Form3.frx":00A8
      Tab(6).ControlEnabled=   0   'False
      Tab(6).Control(0)=   "txtcompetitionnumber"
      Tab(6).Control(1)=   "cmbstartdate"
      Tab(6).Control(2)=   "cmbstartmonth"
      Tab(6).Control(3)=   "cmbstartyear"
      Tab(6).Control(4)=   "cmbenddate"
      Tab(6).Control(5)=   "cmbendmonth"
      Tab(6).Control(6)=   "cmbendyear"
      Tab(6).Control(7)=   "cmbcourse"
      Tab(6).Control(8)=   "txtvenue"
      Tab(6).Control(9)=   "cmbcompetitionlevel"
      Tab(6).Control(10)=   "txtnoswimmersentered"
      Tab(6).Control(11)=   "cmdentercomp"
      Tab(6).Control(12)=   "Frame7"
      Tab(6).Control(13)=   "Frame8"
      Tab(6).ControlCount=   14
      TabCaption(7)   =   "View Swimmers"
      TabPicture(7)   =   "Form3.frx":00C4
      Tab(7).ControlEnabled=   -1  'True
      Tab(7).Control(0)=   "Label34"
      Tab(7).Control(0).Enabled=   0   'False
      Tab(7).Control(1)=   "Adodc2"
      Tab(7).Control(1).Enabled=   0   'False
      Tab(7).Control(2)=   "DataGrid2"
      Tab(7).Control(2).Enabled=   0   'False
      Tab(7).Control(3)=   "cmdupdatetable"
      Tab(7).Control(3).Enabled=   0   'False
      Tab(7).ControlCount=   4
      Begin VB.Frame Frame8 
         Caption         =   "Add New Competition"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2655
         Left            =   -74760
         TabIndex        =   87
         Top             =   1320
         Width           =   12495
         Begin VB.Label Label15 
            Caption         =   "Competition Level"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   8880
            TabIndex        =   94
            Top             =   480
            Width           =   2055
         End
         Begin VB.Label Label16 
            Caption         =   "Number of Swimmers Entered"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   5040
            TabIndex        =   93
            Top             =   2160
            Width           =   3255
         End
         Begin VB.Label Label13 
            Caption         =   "Venue"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   5400
            TabIndex        =   92
            Top             =   480
            Width           =   735
         End
         Begin VB.Label Label14 
            Caption         =   "Course"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   5280
            TabIndex        =   91
            Top             =   1320
            Width           =   855
         End
         Begin VB.Label Label12 
            Caption         =   "End Date"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   1440
            TabIndex        =   90
            Top             =   2160
            Width           =   975
         End
         Begin VB.Label Label11 
            Caption         =   "Start Date"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   1320
            TabIndex        =   89
            Top             =   1320
            Width           =   1095
         End
         Begin VB.Label label10 
            Caption         =   "Competition Number"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   240
            TabIndex        =   88
            Top             =   480
            Width           =   2295
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Full Squad Print Outs"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3495
         Left            =   -74280
         TabIndex        =   84
         Top             =   1200
         Width           =   11775
         Begin VB.CommandButton cmdprintfullsquaddetails 
            Caption         =   "Full Squad Details"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   975
            Left            =   2880
            TabIndex        =   86
            Top             =   1920
            Width           =   1815
         End
         Begin VB.CommandButton cmdprintsquadlist 
            Caption         =   "Squad List"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   975
            Left            =   6840
            TabIndex        =   85
            Top             =   1920
            Width           =   1815
         End
      End
      Begin VB.PictureBox Picture2 
         Height          =   3375
         Left            =   -66360
         Picture         =   "Form3.frx":00E0
         ScaleHeight     =   3315
         ScaleWidth      =   3555
         TabIndex        =   80
         Top             =   2640
         Width           =   3615
      End
      Begin VB.Frame Frame7 
         Caption         =   "View Competitions"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3735
         Left            =   -74760
         TabIndex        =   78
         Top             =   4200
         Width           =   12495
         Begin MSAdodcLib.Adodc Adodc5 
            Height          =   375
            Left            =   2040
            Top             =   3240
            Width           =   3255
            _ExtentX        =   5741
            _ExtentY        =   661
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
            Caption         =   "Adodc5"
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
         Begin MSDataGridLib.DataGrid DataGrid5 
            Height          =   2535
            Left            =   720
            TabIndex        =   79
            Top             =   600
            Width           =   11295
            _ExtentX        =   19923
            _ExtentY        =   4471
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
      End
      Begin VB.Frame Frame6 
         Caption         =   "View Competition Entries"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3495
         Left            =   -73800
         TabIndex        =   73
         Top             =   4680
         Width           =   11415
         Begin VB.ComboBox cmbcompetition 
            Height          =   315
            Left            =   3120
            TabIndex        =   75
            Top             =   600
            Width           =   2655
         End
         Begin VB.CommandButton cmdupdate 
            Caption         =   "Update"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   8160
            TabIndex        =   74
            Top             =   3000
            Width           =   1935
         End
         Begin MSAdodcLib.Adodc Adodc4 
            Height          =   330
            Left            =   7080
            Top             =   600
            Visible         =   0   'False
            Width           =   1815
            _ExtentX        =   3201
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
            Caption         =   "Adodc4"
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
         Begin MSDataGridLib.DataGrid DataGrid4 
            Height          =   1695
            Left            =   1320
            TabIndex        =   76
            Top             =   1200
            Width           =   8775
            _ExtentX        =   15478
            _ExtentY        =   2990
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
         Begin VB.Label Label32 
            Caption         =   "Select Competition"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   960
            TabIndex        =   77
            Top             =   600
            Width           =   2535
         End
      End
      Begin VB.CommandButton cmdentercomp 
         Caption         =   "Enter Competiton"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   -65160
         TabIndex        =   72
         Top             =   3240
         Width           =   2775
      End
      Begin VB.TextBox txtnoswimmersentered 
         Height          =   375
         Left            =   -66480
         TabIndex        =   71
         Top             =   3480
         Width           =   735
      End
      Begin VB.ComboBox cmbcompetitionlevel 
         Height          =   315
         ItemData        =   "Form3.frx":34B0
         Left            =   -63840
         List            =   "Form3.frx":34BD
         TabIndex        =   70
         Top             =   1800
         Width           =   615
      End
      Begin VB.TextBox txtvenue 
         Height          =   375
         Left            =   -68640
         TabIndex        =   69
         Top             =   1800
         Width           =   2055
      End
      Begin VB.ComboBox cmbcourse 
         Height          =   315
         ItemData        =   "Form3.frx":34CA
         Left            =   -68640
         List            =   "Form3.frx":34D4
         TabIndex        =   68
         Top             =   2640
         Width           =   2055
      End
      Begin VB.ComboBox cmbendyear 
         Height          =   315
         ItemData        =   "Form3.frx":34E6
         Left            =   -71040
         List            =   "Form3.frx":34FC
         TabIndex        =   67
         Text            =   "YYYY"
         Top             =   3480
         Width           =   855
      End
      Begin VB.ComboBox cmbendmonth 
         Height          =   315
         ItemData        =   "Form3.frx":3524
         Left            =   -71640
         List            =   "Form3.frx":354C
         TabIndex        =   66
         Text            =   "MM"
         Top             =   3480
         Width           =   615
      End
      Begin VB.ComboBox cmbenddate 
         Height          =   315
         ItemData        =   "Form3.frx":3580
         Left            =   -72240
         List            =   "Form3.frx":35E1
         TabIndex        =   65
         Text            =   "DD"
         Top             =   3480
         Width           =   615
      End
      Begin VB.ComboBox cmbstartyear 
         Height          =   315
         ItemData        =   "Form3.frx":3661
         Left            =   -71040
         List            =   "Form3.frx":3677
         TabIndex        =   64
         Text            =   "YYYY"
         Top             =   2640
         Width           =   855
      End
      Begin VB.ComboBox cmbstartmonth 
         Height          =   315
         ItemData        =   "Form3.frx":369F
         Left            =   -71640
         List            =   "Form3.frx":36C7
         TabIndex        =   63
         Text            =   "MM"
         Top             =   2640
         Width           =   615
      End
      Begin VB.ComboBox cmbstartdate 
         Height          =   315
         ItemData        =   "Form3.frx":36FB
         Left            =   -72240
         List            =   "Form3.frx":375C
         TabIndex        =   62
         Text            =   "DD"
         Top             =   2640
         Width           =   615
      End
      Begin VB.TextBox txtcompetitionnumber 
         Height          =   375
         Left            =   -72240
         TabIndex        =   61
         Top             =   1800
         Width           =   2055
      End
      Begin VB.CommandButton cmdupdatetable 
         Caption         =   "Update Table"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   6360
         TabIndex        =   60
         Top             =   7680
         Width           =   2175
      End
      Begin VB.ComboBox cmbgender 
         Height          =   315
         ItemData        =   "Form3.frx":37DC
         Left            =   -70560
         List            =   "Form3.frx":37E6
         TabIndex        =   59
         Top             =   3360
         Width           =   2415
      End
      Begin VB.ComboBox cmbyear 
         Height          =   315
         ItemData        =   "Form3.frx":37F8
         Left            =   -69120
         List            =   "Form3.frx":383B
         TabIndex        =   58
         Text            =   "YYYY"
         Top             =   2760
         Width           =   975
      End
      Begin VB.ComboBox cmbmonth 
         Height          =   315
         ItemData        =   "Form3.frx":38BD
         Left            =   -69840
         List            =   "Form3.frx":38E5
         TabIndex        =   57
         Text            =   "MM"
         Top             =   2760
         Width           =   735
      End
      Begin VB.ComboBox cmbdate 
         Height          =   315
         ItemData        =   "Form3.frx":3919
         Left            =   -70560
         List            =   "Form3.frx":397A
         TabIndex        =   56
         Text            =   "DD"
         Top             =   2760
         Width           =   735
      End
      Begin VB.CommandButton cmdprintcompetitionentries 
         Caption         =   "Competiton Entries"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   -65520
         TabIndex        =   55
         Top             =   1920
         Width           =   1815
      End
      Begin VB.Frame Frame2 
         Caption         =   "Individual Print Outs"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3615
         Left            =   -74280
         TabIndex        =   42
         Top             =   4680
         Width           =   11895
         Begin VB.Frame Frame5 
            Caption         =   "Performance Graphs"
            Height          =   1455
            Left            =   720
            TabIndex        =   51
            Top             =   1920
            Width           =   10815
            Begin VB.Label Label23 
               Caption         =   "Select Event"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   12
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   375
               Left            =   600
               TabIndex        =   53
               Top             =   840
               Width           =   1335
            End
            Begin VB.Label Label20 
               Caption         =   "Select Swimmer"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   12
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   255
               Left            =   240
               TabIndex        =   52
               Top             =   360
               Width           =   1695
            End
         End
         Begin VB.Frame Frame4 
            Caption         =   "Information"
            Height          =   1215
            Left            =   720
            TabIndex        =   49
            Top             =   600
            Width           =   10815
            Begin VB.Label Label8 
               Caption         =   "Select Swimmer"
               BeginProperty Font 
                  Name            =   "Tahoma"
                  Size            =   12
                  Charset         =   0
                  Weight          =   400
                  Underline       =   0   'False
                  Italic          =   0   'False
                  Strikethrough   =   0   'False
               EndProperty
               Height          =   495
               Left            =   240
               TabIndex        =   50
               Top             =   480
               Width           =   1935
            End
         End
         Begin VB.ComboBox cmbswimmer3 
            Height          =   315
            Left            =   2880
            TabIndex        =   48
            Top             =   2280
            Width           =   3735
         End
         Begin VB.ComboBox cmbevents 
            Height          =   315
            Index           =   0
            Left            =   2880
            TabIndex        =   47
            Top             =   2760
            Width           =   2415
         End
         Begin VB.CommandButton Command3 
            Caption         =   "Performance Graph"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   855
            Left            =   8400
            TabIndex        =   46
            Top             =   2280
            Width           =   1815
         End
         Begin VB.CommandButton Command2 
            Caption         =   "Attendance"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   855
            Left            =   7200
            TabIndex        =   45
            Top             =   840
            Width           =   1815
         End
         Begin VB.CommandButton Command1 
            Caption         =   "Personal Details"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   855
            Left            =   9360
            TabIndex        =   44
            Top             =   840
            Width           =   1815
         End
         Begin VB.ComboBox cmbswimmer 
            Height          =   315
            Index           =   0
            Left            =   2880
            TabIndex        =   43
            Top             =   1080
            Width           =   3735
         End
         Begin VB.Label Label9 
            Caption         =   "Select Event"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   2760
            TabIndex        =   54
            Top             =   2760
            Width           =   1455
         End
      End
      Begin VB.CommandButton cmdprintlcpbs 
         Caption         =   "Long Course PB's"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   -69360
         TabIndex        =   41
         Top             =   1920
         Width           =   1815
      End
      Begin VB.CommandButton cmdprintscpbs 
         Caption         =   "Short Course PB's"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   -73320
         TabIndex        =   40
         Top             =   1920
         Width           =   1815
      End
      Begin VB.TextBox txtmedicalinjury 
         Height          =   1575
         Left            =   -70560
         TabIndex        =   39
         Top             =   6360
         Width           =   2415
      End
      Begin VB.TextBox txtparentsemail 
         Height          =   375
         Left            =   -70560
         TabIndex        =   38
         Top             =   5760
         Width           =   2415
      End
      Begin VB.TextBox txtparentsnumber 
         Height          =   375
         Left            =   -70560
         TabIndex        =   37
         Top             =   5160
         Width           =   2415
      End
      Begin VB.TextBox txtswimmeremail 
         Height          =   375
         Left            =   -70560
         TabIndex        =   36
         Top             =   4560
         Width           =   2415
      End
      Begin VB.TextBox txtswimmermobilenumber 
         Height          =   375
         Left            =   -70560
         TabIndex        =   35
         Top             =   3960
         Width           =   2415
      End
      Begin VB.TextBox txtname 
         Height          =   375
         Left            =   -70560
         TabIndex        =   34
         Top             =   2160
         Width           =   2415
      End
      Begin VB.TextBox txtasanumber 
         Height          =   375
         Left            =   -70560
         TabIndex        =   33
         Top             =   1560
         Width           =   2415
      End
      Begin VB.CommandButton cmdaddswimmer 
         Caption         =   "Add Swimmer"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   975
         Left            =   -65640
         TabIndex        =   32
         Top             =   6300
         Width           =   1935
      End
      Begin VB.Frame Frame3 
         Caption         =   "Add Competition Entry"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3015
         Left            =   -73800
         TabIndex        =   20
         Top             =   1440
         Width           =   11415
         Begin VB.CommandButton cmdenterswimmer 
            Caption         =   "Enter Swimmer"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   8040
            TabIndex        =   26
            Top             =   2160
            Width           =   2295
         End
         Begin VB.ComboBox cmbswimmer2 
            Height          =   315
            Left            =   2760
            TabIndex        =   25
            Top             =   2160
            Width           =   3495
         End
         Begin VB.ComboBox cmbevents2 
            Height          =   315
            Left            =   6360
            TabIndex        =   24
            Top             =   720
            Width           =   1695
         End
         Begin VB.TextBox txtracetime 
            Height          =   285
            Left            =   6360
            TabIndex        =   23
            Top             =   1440
            Width           =   1695
         End
         Begin VB.ComboBox cmbcompetitionnumber 
            Height          =   315
            Left            =   2760
            TabIndex        =   22
            Top             =   1440
            Width           =   1575
         End
         Begin VB.TextBox txtentryid 
            Height          =   285
            Left            =   2760
            Locked          =   -1  'True
            TabIndex        =   21
            Text            =   "not needed"
            Top             =   720
            Width           =   1575
         End
         Begin VB.Label Label22 
            Caption         =   "Race Time"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   5160
            TabIndex        =   31
            Top             =   1440
            Width           =   1215
         End
         Begin VB.Label Label21 
            Caption         =   "Event"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   5640
            TabIndex        =   30
            Top             =   720
            Width           =   735
         End
         Begin VB.Label Label19 
            Caption         =   "Swimmer"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   1440
            TabIndex        =   29
            Top             =   2160
            Width           =   1095
         End
         Begin VB.Label Label18 
            Caption         =   "Competiton Number"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   360
            TabIndex        =   28
            Top             =   1440
            Width           =   2295
         End
         Begin VB.Label Label17 
            Caption         =   "Entry ID"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   1680
            TabIndex        =   27
            Top             =   720
            Width           =   975
         End
      End
      Begin VB.TextBox txtsearchname 
         Height          =   375
         Left            =   -69960
         TabIndex        =   19
         Top             =   3120
         Width           =   4215
      End
      Begin VB.TextBox Text2 
         Height          =   375
         Left            =   -69960
         TabIndex        =   18
         Top             =   2400
         Width           =   4215
      End
      Begin VB.TextBox txtphonenumbersearch 
         Height          =   375
         Left            =   -69960
         TabIndex        =   17
         Top             =   3840
         Width           =   4215
      End
      Begin VB.TextBox txtemailsearch 
         Height          =   375
         Left            =   -69960
         TabIndex        =   16
         Top             =   4560
         Width           =   4215
      End
      Begin VB.CommandButton cmdsearch 
         Caption         =   "Search"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   615
         Left            =   -69240
         TabIndex        =   15
         Top             =   5280
         Width           =   2655
      End
      Begin VB.Frame Frame9 
         Caption         =   "Add Attendance"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3735
         Left            =   -73560
         TabIndex        =   7
         Top             =   2400
         Width           =   6135
         Begin VB.ComboBox cmbswimmer 
            Height          =   315
            Index           =   1
            Left            =   3120
            TabIndex        =   11
            Top             =   1320
            Width           =   2295
         End
         Begin VB.ComboBox cmbsession 
            Height          =   315
            Left            =   3120
            TabIndex        =   10
            Top             =   600
            Width           =   2295
         End
         Begin VB.CommandButton cmdaddattendance 
            Caption         =   "Add"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   2400
            TabIndex        =   9
            Top             =   3000
            Width           =   2175
         End
         Begin VB.TextBox txtdistance 
            Height          =   375
            Left            =   3120
            TabIndex        =   8
            Top             =   2160
            Width           =   2295
         End
         Begin VB.Label Label26 
            Caption         =   "Enter Distance Swam"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   720
            TabIndex        =   14
            Top             =   2160
            Width           =   2415
         End
         Begin VB.Label Label24 
            Caption         =   "Select Swimmer"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   495
            Left            =   1320
            TabIndex        =   13
            Top             =   1320
            Width           =   1695
         End
         Begin VB.Label Label25 
            Caption         =   "Select Session"
            BeginProperty Font 
               Name            =   "Tahoma"
               Size            =   12
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   375
            Left            =   1440
            TabIndex        =   12
            Top             =   600
            Width           =   1575
         End
      End
      Begin VB.PictureBox Picture1 
         Height          =   1935
         Left            =   -64680
         Picture         =   "Form3.frx":39FA
         ScaleHeight     =   1875
         ScaleWidth      =   1875
         TabIndex        =   6
         Top             =   2760
         Width           =   1935
      End
      Begin VB.ComboBox cmbswimmer 
         Height          =   315
         Index           =   2
         Left            =   -72360
         TabIndex        =   5
         Top             =   3000
         Width           =   3375
      End
      Begin VB.CommandButton cmdpbsearch 
         Caption         =   "Find Swimmers Times"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   495
         Left            =   -72600
         TabIndex        =   4
         Top             =   4320
         Width           =   2775
      End
      Begin MSAdodcLib.Adodc Adodc3 
         Height          =   330
         Left            =   -70320
         Top             =   7680
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
         Caption         =   "Adodc3"
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
      Begin MSDataGridLib.DataGrid DataGrid3 
         Height          =   1815
         Left            =   -74280
         TabIndex        =   81
         Top             =   6240
         Width           =   10455
         _ExtentX        =   18441
         _ExtentY        =   3201
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
      Begin MSDataGridLib.DataGrid DataGrid2 
         Bindings        =   "Form3.frx":53C8
         Height          =   5895
         Left            =   1080
         TabIndex        =   82
         Top             =   1320
         Width           =   10935
         _ExtentX        =   19288
         _ExtentY        =   10398
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
      Begin MSAdodcLib.Adodc Adodc2 
         Height          =   495
         Left            =   1080
         Top             =   7680
         Visible         =   0   'False
         Width           =   2520
         _ExtentX        =   4445
         _ExtentY        =   873
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
         Caption         =   "Adodc2"
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
      Begin MSAdodcLib.Adodc Adodc1 
         Height          =   495
         Left            =   -67320
         Top             =   5280
         Visible         =   0   'False
         Width           =   2895
         _ExtentX        =   5106
         _ExtentY        =   873
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
         Bindings        =   "Form3.frx":53DD
         Height          =   6495
         Left            =   -67920
         TabIndex        =   83
         Top             =   1320
         Width           =   5055
         _ExtentX        =   8916
         _ExtentY        =   11456
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
      Begin VB.Label Label34 
         Caption         =   "lock table???"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   375
         Left            =   1440
         TabIndex        =   110
         Top             =   840
         Width           =   8895
      End
      Begin VB.Image Image1 
         Height          =   3000
         Left            =   -66600
         Picture         =   "Form3.frx":53F2
         Top             =   2040
         Width           =   3750
      End
      Begin VB.Label Label7 
         Caption         =   "Injuries/Medical Information"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -73800
         TabIndex        =   109
         Top             =   6480
         Width           =   3135
      End
      Begin VB.Label Label6 
         Caption         =   "Parents E-Mail Address"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -73200
         TabIndex        =   108
         Top             =   5760
         Width           =   2655
      End
      Begin VB.Label Label5 
         Caption         =   "Swimmer E-Mail Address"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -73440
         TabIndex        =   107
         Top             =   4560
         Width           =   2655
      End
      Begin VB.Label Label4 
         Caption         =   "Parents Contact Number"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -73320
         TabIndex        =   106
         Top             =   5160
         Width           =   2655
      End
      Begin VB.Label Label3 
         Caption         =   "Swimmers Mobile Number"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   0
         Left            =   -73560
         TabIndex        =   105
         Top             =   3960
         Width           =   2895
      End
      Begin VB.Label Label2 
         Caption         =   "Gender"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   4
         Left            =   -71520
         TabIndex        =   104
         Top             =   3360
         Width           =   855
      End
      Begin VB.Label Label2 
         Caption         =   "Date Of Birth"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   3
         Left            =   -72120
         TabIndex        =   103
         Top             =   2760
         Width           =   1455
      End
      Begin VB.Label Label2 
         Caption         =   "Name"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   1
         Left            =   -71400
         TabIndex        =   102
         Top             =   2160
         Width           =   735
      End
      Begin VB.Label Label2 
         Caption         =   "ASA Registration Number"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Index           =   0
         Left            =   -73440
         TabIndex        =   101
         Top             =   1560
         Width           =   2895
      End
      Begin VB.Label Label27 
         Caption         =   "Enter Details Into One of the Following:"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   14.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -74520
         TabIndex        =   100
         Top             =   1680
         Width           =   5055
      End
      Begin VB.Label Label28 
         Caption         =   "Name"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -70800
         TabIndex        =   99
         Top             =   3120
         Width           =   855
      End
      Begin VB.Label txtsearchasanumber 
         Caption         =   "ASA Registration Number"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -72840
         TabIndex        =   98
         Top             =   2400
         Width           =   2895
      End
      Begin VB.Label Label29 
         Caption         =   "Email Address"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -71640
         TabIndex        =   97
         Top             =   4560
         Width           =   1695
      End
      Begin VB.Label Label30 
         Caption         =   "Phone Number"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -71640
         TabIndex        =   96
         Top             =   3840
         Width           =   1695
      End
      Begin VB.Label Label33 
         Caption         =   "Select Swimmer"
         BeginProperty Font 
            Name            =   "Tahoma"
            Size            =   12
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   -74280
         TabIndex        =   95
         Top             =   3000
         Width           =   1815
      End
   End
   Begin VB.Label Label31 
      BackColor       =   &H80000002&
      Caption         =   "Assistant Coaches"
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
      Height          =   375
      Left            =   10440
      TabIndex        =   2
      Top             =   9480
      Width           =   3375
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
      Height          =   735
      Left            =   360
      TabIndex        =   0
      Top             =   240
      Width           =   9255
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdloggoff3_Click()
Me.Hide
Form1.Show
End Sub

Private Sub Form_Load()
Call fillevents
Call fillswimmer
Call fillcompetitions
Call fillswimmer2
Call fillevents2

cmbswimmer(0) = ""
cmbswimmer2 = ""
cmbevents(0) = ""
cmbevents2 = ""
cmbcompetitionnumber = ""

Adodc1.connectionstring = connectionstring
Adodc1.CommandType = adCmdTable
Adodc1.RecordSource = "[Personal Bests]"
Adodc1.Refresh

Adodc2.connectionstring = connectionstring
Adodc2.CommandType = adCmdTable
Adodc2.RecordSource = "[Personal Details]"
Adodc2.Refresh
End Sub

Public Sub fillcompetitions()

adodata.Open connectionstring
adotables.Open "select * from [Competitions]", adodata, adOpenKeyset, adLockOptimistic
numberofrecords = adotables.RecordCount
If numberofrecords > 0 Then
    cmbcompetitionnumber.Clear
    cmbcompetitionnumber.Text = ""
    adotables.MoveFirst
For fill = 1 To numberofrecords
    cmbcompetitionnumber.AddItem adotables![Competition Number] & "     " & adotables!Venue
    adotables.MoveNext
    Next
cmbcompetitionnumber.ListIndex = 0
End If

adodata.Close

End Sub
Public Sub fillswimmer()
adodata.Open connectionstring
adotables.Open "select * from [Personal Details]", adodata, adOpenKeyset, adLockOptimistic
numberofrecords = adotables.RecordCount
If numberofrecords > 0 Then
    cmbswimmer(0).Clear
    cmbswimmer(0).Text = ""
    adotables.MoveFirst
For fill = 1 To numberofrecords
    cmbswimmer(0).AddItem adotables![ASA Registration Number] & "     " & adotables!Name
    adotables.MoveNext
    Next
cmbswimmer(0).ListIndex = 0
End If

adodata.Close

End Sub
Public Sub fillevents()
adodata.Open connectionstring
adotables.Open "select * from Events", adodata, adOpenKeyset, adLockOptimistic
numberofrecords = adotables.RecordCount
If numberofrecords > 0 Then
    cmbevents(0).Clear
    cmbevents(0).Text = ""
    adotables.MoveFirst
For fill = 1 To numberofrecords
    cmbevents(0).AddItem adotables!Event
    adotables.MoveNext
    Next
cmbevents(0).ListIndex = 0
End If

adodata.Close

End Sub

End Sub
