VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "msadodc.ocx"
Begin VB.Form frmCoaches 
   BackColor       =   &H80000002&
   Caption         =   "Coaches"
   ClientHeight    =   10050
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   13785
   LinkTopic       =   "Form2"
   ScaleHeight     =   11651.98
   ScaleMode       =   0  'User
   ScaleWidth      =   13902.39
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdlogoff2 
      Caption         =   "Log Off"
      Height          =   375
      Left            =   600
      TabIndex        =   2
      Top             =   240
      Width           =   2175
   End
   Begin VB.CommandButton cmdlogoff 
      Caption         =   "Log Off"
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
      Left            =   6600
      TabIndex        =   1
      Top             =   11640
      Width           =   2775
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   8415
      Left            =   240
      TabIndex        =   4
      Top             =   960
      Width           =   13455
      _ExtentX        =   23733
      _ExtentY        =   14843
      _Version        =   393216
      Tabs            =   8
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
      TabPicture(0)   =   "Form2.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Label34(2)"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Label34(3)"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Frame1"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "cmdprintcompetitionentries"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "Frame2"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "cmdprintlcpbs"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "cmdprintscpbs"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).ControlCount=   7
      TabCaption(1)   =   "Search For Swimmer"
      TabPicture(1)   =   "Form2.frx":001C
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Label27"
      Tab(1).Control(0).Enabled=   0   'False
      Tab(1).Control(1)=   "Label28"
      Tab(1).Control(1).Enabled=   0   'False
      Tab(1).Control(2)=   "txtsearchasanumber"
      Tab(1).Control(2).Enabled=   0   'False
      Tab(1).Control(3)=   "Label29"
      Tab(1).Control(3).Enabled=   0   'False
      Tab(1).Control(4)=   "Label30"
      Tab(1).Control(4).Enabled=   0   'False
      Tab(1).Control(5)=   "DataGrid3"
      Tab(1).Control(5).Enabled=   0   'False
      Tab(1).Control(6)=   "Adodc6"
      Tab(1).Control(6).Enabled=   0   'False
      Tab(1).Control(7)=   "txtnamesearch"
      Tab(1).Control(7).Enabled=   0   'False
      Tab(1).Control(8)=   "txtasanumbersearch"
      Tab(1).Control(8).Enabled=   0   'False
      Tab(1).Control(9)=   "txtphonenumbersearch"
      Tab(1).Control(9).Enabled=   0   'False
      Tab(1).Control(10)=   "txtemailsearch"
      Tab(1).Control(10).Enabled=   0   'False
      Tab(1).Control(11)=   "cmdsearch"
      Tab(1).Control(11).Enabled=   0   'False
      Tab(1).Control(12)=   "Picture1"
      Tab(1).Control(12).Enabled=   0   'False
      Tab(1).ControlCount=   13
      TabCaption(2)   =   "Add Swimmer"
      TabPicture(2)   =   "Form2.frx":0038
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Image1"
      Tab(2).Control(0).Enabled=   0   'False
      Tab(2).Control(1)=   "Label7"
      Tab(2).Control(1).Enabled=   0   'False
      Tab(2).Control(2)=   "Label6"
      Tab(2).Control(2).Enabled=   0   'False
      Tab(2).Control(3)=   "Label5"
      Tab(2).Control(3).Enabled=   0   'False
      Tab(2).Control(4)=   "Label4"
      Tab(2).Control(4).Enabled=   0   'False
      Tab(2).Control(5)=   "Label3(0)"
      Tab(2).Control(5).Enabled=   0   'False
      Tab(2).Control(6)=   "Label2(4)"
      Tab(2).Control(6).Enabled=   0   'False
      Tab(2).Control(7)=   "Label2(3)"
      Tab(2).Control(7).Enabled=   0   'False
      Tab(2).Control(8)=   "Label2(1)"
      Tab(2).Control(8).Enabled=   0   'False
      Tab(2).Control(9)=   "Label2(0)"
      Tab(2).Control(9).Enabled=   0   'False
      Tab(2).Control(10)=   "Label42"
      Tab(2).Control(10).Enabled=   0   'False
      Tab(2).Control(11)=   "Label43"
      Tab(2).Control(11).Enabled=   0   'False
      Tab(2).Control(12)=   "Label44"
      Tab(2).Control(12).Enabled=   0   'False
      Tab(2).Control(13)=   "cmbgender"
      Tab(2).Control(13).Enabled=   0   'False
      Tab(2).Control(14)=   "cmbyear"
      Tab(2).Control(14).Enabled=   0   'False
      Tab(2).Control(15)=   "cmbmonth"
      Tab(2).Control(15).Enabled=   0   'False
      Tab(2).Control(16)=   "cmbdate"
      Tab(2).Control(16).Enabled=   0   'False
      Tab(2).Control(17)=   "txtmedicalinjury"
      Tab(2).Control(17).Enabled=   0   'False
      Tab(2).Control(18)=   "txtparentsemail"
      Tab(2).Control(18).Enabled=   0   'False
      Tab(2).Control(19)=   "txtparentsnumber"
      Tab(2).Control(19).Enabled=   0   'False
      Tab(2).Control(20)=   "txtswimmeremail"
      Tab(2).Control(20).Enabled=   0   'False
      Tab(2).Control(21)=   "txtswimmermobilenumber"
      Tab(2).Control(21).Enabled=   0   'False
      Tab(2).Control(22)=   "txtname"
      Tab(2).Control(22).Enabled=   0   'False
      Tab(2).Control(23)=   "txtasanumber"
      Tab(2).Control(23).Enabled=   0   'False
      Tab(2).Control(24)=   "cmdaddswimmer"
      Tab(2).Control(24).Enabled=   0   'False
      Tab(2).ControlCount=   25
      TabCaption(3)   =   "Attendances"
      TabPicture(3)   =   "Form2.frx":0054
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "Frame9"
      Tab(3).Control(0).Enabled=   0   'False
      Tab(3).Control(1)=   "Picture2"
      Tab(3).Control(1).Enabled=   0   'False
      Tab(3).ControlCount=   2
      TabCaption(4)   =   "Competition Entries"
      TabPicture(4)   =   "Form2.frx":0070
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "Frame6"
      Tab(4).Control(0).Enabled=   0   'False
      Tab(4).Control(1)=   "Frame3"
      Tab(4).Control(1).Enabled=   0   'False
      Tab(4).ControlCount=   2
      TabCaption(5)   =   "Personal Bests"
      TabPicture(5)   =   "Form2.frx":008C
      Tab(5).ControlEnabled=   0   'False
      Tab(5).Control(0)=   "Label33"
      Tab(5).Control(0).Enabled=   0   'False
      Tab(5).Control(1)=   "Label34(7)"
      Tab(5).Control(1).Enabled=   0   'False
      Tab(5).Control(2)=   "DataGrid1"
      Tab(5).Control(2).Enabled=   0   'False
      Tab(5).Control(3)=   "Adodc1"
      Tab(5).Control(3).Enabled=   0   'False
      Tab(5).Control(4)=   "cmbswimmer(2)"
      Tab(5).Control(4).Enabled=   0   'False
      Tab(5).Control(5)=   "cmdpbsearch"
      Tab(5).Control(5).Enabled=   0   'False
      Tab(5).ControlCount=   6
      TabCaption(6)   =   "Competition Calander"
      TabPicture(6)   =   "Form2.frx":00A8
      Tab(6).ControlEnabled=   0   'False
      Tab(6).Control(0)=   "Frame8"
      Tab(6).Control(0).Enabled=   0   'False
      Tab(6).Control(1)=   "Frame7"
      Tab(6).Control(1).Enabled=   0   'False
      Tab(6).Control(2)=   "cmdentercomp"
      Tab(6).Control(2).Enabled=   0   'False
      Tab(6).Control(3)=   "txtnoswimmersentered"
      Tab(6).Control(3).Enabled=   0   'False
      Tab(6).Control(4)=   "cmbcompetitionlevel"
      Tab(6).Control(4).Enabled=   0   'False
      Tab(6).Control(5)=   "txtvenue"
      Tab(6).Control(5).Enabled=   0   'False
      Tab(6).Control(6)=   "cmbcourse"
      Tab(6).Control(6).Enabled=   0   'False
      Tab(6).Control(7)=   "cmbendyear"
      Tab(6).Control(7).Enabled=   0   'False
      Tab(6).Control(8)=   "cmbendmonth"
      Tab(6).Control(8).Enabled=   0   'False
      Tab(6).Control(9)=   "cmbenddate"
      Tab(6).Control(9).Enabled=   0   'False
      Tab(6).Control(10)=   "cmbstartyear"
      Tab(6).Control(10).Enabled=   0   'False
      Tab(6).Control(11)=   "cmbstartmonth"
      Tab(6).Control(11).Enabled=   0   'False
      Tab(6).Control(12)=   "cmbstartdate"
      Tab(6).Control(12).Enabled=   0   'False
      Tab(6).Control(13)=   "txtcompetitionnumber"
      Tab(6).Control(13).Enabled=   0   'False
      Tab(6).ControlCount=   14
      TabCaption(7)   =   "View/Edit/Delete Swimmers"
      TabPicture(7)   =   "Form2.frx":00C4
      Tab(7).ControlEnabled=   0   'False
      Tab(7).Control(0)=   "Adodc2"
      Tab(7).Control(0).Enabled=   0   'False
      Tab(7).Control(1)=   "DataGrid2"
      Tab(7).Control(1).Enabled=   0   'False
      Tab(7).Control(2)=   "cmdupdate2"
      Tab(7).Control(2).Enabled=   0   'False
      Tab(7).ControlCount=   3
      Begin VB.CommandButton cmdupdate2 
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
         Height          =   495
         Left            =   -66120
         TabIndex        =   127
         Top             =   7800
         Width           =   2175
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
         TabIndex        =   103
         Top             =   4320
         Width           =   2775
      End
      Begin VB.ComboBox cmbswimmer 
         Height          =   315
         Index           =   2
         Left            =   -72360
         TabIndex        =   102
         Text            =   "cmbswimmer"
         Top             =   3000
         Width           =   3375
      End
      Begin VB.PictureBox Picture1 
         Height          =   1935
         Left            =   -64680
         Picture         =   "Form2.frx":00E0
         ScaleHeight     =   1875
         ScaleWidth      =   1875
         TabIndex        =   99
         Top             =   2760
         Width           =   1935
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
         Left            =   -69360
         TabIndex        =   62
         Top             =   5400
         Width           =   2655
      End
      Begin VB.TextBox txtemailsearch 
         Height          =   375
         Left            =   -69960
         TabIndex        =   61
         Top             =   4560
         Width           =   4215
      End
      Begin VB.TextBox txtphonenumbersearch 
         Height          =   375
         Left            =   -69960
         TabIndex        =   60
         Top             =   3840
         Width           =   4215
      End
      Begin VB.TextBox txtasanumbersearch 
         Height          =   375
         Left            =   -69960
         TabIndex        =   59
         Top             =   2400
         Width           =   4215
      End
      Begin VB.TextBox txtnamesearch 
         Height          =   375
         Left            =   -69960
         TabIndex        =   58
         Top             =   3120
         Width           =   4215
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
         TabIndex        =   49
         Top             =   1560
         Width           =   11415
         Begin VB.ComboBox cmbcompetition 
            Height          =   315
            Index           =   1
            Left            =   2760
            Style           =   2  'Dropdown List
            TabIndex        =   124
            Top             =   1440
            Width           =   2295
         End
         Begin VB.ComboBox cmbevents 
            Height          =   315
            Index           =   1
            Left            =   6360
            Style           =   2  'Dropdown List
            TabIndex        =   121
            Top             =   720
            Width           =   1695
         End
         Begin VB.ComboBox cmbswimmer 
            Height          =   315
            Index           =   3
            Left            =   2760
            TabIndex        =   119
            Top             =   2160
            Width           =   3015
         End
         Begin VB.TextBox txtentryid 
            Height          =   285
            Left            =   2760
            Locked          =   -1  'True
            TabIndex        =   52
            Text            =   "not needed"
            Top             =   720
            Width           =   1575
         End
         Begin VB.TextBox txtracetime 
            Height          =   285
            Left            =   6360
            TabIndex        =   51
            Top             =   1440
            Width           =   1695
         End
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
            TabIndex        =   50
            Top             =   2160
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
            TabIndex        =   57
            Top             =   720
            Width           =   975
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
            TabIndex        =   56
            Top             =   1440
            Width           =   2295
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
            TabIndex        =   55
            Top             =   2160
            Width           =   1095
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
            TabIndex        =   54
            Top             =   720
            Width           =   735
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
            TabIndex        =   53
            Top             =   1440
            Width           =   1215
         End
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
         TabIndex        =   48
         Top             =   6240
         Width           =   1935
      End
      Begin VB.TextBox txtasanumber 
         Height          =   375
         Left            =   -70560
         TabIndex        =   47
         Top             =   1320
         Width           =   2415
      End
      Begin VB.TextBox txtname 
         Height          =   375
         Left            =   -70560
         TabIndex        =   46
         Top             =   1920
         Width           =   2415
      End
      Begin VB.TextBox txtswimmermobilenumber 
         Height          =   375
         Left            =   -70560
         TabIndex        =   45
         Top             =   3960
         Width           =   2415
      End
      Begin VB.TextBox txtswimmeremail 
         Height          =   375
         Left            =   -70560
         TabIndex        =   44
         Top             =   4560
         Width           =   2415
      End
      Begin VB.TextBox txtparentsnumber 
         Height          =   375
         Left            =   -70560
         TabIndex        =   43
         Top             =   5160
         Width           =   2415
      End
      Begin VB.TextBox txtparentsemail 
         Height          =   375
         Left            =   -70560
         TabIndex        =   42
         Top             =   5760
         Width           =   2415
      End
      Begin VB.TextBox txtmedicalinjury 
         Height          =   1575
         Left            =   -70560
         TabIndex        =   41
         Top             =   6360
         Width           =   2415
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
         Left            =   1680
         TabIndex        =   40
         Top             =   1920
         Width           =   1815
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
         Left            =   5640
         TabIndex        =   39
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
         Left            =   720
         TabIndex        =   28
         Top             =   4680
         Width           =   11895
         Begin VB.CommandButton cmdprintpersonaldetails 
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
            TabIndex        =   32
            Top             =   720
            Width           =   1815
         End
         Begin VB.CommandButton cmdprintattendance 
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
            TabIndex        =   31
            Top             =   720
            Width           =   1815
         End
         Begin VB.CommandButton cmdprintperformancegraph 
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
            TabIndex        =   30
            Top             =   2280
            Width           =   1815
         End
         Begin VB.ComboBox cmbevents 
            Height          =   315
            Index           =   0
            Left            =   2880
            TabIndex        =   29
            Top             =   2760
            Width           =   2415
         End
         Begin VB.Frame Frame4 
            Caption         =   "Information"
            Height          =   1215
            Left            =   720
            TabIndex        =   33
            Top             =   480
            Width           =   10815
            Begin VB.ComboBox cmbswimmer 
               Height          =   315
               Index           =   4
               Left            =   2160
               TabIndex        =   120
               Top             =   480
               Width           =   3015
            End
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
               TabIndex        =   34
               Top             =   480
               Width           =   1935
            End
         End
         Begin VB.Frame Frame5 
            Caption         =   "Performance Graphs"
            Height          =   1455
            Left            =   720
            TabIndex        =   35
            Top             =   1920
            Width           =   10815
            Begin VB.ComboBox cmbswimmer 
               Height          =   315
               Index           =   5
               Left            =   2160
               TabIndex        =   122
               Top             =   360
               Width           =   3015
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
               TabIndex        =   37
               Top             =   360
               Width           =   1695
            End
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
               TabIndex        =   36
               Top             =   840
               Width           =   1335
            End
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
            TabIndex        =   38
            Top             =   2760
            Width           =   1455
         End
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
         Left            =   9480
         TabIndex        =   27
         Top             =   1920
         Width           =   1815
      End
      Begin VB.ComboBox cmbdate 
         Height          =   315
         ItemData        =   "Form2.frx":1AAE
         Left            =   -70560
         List            =   "Form2.frx":1B0F
         Style           =   2  'Dropdown List
         TabIndex        =   26
         Top             =   2760
         Width           =   735
      End
      Begin VB.ComboBox cmbmonth 
         Height          =   315
         ItemData        =   "Form2.frx":1B8F
         Left            =   -69840
         List            =   "Form2.frx":1BB7
         Style           =   2  'Dropdown List
         TabIndex        =   25
         Top             =   2760
         Width           =   735
      End
      Begin VB.ComboBox cmbyear 
         Height          =   315
         ItemData        =   "Form2.frx":1BEB
         Left            =   -69120
         List            =   "Form2.frx":1C2E
         Style           =   2  'Dropdown List
         TabIndex        =   24
         Top             =   2760
         Width           =   975
      End
      Begin VB.ComboBox cmbgender 
         Height          =   315
         ItemData        =   "Form2.frx":1CB0
         Left            =   -70560
         List            =   "Form2.frx":1CBA
         Style           =   2  'Dropdown List
         TabIndex        =   23
         Top             =   3360
         Width           =   2415
      End
      Begin VB.TextBox txtcompetitionnumber 
         Height          =   375
         Left            =   -72240
         Locked          =   -1  'True
         TabIndex        =   22
         Text            =   "not needed"
         Top             =   1800
         Width           =   2055
      End
      Begin VB.ComboBox cmbstartdate 
         Height          =   315
         ItemData        =   "Form2.frx":1CCC
         Left            =   -72240
         List            =   "Form2.frx":1D2D
         Style           =   2  'Dropdown List
         TabIndex        =   21
         Top             =   2640
         Width           =   615
      End
      Begin VB.ComboBox cmbstartmonth 
         Height          =   315
         ItemData        =   "Form2.frx":1DAD
         Left            =   -71640
         List            =   "Form2.frx":1DD5
         Style           =   2  'Dropdown List
         TabIndex        =   20
         Top             =   2640
         Width           =   615
      End
      Begin VB.ComboBox cmbstartyear 
         Height          =   315
         ItemData        =   "Form2.frx":1E09
         Left            =   -71040
         List            =   "Form2.frx":1E1F
         Style           =   2  'Dropdown List
         TabIndex        =   19
         Top             =   2640
         Width           =   855
      End
      Begin VB.ComboBox cmbenddate 
         Height          =   315
         ItemData        =   "Form2.frx":1E47
         Left            =   -72240
         List            =   "Form2.frx":1EA8
         Style           =   2  'Dropdown List
         TabIndex        =   18
         Top             =   3480
         Width           =   615
      End
      Begin VB.ComboBox cmbendmonth 
         Height          =   315
         ItemData        =   "Form2.frx":1F28
         Left            =   -71640
         List            =   "Form2.frx":1F50
         Style           =   2  'Dropdown List
         TabIndex        =   17
         Top             =   3480
         Width           =   615
      End
      Begin VB.ComboBox cmbendyear 
         Height          =   315
         ItemData        =   "Form2.frx":1F84
         Left            =   -71040
         List            =   "Form2.frx":1F9A
         Style           =   2  'Dropdown List
         TabIndex        =   16
         Top             =   3480
         Width           =   855
      End
      Begin VB.ComboBox cmbcourse 
         Height          =   315
         ItemData        =   "Form2.frx":1FC2
         Left            =   -68640
         List            =   "Form2.frx":1FCC
         TabIndex        =   15
         Top             =   2640
         Width           =   2055
      End
      Begin VB.TextBox txtvenue 
         Height          =   375
         Left            =   -68640
         TabIndex        =   14
         Top             =   1800
         Width           =   2055
      End
      Begin VB.ComboBox cmbcompetitionlevel 
         Height          =   315
         ItemData        =   "Form2.frx":1FDE
         Left            =   -63840
         List            =   "Form2.frx":1FEB
         TabIndex        =   13
         Top             =   1800
         Width           =   615
      End
      Begin VB.TextBox txtnoswimmersentered 
         Height          =   375
         Left            =   -66480
         TabIndex        =   12
         Top             =   3480
         Width           =   735
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
         TabIndex        =   11
         Top             =   3240
         Width           =   2775
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
         TabIndex        =   8
         Top             =   4680
         Width           =   11415
         Begin VB.ComboBox cmbcompetition 
            Height          =   315
            Index           =   0
            Left            =   3120
            Style           =   2  'Dropdown List
            TabIndex        =   123
            Top             =   600
            Width           =   2775
         End
         Begin VB.CommandButton cmdfindentries 
            Caption         =   "Find Entries"
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
            Left            =   6960
            TabIndex        =   100
            Top             =   600
            Width           =   1935
         End
         Begin MSAdodcLib.Adodc Adodc4 
            Height          =   330
            Left            =   600
            Top             =   3000
            Visible         =   0   'False
            Width           =   2295
            _ExtentX        =   4048
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
            Bindings        =   "Form2.frx":1FF8
            Height          =   1695
            Left            =   1320
            TabIndex        =   9
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
            TabIndex        =   10
            Top             =   600
            Width           =   2535
         End
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
         TabIndex        =   6
         Top             =   4200
         Width           =   12495
         Begin MSAdodcLib.Adodc Adodc5 
            Height          =   375
            Left            =   2040
            Top             =   3240
            Visible         =   0   'False
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
            Bindings        =   "Form2.frx":200D
            Height          =   2535
            Left            =   720
            TabIndex        =   7
            Top             =   480
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
      Begin VB.PictureBox Picture2 
         Height          =   3375
         Left            =   -66360
         Picture         =   "Form2.frx":2022
         ScaleHeight     =   3315
         ScaleWidth      =   3555
         TabIndex        =   5
         Top             =   2640
         Width           =   3615
      End
      Begin MSAdodcLib.Adodc Adodc6 
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
         Caption         =   "Adodc6"
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
         Bindings        =   "Form2.frx":53F2
         Height          =   1815
         Left            =   -74280
         TabIndex        =   63
         Top             =   6360
         Width           =   11055
         _ExtentX        =   19500
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
         Bindings        =   "Form2.frx":5407
         Height          =   5895
         Left            =   -73920
         TabIndex        =   64
         Top             =   1440
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
         Left            =   -73920
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
         Caption         =   "Adodc1"
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
         Bindings        =   "Form2.frx":541C
         Height          =   6495
         Left            =   -67920
         TabIndex        =   65
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
         TabIndex        =   69
         Top             =   1320
         Width           =   12495
         Begin VB.Label Label41 
            Caption         =   "YYYY"
            Height          =   255
            Left            =   3720
            TabIndex        =   115
            Top             =   1920
            Width           =   615
         End
         Begin VB.Label Label40 
            Caption         =   "YYYY"
            Height          =   255
            Left            =   3720
            TabIndex        =   114
            Top             =   1080
            Width           =   495
         End
         Begin VB.Label Label39 
            Caption         =   "MM"
            Height          =   255
            Left            =   3120
            TabIndex        =   113
            Top             =   1920
            Width           =   375
         End
         Begin VB.Label Label38 
            Caption         =   "MM"
            Height          =   255
            Left            =   3120
            TabIndex        =   112
            Top             =   1080
            Width           =   375
         End
         Begin VB.Label Label37 
            Caption         =   "DD"
            Height          =   255
            Left            =   2520
            TabIndex        =   111
            Top             =   1920
            Width           =   255
         End
         Begin VB.Label Label36 
            Caption         =   "DD"
            Height          =   255
            Index           =   0
            Left            =   2520
            TabIndex        =   109
            Top             =   1080
            Width           =   375
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
            TabIndex        =   76
            Top             =   480
            Width           =   2295
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
            TabIndex        =   75
            Top             =   1320
            Width           =   1095
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
            TabIndex        =   74
            Top             =   2160
            Width           =   975
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
            TabIndex        =   73
            Top             =   1320
            Width           =   855
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
            TabIndex        =   72
            Top             =   480
            Width           =   735
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
            TabIndex        =   71
            Top             =   2160
            Width           =   3255
         End
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
            TabIndex        =   70
            Top             =   480
            Width           =   2055
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
         Left            =   720
         TabIndex        =   66
         Top             =   1200
         Width           =   11775
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
            TabIndex        =   68
            Top             =   1920
            Width           =   1815
         End
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
            TabIndex        =   67
            Top             =   1920
            Width           =   1815
         End
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
         Height          =   5175
         Left            =   -74280
         TabIndex        =   77
         Top             =   1440
         Width           =   7095
         Begin VB.TextBox txtdate 
            Height          =   285
            Left            =   3840
            TabIndex        =   125
            Top             =   3480
            Width           =   3015
         End
         Begin VB.TextBox txtattendanceid 
            Height          =   285
            Left            =   3840
            Locked          =   -1  'True
            TabIndex        =   107
            Text            =   "not needed"
            Top             =   720
            Width           =   3015
         End
         Begin VB.TextBox txtdistance 
            Height          =   285
            Left            =   3840
            TabIndex        =   81
            Top             =   2880
            Width           =   3015
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
            TabIndex        =   80
            Top             =   4320
            Width           =   2175
         End
         Begin VB.ComboBox cmbsession 
            Height          =   315
            Left            =   3840
            TabIndex        =   79
            Text            =   "cmbsession"
            Top             =   1440
            Width           =   3015
         End
         Begin VB.ComboBox cmbswimmer 
            Height          =   315
            Index           =   1
            Left            =   3840
            TabIndex        =   78
            Text            =   "cmbswimmer"
            Top             =   2160
            Width           =   3015
         End
         Begin VB.Label Label45 
            Caption         =   "Date"
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
            Left            =   3240
            TabIndex        =   126
            Top             =   3480
            Width           =   495
         End
         Begin VB.Label Label35 
            Caption         =   "Attendance ID"
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
            Left            =   2280
            TabIndex        =   108
            Top             =   720
            Width           =   1575
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
            Left            =   2280
            TabIndex        =   84
            Top             =   1440
            Width           =   1575
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
            Left            =   2160
            TabIndex        =   83
            Top             =   2160
            Width           =   1695
         End
         Begin VB.Label Label26 
            Caption         =   "Enter Distance Swam (meters)"
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
            TabIndex        =   82
            Top             =   2880
            Width           =   3255
         End
      End
      Begin VB.Label Label44 
         Caption         =   "YYYY"
         Height          =   255
         Left            =   -69120
         TabIndex        =   118
         Top             =   2520
         Width           =   855
      End
      Begin VB.Label Label43 
         Caption         =   "MM"
         Height          =   255
         Left            =   -69840
         TabIndex        =   117
         Top             =   2520
         Width           =   615
      End
      Begin VB.Label Label42 
         Caption         =   "DD"
         Height          =   255
         Left            =   -70560
         TabIndex        =   116
         Top             =   2520
         Width           =   495
      End
      Begin VB.Label Label34 
         Caption         =   "need to sort out"
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
         Index           =   7
         Left            =   -74640
         TabIndex        =   106
         Top             =   1440
         Width           =   4335
      End
      Begin VB.Label Label34 
         Caption         =   "need to do buttons"
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
         Index           =   3
         Left            =   840
         TabIndex        =   105
         Top             =   720
         Width           =   8895
      End
      Begin VB.Label Label34 
         Caption         =   "need to to number check for distance, attendance id and todays date"
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
         Index           =   2
         Left            =   2640
         TabIndex        =   104
         Top             =   4200
         Width           =   8895
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
         TabIndex        =   101
         Top             =   3000
         Width           =   1815
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
         TabIndex        =   98
         Top             =   3840
         Width           =   1695
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
         TabIndex        =   96
         Top             =   2400
         Width           =   2895
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
         TabIndex        =   95
         Top             =   3120
         Width           =   855
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
         TabIndex        =   94
         Top             =   1680
         Width           =   5055
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
         TabIndex        =   93
         Top             =   1320
         Width           =   2895
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
         TabIndex        =   92
         Top             =   1920
         Width           =   735
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
         TabIndex        =   91
         Top             =   2760
         Width           =   1455
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
         TabIndex        =   90
         Top             =   3360
         Width           =   855
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
         TabIndex        =   89
         Top             =   3960
         Width           =   2895
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
         TabIndex        =   88
         Top             =   5160
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
         TabIndex        =   87
         Top             =   4560
         Width           =   2655
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
         TabIndex        =   86
         Top             =   5760
         Width           =   2655
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
         TabIndex        =   85
         Top             =   6480
         Width           =   3135
      End
      Begin VB.Image Image1 
         Height          =   3000
         Left            =   -66600
         Picture         =   "Form2.frx":5431
         Top             =   2040
         Width           =   3750
      End
   End
   Begin VB.Label Label36 
      Caption         =   "DD"
      Height          =   255
      Index           =   1
      Left            =   3000
      TabIndex        =   110
      Top             =   4200
      Width           =   375
   End
   Begin VB.Label Label31 
      BackColor       =   &H80000002&
      Caption         =   "Coaches"
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
      Left            =   11640
      TabIndex        =   3
      Top             =   9600
      Width           =   1575
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
      Height          =   615
      Left            =   3480
      TabIndex        =   0
      Top             =   120
      Width           =   8055
   End
