VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00FFFFFF&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   7275
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10380
   LinkTopic       =   "Form1"
   ScaleHeight     =   7275
   ScaleWidth      =   10380
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton cmdAtSign 
      Caption         =   "@"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   360
      TabIndex        =   6
      Top             =   1080
      Width           =   255
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "Exit"
      Height          =   375
      Left            =   8160
      TabIndex        =   5
      Top             =   6720
      Width           =   1695
   End
   Begin VB.OptionButton optMoveSouth 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Option1"
      Height          =   195
      Left            =   8760
      TabIndex        =   4
      Top             =   5040
      Width           =   200
   End
   Begin VB.OptionButton optMoveWest 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Option1"
      Height          =   195
      Left            =   8160
      TabIndex        =   3
      Top             =   4560
      Width           =   200
   End
   Begin VB.OptionButton optMoveEast 
      BackColor       =   &H00C0C0C0&
      Caption         =   "Option1"
      Height          =   195
      Left            =   9360
      TabIndex        =   2
      Top             =   4560
      Width           =   200
   End
   Begin VB.OptionButton optMoveNorth 
      BackColor       =   &H8000000B&
      Caption         =   "Option1"
      Height          =   195
      Left            =   8760
      TabIndex        =   1
      Top             =   4200
      Width           =   200
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   131
      Left            =   7320
      Picture         =   "Form1.frx":0000
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   130
      Left            =   6840
      Picture         =   "Form1.frx":0582
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   129
      Left            =   6360
      Picture         =   "Form1.frx":0B04
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   128
      Left            =   5880
      Picture         =   "Form1.frx":1086
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   127
      Left            =   5400
      Picture         =   "Form1.frx":1608
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   126
      Left            =   4920
      Picture         =   "Form1.frx":1B8A
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   125
      Left            =   4440
      Picture         =   "Form1.frx":210C
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   124
      Left            =   3960
      Picture         =   "Form1.frx":268E
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   123
      Left            =   3480
      Picture         =   "Form1.frx":2C10
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   122
      Left            =   3000
      Picture         =   "Form1.frx":3192
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   121
      Left            =   2520
      Picture         =   "Form1.frx":3714
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   120
      Left            =   2040
      Picture         =   "Form1.frx":3C96
      Stretch         =   -1  'True
      Top             =   6000
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   119
      Left            =   7320
      Picture         =   "Form1.frx":4218
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   118
      Left            =   6840
      Picture         =   "Form1.frx":479A
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   117
      Left            =   6360
      Picture         =   "Form1.frx":4D1C
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   116
      Left            =   5880
      Picture         =   "Form1.frx":529E
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   115
      Left            =   5400
      Picture         =   "Form1.frx":5820
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   114
      Left            =   4920
      Picture         =   "Form1.frx":5DA2
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   113
      Left            =   4440
      Picture         =   "Form1.frx":6324
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   112
      Left            =   3960
      Picture         =   "Form1.frx":68A6
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   111
      Left            =   3480
      Picture         =   "Form1.frx":6E28
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   110
      Left            =   3000
      Picture         =   "Form1.frx":73AA
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   109
      Left            =   2520
      Picture         =   "Form1.frx":792C
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   108
      Left            =   2040
      Picture         =   "Form1.frx":7EAE
      Stretch         =   -1  'True
      Top             =   5520
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   107
      Left            =   7320
      Picture         =   "Form1.frx":8430
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   106
      Left            =   6840
      Picture         =   "Form1.frx":89B2
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   105
      Left            =   6360
      Picture         =   "Form1.frx":8F34
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   104
      Left            =   5880
      Picture         =   "Form1.frx":94B6
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   103
      Left            =   5400
      Picture         =   "Form1.frx":9A38
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   102
      Left            =   4920
      Picture         =   "Form1.frx":9FBA
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   101
      Left            =   4440
      Picture         =   "Form1.frx":A53C
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   100
      Left            =   3960
      Picture         =   "Form1.frx":AABE
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   99
      Left            =   3480
      Picture         =   "Form1.frx":B040
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   98
      Left            =   3000
      Picture         =   "Form1.frx":B5C2
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   97
      Left            =   2520
      Picture         =   "Form1.frx":BB44
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   96
      Left            =   2040
      Picture         =   "Form1.frx":C0C6
      Stretch         =   -1  'True
      Top             =   5040
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   95
      Left            =   7320
      Picture         =   "Form1.frx":C648
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   94
      Left            =   6840
      Picture         =   "Form1.frx":CBCA
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   93
      Left            =   6360
      Picture         =   "Form1.frx":D14C
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   92
      Left            =   5880
      Picture         =   "Form1.frx":D6CE
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   91
      Left            =   5400
      Picture         =   "Form1.frx":DC50
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   90
      Left            =   4920
      Picture         =   "Form1.frx":E1D2
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   89
      Left            =   4440
      Picture         =   "Form1.frx":E754
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   88
      Left            =   3960
      Picture         =   "Form1.frx":ECD6
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   87
      Left            =   3480
      Picture         =   "Form1.frx":F258
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   86
      Left            =   3000
      Picture         =   "Form1.frx":F7DA
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   85
      Left            =   2520
      Picture         =   "Form1.frx":FD5C
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   84
      Left            =   2040
      Picture         =   "Form1.frx":102DE
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   83
      Left            =   7320
      Picture         =   "Form1.frx":10860
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   82
      Left            =   6840
      Picture         =   "Form1.frx":10DE2
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   81
      Left            =   6360
      Picture         =   "Form1.frx":11364
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   80
      Left            =   5880
      Picture         =   "Form1.frx":118E6
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   79
      Left            =   5400
      Picture         =   "Form1.frx":11E68
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   78
      Left            =   4920
      Picture         =   "Form1.frx":123EA
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   77
      Left            =   4440
      Picture         =   "Form1.frx":1296C
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   76
      Left            =   3960
      Picture         =   "Form1.frx":12EEE
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   75
      Left            =   3480
      Picture         =   "Form1.frx":13470
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   74
      Left            =   3000
      Picture         =   "Form1.frx":139F2
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   73
      Left            =   2520
      Picture         =   "Form1.frx":13F74
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   72
      Left            =   2040
      Picture         =   "Form1.frx":144F6
      Stretch         =   -1  'True
      Top             =   4080
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   71
      Left            =   7320
      Picture         =   "Form1.frx":14A78
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   70
      Left            =   6840
      Picture         =   "Form1.frx":14FFA
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   69
      Left            =   6360
      Picture         =   "Form1.frx":1557C
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   68
      Left            =   5880
      Picture         =   "Form1.frx":15AFE
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   67
      Left            =   5400
      Picture         =   "Form1.frx":16080
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   66
      Left            =   4920
      Picture         =   "Form1.frx":16602
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   65
      Left            =   4440
      Picture         =   "Form1.frx":16B84
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   64
      Left            =   3960
      Picture         =   "Form1.frx":17106
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   63
      Left            =   3480
      Picture         =   "Form1.frx":17688
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   62
      Left            =   3000
      Picture         =   "Form1.frx":17C0A
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   61
      Left            =   2520
      Picture         =   "Form1.frx":1818C
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   60
      Left            =   2040
      Picture         =   "Form1.frx":1870E
      Stretch         =   -1  'True
      Top             =   3600
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   59
      Left            =   7320
      Picture         =   "Form1.frx":18C90
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   58
      Left            =   6840
      Picture         =   "Form1.frx":19212
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   57
      Left            =   6360
      Picture         =   "Form1.frx":19794
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   56
      Left            =   5880
      Picture         =   "Form1.frx":19D16
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   55
      Left            =   5400
      Picture         =   "Form1.frx":1A298
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   54
      Left            =   4920
      Picture         =   "Form1.frx":1A81A
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   53
      Left            =   4440
      Picture         =   "Form1.frx":1AD9C
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   52
      Left            =   3960
      Picture         =   "Form1.frx":1B31E
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   51
      Left            =   3480
      Picture         =   "Form1.frx":1B8A0
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   50
      Left            =   3000
      Picture         =   "Form1.frx":1BE22
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   49
      Left            =   2520
      Picture         =   "Form1.frx":1C3A4
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   48
      Left            =   2040
      Picture         =   "Form1.frx":1C926
      Stretch         =   -1  'True
      Top             =   3120
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   47
      Left            =   7320
      Picture         =   "Form1.frx":1CEA8
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   46
      Left            =   6840
      Picture         =   "Form1.frx":1D42A
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   45
      Left            =   6360
      Picture         =   "Form1.frx":1D9AC
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   44
      Left            =   5880
      Picture         =   "Form1.frx":1DF2E
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   43
      Left            =   5400
      Picture         =   "Form1.frx":1E4B0
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   42
      Left            =   4920
      Picture         =   "Form1.frx":1EA32
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   41
      Left            =   4440
      Picture         =   "Form1.frx":1EFB4
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   40
      Left            =   3960
      Picture         =   "Form1.frx":1F536
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   39
      Left            =   3480
      Picture         =   "Form1.frx":1FAB8
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   38
      Left            =   3000
      Picture         =   "Form1.frx":2003A
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   37
      Left            =   2520
      Picture         =   "Form1.frx":205BC
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   36
      Left            =   2040
      Picture         =   "Form1.frx":20B3E
      Stretch         =   -1  'True
      Top             =   2640
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   35
      Left            =   7320
      Picture         =   "Form1.frx":210C0
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   34
      Left            =   6840
      Picture         =   "Form1.frx":21642
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   33
      Left            =   6360
      Picture         =   "Form1.frx":21BC4
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   32
      Left            =   5880
      Picture         =   "Form1.frx":22146
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   31
      Left            =   5400
      Picture         =   "Form1.frx":226C8
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   30
      Left            =   4920
      Picture         =   "Form1.frx":22C4A
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   29
      Left            =   4440
      Picture         =   "Form1.frx":231CC
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   28
      Left            =   3960
      Picture         =   "Form1.frx":2374E
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   27
      Left            =   3480
      Picture         =   "Form1.frx":23CD0
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   26
      Left            =   3000
      Picture         =   "Form1.frx":24252
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   25
      Left            =   2520
      Picture         =   "Form1.frx":247D4
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   24
      Left            =   2040
      Picture         =   "Form1.frx":24D56
      Stretch         =   -1  'True
      Top             =   2160
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   23
      Left            =   7320
      Picture         =   "Form1.frx":252D8
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   22
      Left            =   6840
      Picture         =   "Form1.frx":2585A
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   21
      Left            =   6360
      Picture         =   "Form1.frx":25DDC
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   20
      Left            =   5880
      Picture         =   "Form1.frx":2635E
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   19
      Left            =   5400
      Picture         =   "Form1.frx":268E0
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   18
      Left            =   4920
      Picture         =   "Form1.frx":26E62
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   17
      Left            =   4440
      Picture         =   "Form1.frx":273E4
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   16
      Left            =   3960
      Picture         =   "Form1.frx":27966
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   15
      Left            =   3480
      Picture         =   "Form1.frx":27EE8
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   14
      Left            =   3000
      Picture         =   "Form1.frx":2846A
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   13
      Left            =   2520
      Picture         =   "Form1.frx":289EC
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   195
   End
   Begin VB.Image imgBlueDot 
      Height          =   195
      Index           =   12
      Left            =   2040
      Picture         =   "Form1.frx":28F6E
      Stretch         =   -1  'True
      Top             =   1680
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   131
      Left            =   7080
      Picture         =   "Form1.frx":294F0
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   120
      Left            =   7080
      Picture         =   "Form1.frx":29898
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   109
      Left            =   7080
      Picture         =   "Form1.frx":29C40
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   98
      Left            =   7080
      Picture         =   "Form1.frx":29FE8
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   87
      Left            =   7080
      Picture         =   "Form1.frx":2A390
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   76
      Left            =   7080
      Picture         =   "Form1.frx":2A738
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   65
      Left            =   7080
      Picture         =   "Form1.frx":2AAE0
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   54
      Left            =   7080
      Picture         =   "Form1.frx":2AE88
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   43
      Left            =   7080
      Picture         =   "Form1.frx":2B230
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   32
      Left            =   7080
      Picture         =   "Form1.frx":2B5D8
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   21
      Left            =   7080
      Picture         =   "Form1.frx":2B980
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   10
      Left            =   7080
      Picture         =   "Form1.frx":2BD28
      Stretch         =   -1  'True
      Top             =   960
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   0
      Left            =   2280
      Picture         =   "Form1.frx":2C0D0
      Stretch         =   -1  'True
      Top             =   960
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   130
      Left            =   6600
      Picture         =   "Form1.frx":2C478
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   129
      Left            =   6120
      Picture         =   "Form1.frx":2C820
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   128
      Left            =   5640
      Picture         =   "Form1.frx":2CBC8
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   127
      Left            =   5160
      Picture         =   "Form1.frx":2CF70
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   126
      Left            =   4680
      Picture         =   "Form1.frx":2D318
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   125
      Left            =   4200
      Picture         =   "Form1.frx":2D6C0
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   124
      Left            =   3720
      Picture         =   "Form1.frx":2DA68
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   123
      Left            =   3240
      Picture         =   "Form1.frx":2DE10
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   122
      Left            =   2760
      Picture         =   "Form1.frx":2E1B8
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   121
      Left            =   2280
      Picture         =   "Form1.frx":2E560
      Stretch         =   -1  'True
      Top             =   6240
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   119
      Left            =   6600
      Picture         =   "Form1.frx":2E908
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   118
      Left            =   6120
      Picture         =   "Form1.frx":2ECB0
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   117
      Left            =   5640
      Picture         =   "Form1.frx":2F058
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   116
      Left            =   5160
      Picture         =   "Form1.frx":2F400
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   115
      Left            =   4680
      Picture         =   "Form1.frx":2F7A8
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   114
      Left            =   4200
      Picture         =   "Form1.frx":2FB50
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   113
      Left            =   3720
      Picture         =   "Form1.frx":2FEF8
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   112
      Left            =   3240
      Picture         =   "Form1.frx":302A0
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   111
      Left            =   2760
      Picture         =   "Form1.frx":30648
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   110
      Left            =   2280
      Picture         =   "Form1.frx":309F0
      Stretch         =   -1  'True
      Top             =   5760
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   108
      Left            =   6600
      Picture         =   "Form1.frx":30D98
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   107
      Left            =   6120
      Picture         =   "Form1.frx":31140
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   106
      Left            =   5640
      Picture         =   "Form1.frx":314E8
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   105
      Left            =   5160
      Picture         =   "Form1.frx":31890
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   104
      Left            =   4680
      Picture         =   "Form1.frx":31C38
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   103
      Left            =   4200
      Picture         =   "Form1.frx":31FE0
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   102
      Left            =   3720
      Picture         =   "Form1.frx":32388
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   101
      Left            =   3240
      Picture         =   "Form1.frx":32730
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   100
      Left            =   2760
      Picture         =   "Form1.frx":32AD8
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   99
      Left            =   2280
      Picture         =   "Form1.frx":32E80
      Stretch         =   -1  'True
      Top             =   5280
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   97
      Left            =   6600
      Picture         =   "Form1.frx":33228
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   96
      Left            =   6120
      Picture         =   "Form1.frx":335D0
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   95
      Left            =   5640
      Picture         =   "Form1.frx":33978
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   94
      Left            =   5160
      Picture         =   "Form1.frx":33D20
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   93
      Left            =   4680
      Picture         =   "Form1.frx":340C8
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   92
      Left            =   4200
      Picture         =   "Form1.frx":34470
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   91
      Left            =   3720
      Picture         =   "Form1.frx":34818
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   90
      Left            =   3240
      Picture         =   "Form1.frx":34BC0
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   89
      Left            =   2760
      Picture         =   "Form1.frx":34F68
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   88
      Left            =   2280
      Picture         =   "Form1.frx":35310
      Stretch         =   -1  'True
      Top             =   4800
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   86
      Left            =   6600
      Picture         =   "Form1.frx":356B8
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   85
      Left            =   6120
      Picture         =   "Form1.frx":35A60
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   84
      Left            =   5640
      Picture         =   "Form1.frx":35E08
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   83
      Left            =   5160
      Picture         =   "Form1.frx":361B0
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   82
      Left            =   4680
      Picture         =   "Form1.frx":36558
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   81
      Left            =   4200
      Picture         =   "Form1.frx":36900
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   80
      Left            =   3720
      Picture         =   "Form1.frx":36CA8
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   79
      Left            =   3240
      Picture         =   "Form1.frx":37050
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   78
      Left            =   2760
      Picture         =   "Form1.frx":373F8
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   77
      Left            =   2280
      Picture         =   "Form1.frx":377A0
      Stretch         =   -1  'True
      Top             =   4320
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   75
      Left            =   6600
      Picture         =   "Form1.frx":37B48
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   74
      Left            =   6120
      Picture         =   "Form1.frx":37EF0
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   73
      Left            =   5640
      Picture         =   "Form1.frx":38298
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   72
      Left            =   5160
      Picture         =   "Form1.frx":38640
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   71
      Left            =   4680
      Picture         =   "Form1.frx":389E8
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   70
      Left            =   4200
      Picture         =   "Form1.frx":38D90
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   69
      Left            =   3720
      Picture         =   "Form1.frx":39138
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   68
      Left            =   3240
      Picture         =   "Form1.frx":394E0
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   67
      Left            =   2760
      Picture         =   "Form1.frx":39888
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   66
      Left            =   2280
      Picture         =   "Form1.frx":39C30
      Stretch         =   -1  'True
      Top             =   3840
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   64
      Left            =   6600
      Picture         =   "Form1.frx":39FD8
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   63
      Left            =   6120
      Picture         =   "Form1.frx":3A380
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   62
      Left            =   5640
      Picture         =   "Form1.frx":3A728
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   61
      Left            =   5160
      Picture         =   "Form1.frx":3AAD0
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   60
      Left            =   4680
      Picture         =   "Form1.frx":3AE78
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   59
      Left            =   4200
      Picture         =   "Form1.frx":3B220
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   58
      Left            =   3720
      Picture         =   "Form1.frx":3B5C8
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   57
      Left            =   3240
      Picture         =   "Form1.frx":3B970
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   56
      Left            =   2760
      Picture         =   "Form1.frx":3BD18
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   55
      Left            =   2280
      Picture         =   "Form1.frx":3C0C0
      Stretch         =   -1  'True
      Top             =   3360
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   53
      Left            =   6600
      Picture         =   "Form1.frx":3C468
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   52
      Left            =   6120
      Picture         =   "Form1.frx":3C810
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   51
      Left            =   5640
      Picture         =   "Form1.frx":3CBB8
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   50
      Left            =   5160
      Picture         =   "Form1.frx":3CF60
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   49
      Left            =   4680
      Picture         =   "Form1.frx":3D308
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   48
      Left            =   4200
      Picture         =   "Form1.frx":3D6B0
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   47
      Left            =   3720
      Picture         =   "Form1.frx":3DA58
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   46
      Left            =   3240
      Picture         =   "Form1.frx":3DE00
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   45
      Left            =   2760
      Picture         =   "Form1.frx":3E1A8
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   44
      Left            =   2280
      Picture         =   "Form1.frx":3E550
      Stretch         =   -1  'True
      Top             =   2880
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   42
      Left            =   6600
      Picture         =   "Form1.frx":3E8F8
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   41
      Left            =   6120
      Picture         =   "Form1.frx":3ECA0
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   40
      Left            =   5640
      Picture         =   "Form1.frx":3F048
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   39
      Left            =   5160
      Picture         =   "Form1.frx":3F3F0
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   38
      Left            =   4680
      Picture         =   "Form1.frx":3F798
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   37
      Left            =   4200
      Picture         =   "Form1.frx":3FB40
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   36
      Left            =   3720
      Picture         =   "Form1.frx":3FEE8
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   35
      Left            =   3240
      Picture         =   "Form1.frx":40290
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   34
      Left            =   2760
      Picture         =   "Form1.frx":40638
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   33
      Left            =   2280
      Picture         =   "Form1.frx":409E0
      Stretch         =   -1  'True
      Top             =   2400
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   31
      Left            =   6600
      Picture         =   "Form1.frx":40D88
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   30
      Left            =   6120
      Picture         =   "Form1.frx":41130
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   29
      Left            =   5640
      Picture         =   "Form1.frx":414D8
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   28
      Left            =   5160
      Picture         =   "Form1.frx":41880
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   27
      Left            =   4680
      Picture         =   "Form1.frx":41C28
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   26
      Left            =   4200
      Picture         =   "Form1.frx":41FD0
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   25
      Left            =   3720
      Picture         =   "Form1.frx":42378
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   24
      Left            =   3240
      Picture         =   "Form1.frx":42720
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   23
      Left            =   2760
      Picture         =   "Form1.frx":42AC8
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   22
      Left            =   2280
      Picture         =   "Form1.frx":42E70
      Stretch         =   -1  'True
      Top             =   1920
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   20
      Left            =   6600
      Picture         =   "Form1.frx":43218
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   19
      Left            =   6120
      Picture         =   "Form1.frx":435C0
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   18
      Left            =   5640
      Picture         =   "Form1.frx":43968
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   17
      Left            =   5160
      Picture         =   "Form1.frx":43D10
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   16
      Left            =   4680
      Picture         =   "Form1.frx":440B8
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   15
      Left            =   4200
      Picture         =   "Form1.frx":44460
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   14
      Left            =   3720
      Picture         =   "Form1.frx":44808
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   13
      Left            =   3240
      Picture         =   "Form1.frx":44BB0
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   12
      Left            =   2760
      Picture         =   "Form1.frx":44F58
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   195
   End
   Begin VB.Image imgRedDot 
      Height          =   195
      Index           =   11
      Left            =   2280
      Picture         =   "Form1.frx":45300
      Stretch         =   -1  'True
      Top             =   1440
      Width           =   195
   End
   Begin VB.Shape shpStar 
      BackColor       =   &H0000FFFF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H0000FFFF&
      DrawMode        =   6  'Mask Pen Not
      FillColor       =   &H0000FFFF&
      FillStyle       =   0  'Solid
      Height          =   255
      Left            =   360
      Shape           =   3  'Circle
      Top             =   240
      Width           =   255
   End
   Begin VB.Shape shpBlueTurn 
      BackColor       =   &H00FF0000&
      BackStyle       =   1  'Opaque
      FillColor       =   &H000000FF&
      Height          =   495
      Left            =   720
      Top             =   6600
      Width           =   495
   End
   Begin VB.Shape shpRedTurn 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      FillColor       =   &H000000FF&
      Height          =   495
      Left            =   120
      Top             =   6600
      Width           =   495
   End
   Begin VB.Shape Shape4 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   1  'Opaque
      Height          =   495
      Left            =   9240
      Shape           =   2  'Oval
      Top             =   4440
      Width           =   855
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   1  'Opaque
      Height          =   615
      Left            =   8640
      Shape           =   2  'Oval
      Top             =   4920
      Width           =   855
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   1  'Opaque
      Height          =   495
      Left            =   8040
      Shape           =   2  'Oval
      Top             =   4440
      Width           =   855
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00C0C0C0&
      BackStyle       =   1  'Opaque
      Height          =   375
      Left            =   8640
      Shape           =   2  'Oval
      Top             =   4080
      Width           =   855
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      Caption         =   "Join 2 dots of the same colour next to each other"
      Height          =   495
      Left            =   2400
      TabIndex        =   0
      Top             =   240
      Width           =   4935
   End
   Begin VB.Image Image3 
      Height          =   1875
      Left            =   8160
      Picture         =   "Form1.frx":456A8
      Top             =   4200
      Width           =   2160
   End
   Begin VB.Image imgBlueDot 
      Height          =   200
      Index           =   1
      Left            =   2520
      Picture         =   "Form1.frx":529DA
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   200
   End
   Begin VB.Image imgBlueDot 
      Height          =   200
      Index           =   2
      Left            =   3000
      Picture         =   "Form1.frx":52F5C
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   200
   End
   Begin VB.Image imgBlueDot 
      Height          =   200
      Index           =   11
      Left            =   7320
      Picture         =   "Form1.frx":534DE
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   200
   End
   Begin VB.Image imgBlueDot 
      Height          =   200
      Index           =   10
      Left            =   6840
      Picture         =   "Form1.frx":53A60
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   200
   End
   Begin VB.Image imgBlueDot 
      Height          =   200
      Index           =   9
      Left            =   6360
      Picture         =   "Form1.frx":53FE2
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   200
   End
   Begin VB.Image imgBlueDot 
      Height          =   200
      Index           =   8
      Left            =   5880
      Picture         =   "Form1.frx":54564
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   200
   End
   Begin VB.Image imgBlueDot 
      Height          =   200
      Index           =   7
      Left            =   5400
      Picture         =   "Form1.frx":54AE6
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   200
   End
   Begin VB.Image imgBlueDot 
      Height          =   200
      Index           =   6
      Left            =   4920
      Picture         =   "Form1.frx":55068
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   200
   End
   Begin VB.Image imgBlueDot 
      Height          =   200
      Index           =   5
      Left            =   4440
      Picture         =   "Form1.frx":555EA
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   200
   End
   Begin VB.Image imgBlueDot 
      Height          =   200
      Index           =   4
      Left            =   3960
      Picture         =   "Form1.frx":55B6C
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   200
   End
   Begin VB.Image imgBlueDot 
      Height          =   200
      Index           =   3
      Left            =   3480
      Picture         =   "Form1.frx":560EE
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   200
   End
   Begin VB.Image imgBlueDot 
      Height          =   200
      Index           =   0
      Left            =   2040
      Picture         =   "Form1.frx":56670
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   200
   End
   Begin VB.Image imgRedDot 
      Height          =   200
      Index           =   9
      Left            =   6600
      Picture         =   "Form1.frx":56BF2
      Stretch         =   -1  'True
      Top             =   960
      Width           =   200
   End
   Begin VB.Image imgRedDot 
      Height          =   200
      Index           =   8
      Left            =   6120
      Picture         =   "Form1.frx":56F9A
      Stretch         =   -1  'True
      Top             =   960
      Width           =   200
   End
   Begin VB.Image imgRedDot 
      Height          =   200
      Index           =   7
      Left            =   5640
      Picture         =   "Form1.frx":57342
      Stretch         =   -1  'True
      Top             =   960
      Width           =   200
   End
   Begin VB.Image imgRedDot 
      Height          =   200
      Index           =   6
      Left            =   5160
      Picture         =   "Form1.frx":576EA
      Stretch         =   -1  'True
      Top             =   960
      Width           =   200
   End
   Begin VB.Image imgRedDot 
      Height          =   200
      Index           =   5
      Left            =   4680
      Picture         =   "Form1.frx":57A92
      Stretch         =   -1  'True
      Top             =   960
      Width           =   200
   End
   Begin VB.Image imgRedDot 
      Height          =   200
      Index           =   4
      Left            =   4200
      Picture         =   "Form1.frx":57E3A
      Stretch         =   -1  'True
      Top             =   960
      Width           =   200
   End
   Begin VB.Image imgRedDot 
      Height          =   200
      Index           =   3
      Left            =   3720
      Picture         =   "Form1.frx":581E2
      Stretch         =   -1  'True
      Top             =   960
      Width           =   200
   End
   Begin VB.Image imgRedDot 
      Height          =   200
      Index           =   2
      Left            =   3240
      Picture         =   "Form1.frx":5858A
      Stretch         =   -1  'True
      Top             =   960
      Width           =   200
   End
   Begin VB.Image imgRedDot 
      Height          =   200
      Index           =   1
      Left            =   2760
      Picture         =   "Form1.frx":58932
      Stretch         =   -1  'True
      Top             =   960
      Width           =   200
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim x As Integer
Dim y As Integer
Dim direction
Dim whichimage, spot1, spot2 As Integer
Dim whosego As Integer
Dim rgb As Long



