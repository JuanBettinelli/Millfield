VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6180
   ClientLeft      =   120
   ClientTop       =   420
   ClientWidth     =   10170
   LinkTopic       =   "Form1"
   ScaleHeight     =   6180
   ScaleWidth      =   10170
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdCancel 
      Caption         =   "Cancel"
      Height          =   615
      Left            =   3600
      TabIndex        =   12
      Top             =   3600
      Width           =   1575
   End
   Begin VB.CommandButton cmdOK 
      Caption         =   "OK"
      Height          =   735
      Left            =   1680
      TabIndex        =   11
      Top             =   3600
      Width           =   1215
   End
   Begin VB.CheckBox cekCombine 
      Caption         =   "Combine"
      Height          =   255
      Left            =   8160
      TabIndex        =   10
      Top             =   2160
      Width           =   1575
   End
   Begin VB.ComboBox cmbCompType 
      Height          =   315
      Left            =   3600
      TabIndex        =   8
      Top             =   2160
      Width           =   1935
   End
   Begin VB.ComboBox cmbAgeGrupe 
      Height          =   315
      Left            =   720
      TabIndex        =   6
      Top             =   2040
      Width           =   1695
   End
   Begin VB.TextBox txtNoOfAthlete 
      Height          =   375
      Left            =   6120
      TabIndex        =   4
      Top             =   2160
      Width           =   1455
   End
   Begin VB.TextBox txtCompDate 
      Height          =   375
      Left            =   5280
      TabIndex        =   2
      Top             =   600
      Width           =   1455
   End
   Begin VB.TextBox txtCompName 
      Height          =   375
      Left            =   480
      TabIndex        =   0
      Top             =   720
      Width           =   2415
   End
   Begin VB.Label lblCompType 
      Caption         =   "Competition Type"
      Height          =   255
      Left            =   3480
      TabIndex        =   9
      Top             =   1800
      Width           =   2055
   End
   Begin VB.Label lblAgeGrupe 
      Caption         =   "Age Grupe"
      Height          =   255
      Left            =   840
      TabIndex        =   7
      Top             =   1680
      Width           =   1935
   End
   Begin VB.Label lblAthleteNo 
      Caption         =   "Athlete Number "
      Height          =   255
      Left            =   6360
      TabIndex        =   5
      Top             =   1680
      Width           =   1335
   End
   Begin VB.Label lblDate 
      Caption         =   "Competition Name"
      Height          =   255
      Left            =   5400
      TabIndex        =   3
      Top             =   240
      Width           =   1455
   End
   Begin VB.Label lblName 
      Caption         =   "Competition Name"
      Height          =   255
      Left            =   600
      TabIndex        =   1
      Top             =   240
      Width           =   2295
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