End
Attribute VB_Name = "frmCoaches"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdaddattendance_Click()

cmbsession.BackColor = RGB(255, 255, 255)
cmbswimmer(1).BackColor = RGB(255, 255, 255)
txtdistance.BackColor = RGB(255, 255, 255)

If Trim(cmbsession.Text) = "" Then
    MsgBox "Please select a session."
    cmbsession.BackColor = RGB(255, 0, 0)
    cmbsession.SetFocus
    Exit Sub
End If

If Trim(cmbswimmer(1).Text) = "" Then
    MsgBox "Please select a swimmer."
    cmbswimmer(1).BackColor = RGB(255, 0, 0)
    cmbswimmer(1).SetFocus
    Exit Sub
End If

If Trim(txtdistance.Text) = "" Then
    MsgBox "Please enter a distance."
    txtdistance.BackColor = RGB(255, 0, 0)
    txtdistance.SetFocus
    Exit Sub
End If
If txtdistance.Text < 10000 Or txtdistance.Text > 0 Then
    MsgBox "Please enter a distance between 0 and 10 000."
    txtdistance.BackColor = RGB(255, 0, 0)
    txtdistance.SetFocus
    Exit Sub
End If

Set adotables = New ADODB.Recordset

adotables.Open "Select*from [Attendance]", adodata, adOpenKeyset, adLockOptimistic
With adotables
If .RecordCount = 0 Then
    AttendanceID = 1