Private Sub cmdExit_Click()

    End

End Sub

Private Sub cmdAtSign_Click()

    shpStar.Left = 360
    shpStar.Top = 240
    
End Sub

Private Sub Command1()

    If optMoveUp = True Then direction = "north"
    If optMoveRight = True Then direction = "east"
    If optMoveDown = True Then direction = "south"
    If optMoveLeft = True Then direction = "west"
    
    If direction = "north" Then
        Line (cmdAtSign.Left + 50, cmdAtSign.Top + 150)-(cmdAtSign.Left + 150, cmdAtSign.Top - 400), rgb, BF
    End If
    
    If direction = "east" Then
        Line (cmdAtSign.Left + 50, cmdAtSign.Top + 50)-(cmdAtSign.Left + 560, cmdAtSign.Top + 160), rgb, BF
    End If
    
    If direction = "south" Then
        Line (cmdAtSign.Left + 50, cmdAtSign.Top + 150)-(cmdAtSign.Left + 160, cmdAtSign.Top + 600), rgb, BF
    End If
    
    If direction = "west" Then
        Line (cmdAtSign.Left + 100, cmdAtSign.Top + 150)-(cmdAtSign.Left - 400, cmdAtSign.Top + 50), rgb, BF
    End If
    
    Text1 = direction

