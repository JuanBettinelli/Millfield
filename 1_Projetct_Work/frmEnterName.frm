VERSION 5.00
Begin VB.Form frmEnterName 
   Caption         =   "Enter Name"
   ClientHeight    =   4395
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5865
   LinkTopic       =   "Form3"
   ScaleHeight     =   11010
   ScaleWidth      =   15240
   StartUpPosition =   3  'Windows Default
   Begin VB.ComboBox ComAge 
      Height          =   315
      Index           =   9
      Left            =   4440
      TabIndex        =   27
      Text            =   "Combo1"
      Top             =   8280
      Width           =   1575
   End
   Begin VB.ComboBox ComAge 
      Height          =   315
      Index           =   8
      Left            =   4440
      TabIndex        =   26
      Text            =   "Combo1"
      Top             =   7680
      Width           =   1575
   End
   Begin VB.ComboBox ComAge 
      Height          =   315
      Index           =   7
      Left            =   4440
      TabIndex        =   25
      Text            =   "Combo1"
      Top             =   7080
      Width           =   1575
   End
   Begin VB.ComboBox ComAge 
      Height          =   315
      Index           =   6
      Left            =   4440
      TabIndex        =   24
      Text            =   "Combo1"
      Top             =   6480
      Width           =   1575
   End
   Begin VB.ComboBox ComAge 
      Height          =   315
      Index           =   5
      Left            =   4440
      TabIndex        =   23
      Text            =   "Combo1"
      Top             =   5880
      Width           =   1575
   End
   Begin VB.ComboBox ComAge 
      Height          =   315
      Index           =   4
      Left            =   4440
      TabIndex        =   22
      Text            =   "Combo1"
      Top             =   5280
      Width           =   1575
   End
   Begin VB.ComboBox ComAge 
      Height          =   315
      Index           =   3
      Left            =   4440
      TabIndex        =   21
      Text            =   "Combo1"
      Top             =   4680
      Width           =   1575
   End
   Begin VB.ComboBox ComAge 
      Height          =   315
      Index           =   2
      Left            =   4440
      TabIndex        =   20
      Text            =   "Combo1"
      Top             =   4080
      Width           =   1575
   End
   Begin VB.ComboBox ComAge 
      Height          =   315
      Index           =   1
      Left            =   4440
      TabIndex        =   19
      Text            =   "Combo1"
      Top             =   3480
      Width           =   1575
   End
   Begin VB.ComboBox comAthlete 
      Height          =   315
      Index           =   1
      ItemData        =   "frmEnterName.frx":0000
      Left            =   1200
      List            =   "frmEnterName.frx":0002
      TabIndex        =   18
      Text            =   "Athlete1"
      Top             =   3480
      Width           =   2775
   End
   Begin VB.ComboBox comAthlete 
      Height          =   315
      Index           =   9
      ItemData        =   "frmEnterName.frx":0004
      Left            =   1200
      List            =   "frmEnterName.frx":0006
      TabIndex        =   8
      Text            =   "Athlete9"
      Top             =   8280
      Width           =   2775
   End
   Begin VB.ComboBox comAthlete 
      Height          =   315
      Index           =   8
      ItemData        =   "frmEnterName.frx":0008
      Left            =   1200
      List            =   "frmEnterName.frx":000A
      TabIndex        =   7
      Text            =   "Athlete8"
      Top             =   7680
      Width           =   2775
   End
   Begin VB.ComboBox comAthlete 
      Height          =   315
      Index           =   7
      ItemData        =   "frmEnterName.frx":000C
      Left            =   1200
      List            =   "frmEnterName.frx":000E
      TabIndex        =   6
      Text            =   "Athlete7"
      Top             =   7080
      Width           =   2775
   End
   Begin VB.ComboBox comAthlete 
      Height          =   315
      Index           =   6
      ItemData        =   "frmEnterName.frx":0010
      Left            =   1200
      List            =   "frmEnterName.frx":0012
      TabIndex        =   5
      Text            =   "Athlete6"
      Top             =   6480
      Width           =   2775
   End
   Begin VB.ComboBox comAthlete 
      Height          =   315
      Index           =   5
      ItemData        =   "frmEnterName.frx":0014
      Left            =   1200
      List            =   "frmEnterName.frx":0016
      TabIndex        =   4
      Text            =   "Athlete5"
      Top             =   5880
      Width           =   2775
   End
   Begin VB.ComboBox comAthlete 
      Height          =   315
      Index           =   4
      ItemData        =   "frmEnterName.frx":0018
      Left            =   1200
      List            =   "frmEnterName.frx":001A
      TabIndex        =   3
      Text            =   "Athlete4"
      Top             =   5280
      Width           =   2775
   End
   Begin VB.ComboBox comAthlete 
      Height          =   315
      Index           =   3
      ItemData        =   "frmEnterName.frx":001C
      Left            =   1200
      List            =   "frmEnterName.frx":001E
      TabIndex        =   2
      Text            =   "Athlete3"
      Top             =   4680
      Width           =   2775
   End
   Begin VB.ComboBox comAthlete 
      Height          =   315
      Index           =   2
      ItemData        =   "frmEnterName.frx":0020
      Left            =   1200
      List            =   "frmEnterName.frx":0022
      TabIndex        =   1
      Text            =   "Athlete2"
      Top             =   4080
      Width           =   2775
   End
   Begin VB.ComboBox comAthlete1 
      Height          =   315
      Index           =   1
      ItemData        =   "frmEnterName.frx":0024
      Left            =   6960
      List            =   "frmEnterName.frx":0026
      TabIndex        =   0
      Text            =   "Trainer"
      Top             =   9360
      Width           =   3015
   End
   Begin VB.Label lbl2 
      Caption         =   "2"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Index           =   8
      Left            =   360
      TabIndex        =   17
      Top             =   4080
      Width           =   255
   End
   Begin VB.Label lbl3 
      Caption         =   "3"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Index           =   7
      Left            =   360
      TabIndex        =   16
      Top             =   4680
      Width           =   255
   End
   Begin VB.Label lbl4 
      Caption         =   "4"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Index           =   6
      Left            =   360
      TabIndex        =   15
      Top             =   5280
      Width           =   255
   End
   Begin VB.Label lbl5 
      Caption         =   "5"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Index           =   5
      Left            =   360
      TabIndex        =   14
      Top             =   5880
      Width           =   255
   End
   Begin VB.Label lbl6 
      Caption         =   "6"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Index           =   4
      Left            =   360
      TabIndex        =   13
      Top             =   6480
      Width           =   255
   End
   Begin VB.Label lbl7 
      Caption         =   "7"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Index           =   3
      Left            =   360
      TabIndex        =   12
      Top             =   7080
      Width           =   255
   End
   Begin VB.Label lbl8 
      Caption         =   "8"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Index           =   2
      Left            =   360
      TabIndex        =   11
      Top             =   7680
      Width           =   255
   End
   Begin VB.Label lbl9 
      Caption         =   "9"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Index           =   1
      Left            =   360
      TabIndex        =   10
      Top             =   8280
      Width           =   255
   End
   Begin VB.Label lbl1 
      Caption         =   "1"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   13.5
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Index           =   0
      Left            =   360
      TabIndex        =   9
      Top             =   3480
      Width           =   255
   End
End
Attribute VB_Name = "frmEnterName"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()

End Sub