Else
    .MoveLast
    AttendanceID = ![Attendance ID] + 1
End If
    txtattendanceid = AttendanceID
    .AddNew
    ![Attendance ID] = AttendanceID
    .AddNew
    ![Session] = cmbsession.Text
    ![ASA Registration Number] = Val(Left(cmbswimmer(1).Text, 12))
    ![Distance] = txtdistance.Text
.Update
adodata.Close
MsgBox "Attendance Added"
cmbsession.Text = ""
cmbswimmer(1).Text = ""
txtdistance.Text = ""

End With


End Sub

Private Sub cmdaddswimmer_Click()

txtasanumber.BackColor = RGB(255, 255, 255)
txtname.BackColor = RGB(255, 255, 255)
cmbdate.BackColor = RGB(255, 255, 255)
cmbmonth.BackColor = RGB(255, 255, 255)
cmbyear.BackColor = RGB(255, 255, 255)
cmbgender.BackColor = RGB(255, 255, 255)
txtswimmermobilenumber.BackColor = RGB(255, 255, 255)
txtswimmeremail.BackColor = RGB(255, 255, 255)
txtparentsnumber.BackColor = RGB(255, 255, 255)
txtparentsemail.BackColor = RGB(255, 255, 255)

Set adotables = New ADODB.Recordset