End Sub

Private Sub Form_Load()

    whosego = 1
    
    MakeSize = InputBox("What size grid do you want (1..131)?")
    
    For square = 0 To 131
        imgRedDot(square).Visible = False
        imgBlueDot(square).Visible = False
    Next square
    
    For square = 0 To MakeSize - 1
        imgRedDot(square).Visible = True
        imgBlueDot(square).Visible = True
    Next square
    
    
End Sub

Private Sub imgRedDot_Click(Index As Integer)

    'red
    cmdAtSign.Enabled = True
    x = imgRedDot(Index).Left
    y = imgRedDot(Index).Top
  
    cmdAtSign.Left = x
    cmdAtSign.Top = y
    
    whichimage = 1
    spot1 = Index
    
    If whosego = 1 Then
        whosego = 2
    End If
    
    shpRedTurn.Visible = False
    shpBlueTurn.Visible = True
    rgb = &HFF&
    Text2 = rgb
    
    For i = 1 To 131
        imgRedDot(i).Enabled = False
        imgBlueDot(i).Enabled = True
    Next i

End Sub

Private Sub imgBlueDot_Click(Index As Integer)

    'blue
    cmdAtSign.Enabled = True
    x = imgBlueDot(Index).Left
    y = imgBlueDot(Index).Top
    
    cmdAtSign.Left = x
    cmdAtSign.Top = y
    
    whichimage = 2
    spot2 = Index
    
    If whosego = 2 Then
        whosego = 1
    End If
    
    shpRedTurn.Visible = True
    shpBlueTurn.Visible = False
    rgb = &HFF0000
    Text2 = rgb
    
    For i = 1 To 131
        imgBlueDot(i).Enabled = False
        imgRedDot(i).Enabled = True
    Next i
    
