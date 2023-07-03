VERSION 5.00
Begin VB.Form frmWelcome 
   BackColor       =   &H00FF0000&
   Caption         =   "Form1"
   ClientHeight    =   11010
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   14115
   LinkTopic       =   "Form1"
   ScaleHeight     =   11010
   ScaleWidth      =   14115
   Begin VB.PictureBox Picture2 
      Height          =   1215
      Left            =   8400
      Picture         =   "frmWelcome.frx":0000
      ScaleHeight     =   1155
      ScaleWidth      =   2355
      TabIndex        =   3
      Top             =   6240
      Width           =   2415
   End
   Begin VB.PictureBox Picture1 
      Height          =   1335
      Left            =   5400
      Picture         =   "frmWelcome.frx":85DA
      ScaleHeight     =   1275
      ScaleWidth      =   1275
      TabIndex        =   2
      Top             =   6240
      Width           =   1335
   End
   Begin VB.CommandButton cmdEnter 
      BackColor       =   &H000000FF&
      Caption         =   "Access Scorer"
      BeginProperty Font 
         Name            =   "Lucida Calligraphy"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1095
      Left            =   2880
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   7920
      Width           =   4575
   End
   Begin VB.Image Image3 
      Height          =   4980
      Left            =   7920
      Picture         =   "frmWelcome.frx":DC70
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   3060
   End
   Begin VB.Image Image2 
      Height          =   2805
      Left            =   240
      Picture         =   "frmWelcome.frx":19F25
      Stretch         =   -1  'True
      Top             =   4200
      Width           =   4215
   End
   Begin VB.Image Image1 
      Height          =   3000
      Left            =   240
      Picture         =   "frmWelcome.frx":31962
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   4185
   End
   Begin VB.Label Label1 
      BackColor       =   &H00FF0000&
      Caption         =   "Welcome to The Pentathlon Scoring Machine"
      BeginProperty Font 
         Name            =   "Mistral"
         Size            =   36
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   855
      Left            =   240
      TabIndex        =   0
      Top             =   360
      Width           =   10335
   End
   Begin VB.Image Image4 
      Height          =   2445
      Left            =   4080
      Picture         =   "frmWelcome.frx":3C9EB
      Stretch         =   -1  'True
      Top             =   3720
      Width           =   4320
   End
   Begin VB.Image Image5 
      Height          =   2565
      Left            =   4440
      Picture         =   "frmWelcome.frx":65A60
      Stretch         =   -1  'True
      Top             =   1200
      Width           =   4470
   End
End
Attribute VB_Name = "frmWelcome"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdEnter_Click()
    
    ' this code is just to hide the welcome page and open the login page
    Me.Hide
    frmLoginPage.Show
    
    
End Sub