If Trim(txtasanumber.Text) = "" Then
    MsgBox "Please enter an ASA Registration Number."
    txtasanumber.BackColor = RGB(255, 0, 0)
    txtasanumber.SetFocus
    Exit Sub
Else: adotables.Open "Select * from [Personal Details]", adodata, adOpenKeyset, adLockOptimistic
    With adotables
        If txtasanumber.Text = ![ASA Registration Number] Then
            MsgBox "Please enter a unique ASA number"
            txtasanumber.BackColor = RGB(255, 0, 0)
            txtasanumber.SetFocus
            Exit Sub
        End If
    End With

End If





If Trim(txtname.Text) = "" Then
    MsgBox "Please enter swimmer name."
    txtname.SetFocus
    txtname.BackColor = RGB(255, 0, 0)
    Exit Sub
End If

If Trim(cmbdate.Text) = "" Or Trim(cmbmonth.Text) = "" Or Trim(cmbyear.Text) = "" _
    Or Not IsNumeric(cmbdate.Text) Or Not IsNumeric(cmbmonth.Text) Or Not IsNumeric(cmbyear.Text) Then
        MsgBox "Please enter swimmer's date of birth."
        cmbdate.BackColor = RGB(255, 0, 0)
        cmbmonth.BackColor = RGB(255, 0, 0)
        cmbyear.BackColor = RGB(255, 0, 0)
        Exit Sub