End Sub

Private Sub optMoveNorth_Click()

    Line (cmdAtSign.Left + 50, cmdAtSign.Top + 150)-(cmdAtSign.Left + 150, cmdAtSign.Top - 400), rgb, BF
    cmdAtSign.Left = 360
    cmdAtSign.Top = 1320
    cmdAtSign.Enabled = False
    optMoveUp = False

End Sub

Private Sub optMoveEast_Click()

    Line (cmdAtSign.Left + 50, cmdAtSign.Top + 50)-(cmdAtSign.Left + 560, cmdAtSign.Top + 160), rgb, BF
    cmdAtSign.Left = 360
    cmdAtSign.Top = 1320
    cmdAtSign.Enabled = False
    optMoveRight = False
    
End Sub

Private Sub optMoveWest_Click()

    Line (cmdAtSign.Left + 100, cmdAtSign.Top + 150)-(cmdAtSign.Left - 400, cmdAtSign.Top + 50), rgb, BF
    cmdAtSign.Left = 360
    cmdAtSign.Top = 1320
    cmdAtSign.Enabled = False
    optMoveLeft = False
    
End Sub

Private Sub optMoveSouth_Click()

    Line (cmdAtSign.Left + 50, cmdAtSign.Top + 150)-(cmdAtSign.Left + 160, cmdAtSign.Top + 600), rgb, BF
    cmdAtSign.Left = 360
    cmdAtSign.Top = 1320
    cmdAtSign.Enabled = False
    optMoveDown = False
    
End Sub
