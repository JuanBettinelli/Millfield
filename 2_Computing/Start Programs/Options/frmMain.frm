VERSION 5.00
Begin VB.Form frmMain 
   Caption         =   "Main"
   ClientHeight    =   7485
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9885
   LinkTopic       =   "Form1"
   ScaleHeight     =   7485
   ScaleWidth      =   9885
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer tmrTime 
      Interval        =   1000
      Left            =   7200
      Top             =   5640
   End
   Begin VB.Timer tmrColour 
      Interval        =   5000
      Left            =   7920
      Top             =   5640
   End
   Begin VB.CommandButton cmdDeleteItem 
      Caption         =   "Delete Item"
      Height          =   495
      Left            =   1440
      TabIndex        =   10
      Top             =   3360
      Width           =   1215
   End
   Begin VB.CommandButton cmdAddItem 
      Caption         =   "Add Item"
      Height          =   495
      Left            =   1440
      TabIndex        =   9
      Top             =   2760
      Width           =   1215
   End
   Begin VB.VScrollBar vsbNumbers 
      Height          =   3615
      Left            =   8880
      TabIndex        =   5
      Top             =   3240
      Width           =   495
   End
   Begin VB.HScrollBar hsbNumbers 
      Height          =   495
      Left            =   480
      TabIndex        =   4
      Top             =   6360
      Width           =   4455
   End
   Begin VB.ComboBox cmbOptions 
      Height          =   315
      ItemData        =   "frmMain.frx":0000
      Left            =   3240
      List            =   "frmMain.frx":0016
      TabIndex        =   1
      Text            =   "Mr"
      Top             =   1200
      Width           =   1455
   End
   Begin VB.ListBox lstOptions 
      Height          =   1425
      ItemData        =   "frmMain.frx":0038
      Left            =   1440
      List            =   "frmMain.frx":004E
      TabIndex        =   0
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Image imgBall 
      Height          =   600
      Left            =   4200
      Picture         =   "frmMain.frx":0070
      Stretch         =   -1  'True
      Top             =   4560
      Width           =   600
   End
   Begin VB.Label lblTime 
      Caption         =   "Time"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6480
      TabIndex        =   11
      Top             =   2160
      Width           =   2895
   End
   Begin VB.Label lblMultiply 
      Caption         =   "0"
      Height          =   375
      Left            =   6840
      TabIndex        =   8
      Top             =   6360
      Width           =   1575
   End
   Begin VB.Label lblNumbers2 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   6600
      TabIndex        =   7
      Top             =   720
      Width           =   1455
   End
   Begin VB.Label lblNumbers 
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1080
      TabIndex        =   6
      Top             =   3960
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "Combo Box"
      Height          =   375
      Left            =   3240
      TabIndex        =   3
      Top             =   720
      Width           =   1455
   End
   Begin VB.Label Label1 
      Caption         =   "List Box"
      Height          =   375
      Left            =   1440
      TabIndex        =   2
      Top             =   720
      Width           =   1215
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub cmdAddItem_Click()

    NewItem = InputBox("New Item = ")

    lstOptions.AddItem NewItem
    cmbOptions.AddItem NewItem

End Sub

Private Sub Form_Load()

    frmMain.BackColor = QBColor(4)

End Sub

Private Sub hsbNumbers_Change()

    lblNumbers.Caption = Int(hsbNumbers.Value / 100)
    lblMultiply.Caption = lblNumbers.Caption * lblNumbers2.Caption

End Sub

Private Sub tmrColour_Timer()

    frmMain.BackColor = QBColor(Int(Rnd() * 16))

End Sub

Private Sub tmrTime_Timer()

     lblTime.Caption = Date & "   " & Time
     'Top = 0
     'Left = 0
     'Height = 8000
     'Width = 10000
     
     imgBall.Top = Int(Rnd() * 8000)
     imgBall.Left = Int(Rnd() * 10000)

End Sub

Private Sub vsbNumbers_Change()

    lblNumbers2.Caption = Int(vsbNumbers.Value / 100)
    lblMultiply.Caption = lblNumbers.Caption * lblNumbers2.Caption

End Sub