End If

DOB = CDate(cmbdate.Text & "/" & cmbmonth & "/" & cmbyear)
If Not IsDate(DOB) Then
    
    MsgBox "Please enter swimmer's date of birth."
    cmbdate.BackColor = RGB(255, 0, 0)
    cmbmonth.BackColor = RGB(255, 0, 0)
    cmbyear.BackColor = RGB(255, 0, 0)
    Exit Sub
End If

If cmbgender.Text = "" Then
    MsgBox "Please enter swimmers gender."
    cmbgender.BackColor = RGB(255, 0, 0)
    cmbgender.SetFocus
    Exit Sub
End If

If txtparentsnumber.Text = "" Then
    MsgBox "Please enter a contact number for the swimmers parents."
    txtparentsnumber.BackColor = RGB(255, 0, 0)
    txtparentsnumber.SetFocus
    Exit Sub
End If



Set adotables = New ADODB.Recordset

adotables.Open "Select*from [Personal Details]", adodata, adOpenKeyset, adLockOptimistic
With adotables
    .AddNew
    ![ASA Registration Number] = txtasanumber.Text
    !Name = txtname.Text
    ![Date of Birth] = DOB
    !Gender = cmbgender.Text
    ![Own Mobile Number] = txtswimmermobilenumber.Text
    ![Parents Number] = txtparentsnumber.Text
    ![Own E-mail Address] = txtswimmeremail.Text
    ![Parents E-mail Address] = txtparentsemail.Text
.Update
adodata.Close
MsgBox "Swimmer Added"
txtasanumber.Text = ""
txtname.Text = ""
cmbdate.Clear
cmbmonth.Clear
cmbyear.Clear
cmbgender.Clear
txtswimmermobilenumber.Text = ""
txtparentsnumber.Text = ""
txtswimmeremail.Text = ""
txtparentsemail.Text = ""
End With

Adodc2.connectionstring = connectionstring
Adodc2.CommandType = adCmdTable
Adodc2.RecordSource = "[Personal Details]"
Adodc2.Refresh



End Sub

Private Sub cmdentercomp_Click()

cmbstartdate.BackColor = RGB(255, 255, 255)
cmbstartmonth.BackColor = RGB(255, 255, 255)
cmbstartyear.BackColor = RGB(255, 255, 255)
cmbenddate.BackColor = RGB(255, 255, 255)
cmbendmonth.BackColor = RGB(255, 255, 255)
cmbendyear.BackColor = RGB(255, 255, 255)
txtvenue.BackColor = RGB(255, 255, 255)
cmbcourse.BackColor = RGB(255, 255, 255)
txtnoswimmersentered.BackColor = RGB(255, 255, 255)
cmbcompetitionlevel.BackColor = RGB(255, 255, 255)

If Trim(txtvenue.Text) = "" Then
    MsgBox "Please enter a venue."
    txtvenue.BackColor = RGB(255, 0, 0)
    txtvenue.SetFocus
    Exit Sub
End If

If Not IsNumeric(Trim(txtnoswimmersentered.Text)) Then
    'what about -?
    MsgBox "Please enter how many swimmers will be entering the event. This can be edited later."
    txtnoswimmersentered.BackColor = RGB(255, 0, 0)
    txtnoswimmersentered.SetFocus
    Exit Sub
End If

If cmbcourse.Text = "" Then
    MsgBox "Please select either short course or long course."
    cmbcourse.BackColor = RGB(255, 0, 0)
    cmbcourse.SetFocus
    Exit Sub
End If

If cmbcompetitionlevel.Text = "" Then
    MsgBox "Please enter a level for the competition."
    cmbcompetitionlevel.BackColor = RGB(255, 0, 0)
    cmbcompetitionlevel.SetFocus
    Exit Sub
End If

If Trim(cmbstartdate.Text) = "" Or Trim(cmbstartmonth.Text) = "" Or Trim(cmbstartyear.Text) = "" _
    Or Not IsNumeric(cmbstartdate.Text) Or Not IsNumeric(cmbstartmonth.Text) Or Not IsNumeric(cmbstartyear.Text) Then
        MsgBox "Please enter a start date."
        cmbstartdate.BackColor = RGB(255, 0, 0)
        cmbstartmonth.BackColor = RGB(255, 0, 0)
        cmbstartyear.BackColor = RGB(255, 0, 0)
        Exit Sub
End If

If Trim(cmbenddate.Text) = "" Or Trim(cmbendmonth.Text) = "" Or Trim(cmbendyear.Text) = "" _
    Or Not IsNumeric(cmbenddate.Text) Or Not IsNumeric(cmbendmonth.Text) Or Not IsNumeric(cmbendyear.Text) Then
        MsgBox "Please enter an end date."
        cmbenddate.BackColor = RGB(255, 0, 0)
        cmbendmonth.BackColor = RGB(255, 0, 0)
        cmbendyear.BackColor = RGB(255, 0, 0)
        Exit Sub
End If

Set adotables = New ADODB.Recordset

adotables.Open "Select * from [Competitions]", adodata, adOpenKeyset, adLockOptimistic
With adotables
If .RecordCount = 0 Then
    CompetitionNumber = 1
Else
    .MoveLast
    CompetitionNumber = ![Competition Number] + 1
End If
    txtcompetitionnumber = CompetitionNumber
    .AddNew
    ![Competition Number] = CompetitionNumber
    ![Start Date] = cmbstartdate.Text & "/" & cmbstartmonth & "/" & cmbstartyear
    ![End Date] = cmbenddate.Text & "/" & cmbendmonth & "/" & cmbendyear
    ![Venue] = txtvenue.Text
    ![Swimmers Entered] = txtnoswimmersentered.Text
    ![Competition Level] = cmbcompetitionlevel.Text
    ![Long/Short Course] = cmbcourse.Text
.Update
adodata.Close
MsgBox "Competition Added"
txtcompetitionnumber.Text = ""
cmbstartdate.Clear
cmbstartmonth.Clear
cmbstartyear.Clear
cmbenddate.Clear
cmbendmonth.Clear
cmbendyear.Clear
txtvenue.Text = ""
cmbcourse.Text = ""
txtnoswimmersentered.Text = ""
cmbcompetitionlevel.Text = ""
End With

Adodc5.connectionstring = connectionstring
Adodc5.CommandType = adCmdTable
Adodc5.RecordSource = "[Competitions]"
Adodc5.Refresh



End Sub

Private Sub cmdenterswimmer_Click()

cmbcompetitionnumber.BackColor = RGB(255, 255, 255)
cmbswimmer2.BackColor = RGB(255, 255, 255)
cmbevents2.BackColor = RGB(255, 255, 255)
txtracetime.BackColor = RGB(255, 255, 255)

If Trim(cmbcompetitionnumber.Text) = "" Then
    MsgBox "Please select a competiton. "
    cmbcompetitionnumber.BackColor = RGB(255, 0, 0)
    cmbcompetitionnumber.SetFocus
    Exit Sub
End If

If Trim(cmbswimmer2.Text) = "" Then
    MsgBox "Please select a swimmer. "
    cmbswimmer2.BackColor = RGB(255, 0, 0)
    cmbswimmer2.SetFocus
    Exit Sub
End If

If Trim(cmbevents2.Text) = "" Then
    MsgBox "Please select an event. "
    cmbevents2.BackColor = RGB(255, 0, 0)
    cmbevents2.SetFocus
    Exit Sub
End If

If Trim(txtracetime.Text) = "" Then
    MsgBox "Please select a time. "
    txtracetime.BackColor = RGB(255, 0, 0)
    txtracetime.SetFocus
    Exit Sub
End If

Set adotables = New ADODB.Recordset

adotables.Open "Select * from [Competition Entries]", adodata, adOpenKeyset, adLockOptimistic
With adotables
    If .RecordCount = 0 Then
        txtentryid.Text = 1
    Else
        .MoveLast
        txtentryid.Text = ![Entry ID] + 1
    End If
    
    .AddNew
    ![Entry ID] = txtentryid.Text
    ![Competition Number] = Left(cmbcompetition.Text, 1)
    ![ASA Registration Number] = Left(cmbswimmer2.Text, 12)
    ![Event] = cmbevents2.Text
    ![Race Time] = #1:01:02 AM#
    'txtracetime.Text
    .Update
    adodata.Close
    MsgBox "Entry Added"
End With


End Sub

Private Sub cmdfindentries_Click()

Set adotables = New ADODB.Recordset

adotables.Open "select * from [Competition Entries] where [Competition Number] = " & Left(cmbcompetition(0).Text, 1) & " Order By [ASA Registration Number]", adodata, adOpenKeyset, adLockOptimistic
Adodc4.connectionstring = connectionstring
Adodc4.CommandType = adCmdUnknown
Adodc4.RecordSource = "select * from [Competition Entries] Order By [ASA Registration Number]"
Adodc4.Refresh
End Sub

Private Sub cmdlogoff_Click()

Me.Hide
Form1.Show

End Sub


Private Sub cmdlogoff2_Click()

Me.Hide
frmLogin.Show

End Sub

Private Sub cmdpbsearch_Click()

Set adotables = New ADODB.Recordset

adotables.Open "select * from [Competition Entries] where [ASA Registration Number] = " & Left(cmbswimmers.Text, 10) & " Order By [Event]", adodata, adOpenKeyset, adLockOptimistic
Adodc4.connectionstring = connectionstring
Adodc4.CommandType = adCmdUnknown
Adodc4.RecordSource = "select * from [Competition Entries] Order By [Event]"
Adodc4.Refresh
End Sub

Private Sub cmdprintcompetitionentries_Click()
[Competition Entries] = Shell("C:\Program Files\Microsoft Office\OFFICE11\msaccess.exe Z:\Computing\U6 Project\swimming.mdb /x [Competition Entries]")
End Sub

Private Sub cmdprintfullsquaddetails_Click()
[Full Squad Details] = Shell("C:\Program Files\Microsoft Office\OFFICE11\msaccess.exe Z:\Computing\U6 Project\swimming.mdb /x [Full Squad Details]")
End Sub

Private Sub cmdprintsquadlist_Click()
[Squad List] = Shell("C:\Program Files\Microsoft Office\OFFICE11\msaccess.exe Z:\Computing\U6 Project\swimming.mdb /x [Squad List]")
End Sub

Private Sub cmdsearch_Click()

    Set adotables = New ADODB.Recordset
    
If Trim(txtasanumbersearch.Text <> "") Then
    selection = "select * from [Personal Details] Where [ASA Registration Number]= '" & txtasanumbersearch.Text & "'"
        If RecordCount = 0 Then
            MsgBox "No swimmer found."
        End If
End If


    
If Trim(txtnamesearch.Text <> "") Then
    selection = "select * from [Personal Details] Where [Name]= '" & txtnamesearch.Text & "'"
    If RecordCount = 0 Then
            MsgBox "No swimmer found."
        End If
End If

    
If Trim(txtphonenumbersearch.Text <> "") Then
    selection = "select * from [Personal Details] Where [Own Mobile Number]= '" & txtphonenumbersearch.Text & "'"
    If RecordCount = 0 Then
        selection = "select * from [Personal Details] Where [Parents Number]= '" & txtphonenumbersearch.Text & "'"
        If RecordCount = 0 Then
            MsgBox "No swimmer found."
        End If
    End If
End If

    
If Trim(txtemailsearch.Text <> "") Then
    selection = "select * from [Personal Details] Where [Own E-mail Address] = '" & txtemailsearch.Text & "'"
    If RecordCount = 0 Then
        selection = "select * from [Personal Details] Where [Parents E-mail Address] = '" & txtemailsearch.Text & "'"
        If RecordCount = 0 Then
            MsgBox "No swimmer found."
        End If
    End If
End If

     'Adodc6.RecordSource = "select * from [Personal Details] Order By [Date of Birth]"
    
adotables.Open selection, adodata, adOpenKeyset, adLockOptimistic
    
Adodc6.connectionstring = connectionstring
Adodc6.CommandType = adCmdUnknown
Adodc6.RecordSource = selection
Adodc6.Refresh
    
txtasanumbersearch = ""
txtnamesearch = ""
txtphonenumbersearch = ""
txtemailsearch = ""
    
End Sub

Private Sub cmdupdate_Click()
Set adotables = New ADODB.Recordset
    
If Trim(cmbcompetition(0).Text <> "") Then
    selection = "select * from [Competitions] Where [Competition Number]= '" & cmbcompetition(0).Text & "'"
End If
End Sub

Private Sub cmdupdate2_Click()
Set adotables = New ADODB.Recordset

Adodc2.connectionstring = connectionstring
Adodc2.CommandType = adCmdTable
Adodc2.RecordSource = "[Personal Details]"
Adodc2.Refresh

End Sub

Private Sub Form_Load()
Dim i As Byte


Call fillsessions
For i = 1 To 5
    Call fillswimmers(i)
Next i

For i = 0 To 1
    Call fillevents(i)
Next i

For i = 0 To 1
    Call fillcompetition(i)
Next i

txtdate = Date



Adodc2.connectionstring = connectionstring
Adodc2.CommandType = adCmdTable
Adodc2.RecordSource = "[Personal Details]"
Adodc2.Refresh

Set adotables = New ADODB.Recordset
adotables.Open "select * from [Competitions] Order By [Competition Number]", adodata, adOpenKeyset, adLockOptimistic
Adodc5.connectionstring = connectionstring
Adodc5.CommandType = adCmdUnknown
Adodc5.RecordSource = "select * from [Competitions] Order By [Competition Number]"
Adodc5.Refresh


End Sub


Private Sub fillsessions()

Set adotables = New ADODB.Recordset

adotables.Open "select * from Sessions", adodata, adOpenKeyset, adLockOptimistic
numberofrecords = adotables.RecordCount
If numberofrecords > 0 Then
    cmbsession.Clear
    cmbsession.Text = ""
    adotables.MoveFirst
For fill = 1 To numberofrecords
    cmbsession.AddItem adotables!Session
    adotables.MoveNext
    Next
cmbsession.ListIndex = 0
End If

End Sub

Private Sub fillswimmers(listno As Byte)

Set adotables = New ADODB.Recordset

adotables.Open "select * from [Personal Details]", adodata, adOpenKeyset, adLockOptimistic
numberofrecords = adotables.RecordCount

If numberofrecords > 0 Then
    cmbswimmer(listno).Clear
    cmbswimmer(listno).Text = ""
    adotables.MoveFirst
For fill = 1 To numberofrecords
    cmbswimmer(listno).AddItem adotables![ASA Registration Number] & "     " & adotables!Name
    adotables.MoveNext
Next
cmbswimmer(listno).ListIndex = 0
End If

'[ASA Registration Number] & "     " & adotables!

End Sub

Private Sub fillevents(listno As Byte)

Set adotables = New ADODB.Recordset

adotables.Open "select * from [Events]", adodata, adOpenKeyset, adLockOptimistic
numberofrecords = adotables.RecordCount

If numberofrecords > 0 Then
    cmbevents(listno).Clear
    
    adotables.MoveFirst
For fill = 1 To numberofrecords
    cmbevents(listno).AddItem adotables![Event]
    adotables.MoveNext
Next
cmbevents(listno).ListIndex = 0
End If


End Sub

Private Sub fillcompetition(listno As Byte)

Set adotables = New ADODB.Recordset

adotables.Open "select * from [Competitions]", adodata, adOpenKeyset, adLockOptimistic
numberofrecords = adotables.RecordCount

If numberofrecords > 0 Then
    cmbcompetition(listno).Clear
    adotables.MoveFirst
For fill = 1 To numberofrecords
    cmbcompetition(listno).AddItem adotables![Competition Number] & "     " & adotables!Venue
    adotables.MoveNext
Next
cmbcompetition(listno).ListIndex = 0
End If


End Sub

Private Sub SSTab1_DblClick()

End Sub
